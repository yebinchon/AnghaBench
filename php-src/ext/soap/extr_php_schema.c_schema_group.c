
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_51__ TYPE_9__ ;
typedef struct TYPE_50__ TYPE_8__ ;
typedef struct TYPE_49__ TYPE_7__ ;
typedef struct TYPE_48__ TYPE_6__ ;
typedef struct TYPE_47__ TYPE_5__ ;
typedef struct TYPE_46__ TYPE_4__ ;
typedef struct TYPE_45__ TYPE_3__ ;
typedef struct TYPE_44__ TYPE_2__ ;
typedef struct TYPE_43__ TYPE_1__ ;


typedef TYPE_3__* xmlNsPtr ;
typedef TYPE_4__* xmlNodePtr ;
typedef TYPE_5__* xmlAttrPtr ;
struct TYPE_48__ {int s; int member_0; } ;
typedef TYPE_6__ smart_str ;
typedef TYPE_7__* sdlTypePtr ;
typedef int sdlType ;
typedef TYPE_8__* sdlPtr ;
typedef TYPE_9__* sdlContentModelPtr ;
typedef int sdlContentModel ;
struct TYPE_44__ {int * content; int group_ref; } ;
struct TYPE_51__ {void* kind; TYPE_2__ u; } ;
struct TYPE_50__ {int * groups; } ;
struct TYPE_49__ {TYPE_9__* model; } ;
struct TYPE_47__ {TYPE_1__* children; } ;
struct TYPE_46__ {int name; struct TYPE_46__* next; struct TYPE_46__* children; int properties; int doc; } ;
struct TYPE_45__ {scalar_t__ href; } ;
struct TYPE_43__ {scalar_t__ content; } ;
typedef int HashTable ;


 int BAD_CAST (char*) ;
 int E_ERROR ;
 int TRUE ;
 void* XSD_CONTENT_ALL ;
 void* XSD_CONTENT_CHOICE ;
 void* XSD_CONTENT_GROUP_REF ;
 void* XSD_CONTENT_SEQUENCE ;
 int ZSTR_LEN (int ) ;
 int ZSTR_VAL (int ) ;
 int delete_model ;
 int delete_type ;
 int efree (char*) ;
 void* emalloc (int) ;
 int estrndup (int ,int ) ;
 TYPE_5__* get_attribute (int ,char*) ;
 int memset (TYPE_7__*,int ,int) ;
 scalar_t__ node_is_equal (TYPE_4__*,char*) ;
 int parse_namespace (scalar_t__,char**,char**) ;
 int schema_all (TYPE_8__*,TYPE_5__*,TYPE_4__*,TYPE_7__*,TYPE_9__*) ;
 int schema_choice (TYPE_8__*,TYPE_5__*,TYPE_4__*,TYPE_7__*,TYPE_9__*) ;
 int schema_min_max (TYPE_4__*,TYPE_9__*) ;
 int schema_sequence (TYPE_8__*,TYPE_5__*,TYPE_4__*,TYPE_7__*,TYPE_9__*) ;
 int smart_str_0 (TYPE_6__*) ;
 int smart_str_appendc (TYPE_6__*,char) ;
 int smart_str_appends (TYPE_6__*,char*) ;
 int smart_str_free (TYPE_6__*) ;
 int soap_error0 (int ,char*) ;
 int soap_error1 (int ,char*,int ) ;
 TYPE_3__* xmlSearchNs (int ,TYPE_4__*,int ) ;
 int * zend_hash_add_ptr (int *,int ,TYPE_7__*) ;
 int zend_hash_init (int *,int ,int *,int ,int ) ;
 int zend_hash_next_index_insert_ptr (int *,TYPE_9__*) ;

__attribute__((used)) static int schema_group(sdlPtr sdl, xmlAttrPtr tns, xmlNodePtr groupType, sdlTypePtr cur_type, sdlContentModelPtr model)
{
 xmlNodePtr trav;
 xmlAttrPtr ns, name, ref = ((void*)0);
 sdlContentModelPtr newModel = ((void*)0);

 ns = get_attribute(groupType->properties, "targetNamespace");
 if (ns == ((void*)0)) {
  ns = tns;
 }

 name = get_attribute(groupType->properties, "name");
 if (name == ((void*)0)) {
  name = ref = get_attribute(groupType->properties, "ref");
 }

 if (name) {
  smart_str key = {0};

  if (ref) {
   char *type, *ns;
   xmlNsPtr nsptr;

   parse_namespace(ref->children->content, &type, &ns);
   nsptr = xmlSearchNs(groupType->doc, groupType, BAD_CAST(ns));
   if (nsptr != ((void*)0)) {
    smart_str_appends(&key, (char*)nsptr->href);
   } else {
    xmlAttrPtr ns = get_attribute(groupType->properties, "targetNamespace");
    if (ns == ((void*)0)) {
     ns = tns;
    }
    if (ns) {
     smart_str_appends(&key, (char*)ns->children->content);
    }
   }
   smart_str_appendc(&key, ':');
   smart_str_appends(&key, type);
   smart_str_0(&key);

   newModel = emalloc(sizeof(sdlContentModel));
   newModel->kind = XSD_CONTENT_GROUP_REF;
   newModel->u.group_ref = estrndup(ZSTR_VAL(key.s), ZSTR_LEN(key.s));

   if (type) {efree(type);}
   if (ns) {efree(ns);}
  } else {
   newModel = emalloc(sizeof(sdlContentModel));
   newModel->kind = XSD_CONTENT_SEQUENCE;
   newModel->u.content = emalloc(sizeof(HashTable));
   zend_hash_init(newModel->u.content, 0, ((void*)0), delete_model, 0);

   smart_str_appends(&key, (char*)ns->children->content);
   smart_str_appendc(&key, ':');
   smart_str_appends(&key, (char*)name->children->content);
   smart_str_0(&key);
  }

  if (cur_type == ((void*)0)) {
   sdlTypePtr newType;

   newType = emalloc(sizeof(sdlType));
   memset(newType, 0, sizeof(sdlType));

   if (sdl->groups == ((void*)0)) {
    sdl->groups = emalloc(sizeof(HashTable));
    zend_hash_init(sdl->groups, 0, ((void*)0), delete_type, 0);
   }
   if (zend_hash_add_ptr(sdl->groups, key.s, newType) == ((void*)0)) {
    soap_error1(E_ERROR, "Parsing Schema: group '%s' already defined", ZSTR_VAL(key.s));
   }

   cur_type = newType;
  }
  smart_str_free(&key);

  if (model == ((void*)0)) {
   cur_type->model = newModel;
  } else {
   zend_hash_next_index_insert_ptr(model->u.content, newModel);
  }
 } else {
  soap_error0(E_ERROR, "Parsing Schema: group has no 'name' nor 'ref' attributes");
 }

 schema_min_max(groupType, newModel);

 trav = groupType->children;
 if (trav != ((void*)0) && node_is_equal(trav,"annotation")) {

  trav = trav->next;
 }
 if (trav != ((void*)0)) {
  if (node_is_equal(trav,"choice")) {
   if (ref != ((void*)0)) {
    soap_error0(E_ERROR, "Parsing Schema: group has both 'ref' attribute and subcontent");
   }
   newModel->kind = XSD_CONTENT_CHOICE;
   schema_choice(sdl, tns, trav, cur_type, newModel);
   trav = trav->next;
  } else if (node_is_equal(trav,"sequence")) {
   if (ref != ((void*)0)) {
    soap_error0(E_ERROR, "Parsing Schema: group has both 'ref' attribute and subcontent");
   }
   newModel->kind = XSD_CONTENT_SEQUENCE;
   schema_sequence(sdl, tns, trav, cur_type, newModel);
   trav = trav->next;
  } else if (node_is_equal(trav,"all")) {
   if (ref != ((void*)0)) {
    soap_error0(E_ERROR, "Parsing Schema: group has both 'ref' attribute and subcontent");
   }
   newModel->kind = XSD_CONTENT_ALL;
   schema_all(sdl, tns, trav, cur_type, newModel);
   trav = trav->next;
  } else {
   soap_error1(E_ERROR, "Parsing Schema: unexpected <%s> in group", trav->name);
  }
 }
 if (trav != ((void*)0)) {
  soap_error1(E_ERROR, "Parsing Schema: unexpected <%s> in group", trav->name);
 }
 return TRUE;
}

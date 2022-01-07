
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


typedef TYPE_2__* xmlNsPtr ;
typedef TYPE_3__* xmlNodePtr ;
typedef TYPE_4__* xmlAttrPtr ;
struct TYPE_31__ {int s; int member_0; } ;
typedef TYPE_5__ smart_str ;
typedef TYPE_6__* sdlTypePtr ;
typedef int sdlType ;
typedef int sdlPtr ;
struct TYPE_33__ {int attributeGroups; } ;
typedef TYPE_7__ sdlCtx ;
typedef TYPE_6__* sdlAttributePtr ;
typedef int sdlAttribute ;
struct TYPE_32__ {char* name; char* namens; int * attributes; int ref; } ;
struct TYPE_30__ {TYPE_1__* children; } ;
struct TYPE_29__ {int name; struct TYPE_29__* next; struct TYPE_29__* children; int doc; int properties; } ;
struct TYPE_28__ {scalar_t__ href; } ;
struct TYPE_27__ {scalar_t__ content; } ;
typedef int HashTable ;


 int BAD_CAST (char*) ;
 int E_ERROR ;
 int TRUE ;
 int ZSTR_LEN (int ) ;
 int ZSTR_VAL (int ) ;
 int delete_attribute ;
 int efree (char*) ;
 void* emalloc (int) ;
 void* estrdup (char*) ;
 int estrndup (int ,int ) ;
 TYPE_4__* get_attribute (int ,char*) ;
 int memset (TYPE_6__*,int ,int) ;
 scalar_t__ node_is_equal (TYPE_3__*,char*) ;
 int parse_namespace (scalar_t__,char**,char**) ;
 int schema_attribute (int ,TYPE_4__*,TYPE_3__*,TYPE_6__*,int *) ;
 int smart_str_0 (TYPE_5__*) ;
 int smart_str_appendc (TYPE_5__*,char) ;
 int smart_str_appends (TYPE_5__*,char*) ;
 int smart_str_free (TYPE_5__*) ;
 int soap_error0 (int ,char*) ;
 int soap_error1 (int ,char*,int ) ;
 TYPE_2__* xmlSearchNs (int ,TYPE_3__*,int ) ;
 int * zend_hash_add_ptr (int ,int ,TYPE_6__*) ;
 int zend_hash_init (int *,int ,int *,int ,int ) ;
 int zend_hash_next_index_insert_ptr (int *,TYPE_6__*) ;

__attribute__((used)) static int schema_attributeGroup(sdlPtr sdl, xmlAttrPtr tns, xmlNodePtr attrGroup, sdlTypePtr cur_type, sdlCtx *ctx)
{
 xmlNodePtr trav;
 xmlAttrPtr name, ref = ((void*)0);


 name = get_attribute(attrGroup->properties, "name");
 if (name == ((void*)0)) {
  name = ref = get_attribute(attrGroup->properties, "ref");
 }
 if (name) {
  if (cur_type == ((void*)0)) {
   xmlAttrPtr ns;
   sdlTypePtr newType;
   smart_str key = {0};

   ns = get_attribute(attrGroup->properties, "targetNamespace");
   if (ns == ((void*)0)) {
    ns = tns;
   }
   newType = emalloc(sizeof(sdlType));
   memset(newType, 0, sizeof(sdlType));
   newType->name = estrdup((char*)name->children->content);
   newType->namens = estrdup((char*)ns->children->content);

   smart_str_appends(&key, newType->namens);
   smart_str_appendc(&key, ':');
   smart_str_appends(&key, newType->name);
   smart_str_0(&key);

   if (zend_hash_add_ptr(ctx->attributeGroups, key.s, newType) == ((void*)0)) {
    soap_error1(E_ERROR, "Parsing Schema: attributeGroup '%s' already defined", ZSTR_VAL(key.s));
   }
   cur_type = newType;
   smart_str_free(&key);
  } else if (ref) {
   sdlAttributePtr newAttr;
   char *group_name, *ns;
   smart_str key = {0};
   xmlNsPtr nsptr;

   if (cur_type->attributes == ((void*)0)) {
    cur_type->attributes = emalloc(sizeof(HashTable));
    zend_hash_init(cur_type->attributes, 0, ((void*)0), delete_attribute, 0);
   }
   newAttr = emalloc(sizeof(sdlAttribute));
   memset(newAttr, 0, sizeof(sdlAttribute));

   parse_namespace(ref->children->content, &group_name, &ns);
   nsptr = xmlSearchNs(attrGroup->doc, attrGroup, BAD_CAST(ns));
   if (nsptr != ((void*)0)) {
    smart_str_appends(&key, (char*)nsptr->href);
   }
   smart_str_appendc(&key, ':');
   smart_str_appends(&key, group_name);
   smart_str_0(&key);
   newAttr->ref = estrndup(ZSTR_VAL(key.s), ZSTR_LEN(key.s));
   if (group_name) {efree(group_name);}
   if (ns) {efree(ns);}
   smart_str_free(&key);

   zend_hash_next_index_insert_ptr(cur_type->attributes, newAttr);
   cur_type = ((void*)0);
  }
 } else{
  soap_error0(E_ERROR, "Parsing Schema: attributeGroup has no 'name' nor 'ref' attributes");
 }

 trav = attrGroup->children;
 if (trav != ((void*)0) && node_is_equal(trav, "annotation")) {

  trav = trav->next;
 }
 while (trav != ((void*)0)) {
  if (node_is_equal(trav,"attribute")) {
   if (ref != ((void*)0)) {
    soap_error0(E_ERROR, "Parsing Schema: attributeGroup has both 'ref' attribute and subattribute");
   }
   schema_attribute(sdl, tns, trav, cur_type, ((void*)0));
  } else if (node_is_equal(trav,"attributeGroup")) {
   if (ref != ((void*)0)) {
    soap_error0(E_ERROR, "Parsing Schema: attributeGroup has both 'ref' attribute and subattribute");
   }
   schema_attributeGroup(sdl, tns, trav, cur_type, ((void*)0));
  } else if (node_is_equal(trav,"anyAttribute")) {
   if (ref != ((void*)0)) {
    soap_error0(E_ERROR, "Parsing Schema: attributeGroup has both 'ref' attribute and subattribute");
   }

   trav = trav->next;
   break;
  } else {
   soap_error1(E_ERROR, "Parsing Schema: unexpected <%s> in attributeGroup", trav->name);
  }
  trav = trav->next;
 }
 if (trav != ((void*)0)) {
  soap_error1(E_ERROR, "Parsing Schema: unexpected <%s> in attributeGroup", trav->name);
 }
 return TRUE;
}

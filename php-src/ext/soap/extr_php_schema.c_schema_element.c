
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_47__ TYPE_8__ ;
typedef struct TYPE_46__ TYPE_7__ ;
typedef struct TYPE_45__ TYPE_6__ ;
typedef struct TYPE_44__ TYPE_5__ ;
typedef struct TYPE_43__ TYPE_4__ ;
typedef struct TYPE_42__ TYPE_3__ ;
typedef struct TYPE_41__ TYPE_2__ ;
typedef struct TYPE_40__ TYPE_1__ ;


typedef TYPE_3__* xmlNsPtr ;
typedef TYPE_4__* xmlNodePtr ;
typedef TYPE_5__* xmlAttrPtr ;
struct TYPE_45__ {int s; int member_0; } ;
typedef TYPE_6__ smart_str ;
typedef TYPE_7__* sdlTypePtr ;
typedef int sdlType ;
typedef TYPE_8__* sdlPtr ;
typedef TYPE_7__* sdlContentModelPtr ;
typedef int sdlContentModel ;
struct TYPE_47__ {int * elements; } ;
struct TYPE_40__ {int * content; TYPE_7__* element; } ;
struct TYPE_46__ {char* namens; char* name; int nillable; scalar_t__ form; int encode; void* def; void* fixed; TYPE_1__ u; int kind; int * elements; int ref; } ;
struct TYPE_44__ {TYPE_2__* children; } ;
struct TYPE_43__ {struct TYPE_43__* next; int name; struct TYPE_43__* children; int doc; struct TYPE_43__* parent; TYPE_5__* properties; } ;
struct TYPE_42__ {scalar_t__ href; } ;
struct TYPE_41__ {scalar_t__ content; } ;
typedef int HashTable ;


 int BAD_CAST (char*) ;
 int E_ERROR ;
 void* FALSE ;
 int SCHEMA_NAMESPACE ;
 int TRUE ;
 int XSD_CONTENT_ELEMENT ;
 scalar_t__ XSD_FORM_DEFAULT ;
 void* XSD_FORM_QUALIFIED ;
 void* XSD_FORM_UNQUALIFIED ;
 int ZSTR_LEN (int ) ;
 int ZSTR_VAL (int ) ;
 int delete_type ;
 int efree (char*) ;
 void* emalloc (int) ;
 void* estrdup (char*) ;
 int estrndup (int ,int ) ;
 TYPE_5__* get_attribute (TYPE_5__*,char*) ;
 int get_create_encoder (TYPE_8__*,TYPE_7__*,scalar_t__,int ) ;
 int memset (TYPE_7__*,int ,int) ;
 scalar_t__ node_is_equal (TYPE_4__*,char*) ;
 scalar_t__ node_is_equal_ex (TYPE_4__*,char*,int ) ;
 int parse_namespace (scalar_t__,char**,char**) ;
 int schema_complexType (TYPE_8__*,TYPE_5__*,TYPE_4__*,TYPE_7__*) ;
 int schema_min_max (TYPE_4__*,TYPE_7__*) ;
 int schema_simpleType (TYPE_8__*,TYPE_5__*,TYPE_4__*,TYPE_7__*) ;
 int smart_str_0 (TYPE_6__*) ;
 int smart_str_appendc (TYPE_6__*,char) ;
 int smart_str_appends (TYPE_6__*,char*) ;
 int smart_str_free (TYPE_6__*) ;
 int soap_error0 (int ,char*) ;
 int soap_error1 (int ,char*,int ) ;
 int stricmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 TYPE_3__* xmlSearchNs (int ,TYPE_4__*,int ) ;
 int * zend_hash_add_ptr (int *,int ,TYPE_7__*) ;
 int zend_hash_init (int *,int ,int *,int ,int ) ;
 int zend_hash_next_index_insert_ptr (int *,TYPE_7__*) ;

__attribute__((used)) static int schema_element(sdlPtr sdl, xmlAttrPtr tns, xmlNodePtr element, sdlTypePtr cur_type, sdlContentModelPtr model)
{
 xmlNodePtr trav;
 xmlAttrPtr attrs, attr, ns, name, type, ref = ((void*)0);

 attrs = element->properties;
 ns = get_attribute(attrs, "targetNamespace");
 if (ns == ((void*)0)) {
  ns = tns;
 }

 name = get_attribute(attrs, "name");
 if (name == ((void*)0)) {
  name = ref = get_attribute(attrs, "ref");
 }

 if (name) {
  HashTable *addHash;
  sdlTypePtr newType;
  smart_str key = {0};

  newType = emalloc(sizeof(sdlType));
  memset(newType, 0, sizeof(sdlType));

  if (ref) {
   smart_str nscat = {0};
   char *type, *ns;
   xmlNsPtr nsptr;

   parse_namespace(ref->children->content, &type, &ns);
   nsptr = xmlSearchNs(element->doc, element, BAD_CAST(ns));
   if (nsptr != ((void*)0)) {
    smart_str_appends(&nscat, (char*)nsptr->href);
    newType->namens = estrdup((char*)nsptr->href);
   } else {
    xmlAttrPtr ns = get_attribute(attrs, "targetNamespace");
    if (ns == ((void*)0)) {
     ns = tns;
    }
    if (ns) {
     smart_str_appends(&nscat, (char*)ns->children->content);
    }
   }
   smart_str_appendc(&nscat, ':');
   smart_str_appends(&nscat, type);
   newType->name = estrdup(type);
   smart_str_0(&nscat);
   if (type) {efree(type);}
   if (ns) {efree(ns);}
   newType->ref = estrndup(ZSTR_VAL(nscat.s), ZSTR_LEN(nscat.s));
   smart_str_free(&nscat);
  } else {
   newType->name = estrdup((char*)name->children->content);
   newType->namens = estrdup((char*)ns->children->content);
  }

  newType->nillable = FALSE;

  if (cur_type == ((void*)0)) {
   if (sdl->elements == ((void*)0)) {
    sdl->elements = emalloc(sizeof(HashTable));
    zend_hash_init(sdl->elements, 0, ((void*)0), delete_type, 0);
   }
   addHash = sdl->elements;
   smart_str_appends(&key, newType->namens);
   smart_str_appendc(&key, ':');
   smart_str_appends(&key, newType->name);
  } else {
   if (cur_type->elements == ((void*)0)) {
    cur_type->elements = emalloc(sizeof(HashTable));
    zend_hash_init(cur_type->elements, 0, ((void*)0), delete_type, 0);
   }
   addHash = cur_type->elements;
   smart_str_appends(&key, newType->name);
  }

  smart_str_0(&key);
  if (zend_hash_add_ptr(addHash, key.s, newType) == ((void*)0)) {
   if (cur_type == ((void*)0)) {
    soap_error1(E_ERROR, "Parsing Schema: element '%s' already defined", ZSTR_VAL(key.s));
   } else {
    zend_hash_next_index_insert_ptr(addHash, newType);
   }
  }
  smart_str_free(&key);

  if (model != ((void*)0)) {
   sdlContentModelPtr newModel = emalloc(sizeof(sdlContentModel));

   newModel->kind = XSD_CONTENT_ELEMENT;
   newModel->u.element = newType;

   schema_min_max(element, newModel);


   zend_hash_next_index_insert_ptr(model->u.content, newModel);
  }
  cur_type = newType;
 } else {
  soap_error0(E_ERROR, "Parsing Schema: element has no 'name' nor 'ref' attributes");
 }


 attrs = element->properties;
 attr = get_attribute(attrs, "nillable");
 if (attr) {
  if (ref != ((void*)0)) {
   soap_error0(E_ERROR, "Parsing Schema: element has both 'ref' and 'nillable' attributes");
  }
  if (!stricmp((char*)attr->children->content, "true") ||
   !stricmp((char*)attr->children->content, "1")) {
   cur_type->nillable = TRUE;
  } else {
   cur_type->nillable = FALSE;
  }
 } else {
  cur_type->nillable = FALSE;
 }

 attr = get_attribute(attrs, "fixed");
 if (attr) {
  if (ref != ((void*)0)) {
   soap_error0(E_ERROR, "Parsing Schema: element has both 'ref' and 'fixed' attributes");
  }
  cur_type->fixed = estrdup((char*)attr->children->content);
 }

 attr = get_attribute(attrs, "default");
 if (attr) {
  if (ref != ((void*)0)) {
   soap_error0(E_ERROR, "Parsing Schema: element has both 'ref' and 'fixed' attributes");
  } else if (ref != ((void*)0)) {
   soap_error0(E_ERROR, "Parsing Schema: element has both 'default' and 'fixed' attributes");
  }
  cur_type->def = estrdup((char*)attr->children->content);
 }


 attr = get_attribute(attrs, "form");
 if (attr) {
  if (strncmp((char*)attr->children->content, "qualified", sizeof("qualified")) == 0) {
    cur_type->form = XSD_FORM_QUALIFIED;
  } else if (strncmp((char*)attr->children->content, "unqualified", sizeof("unqualified")) == 0) {
    cur_type->form = XSD_FORM_UNQUALIFIED;
  } else {
    cur_type->form = XSD_FORM_DEFAULT;
  }
 } else {
   cur_type->form = XSD_FORM_DEFAULT;
 }
 if (cur_type->form == XSD_FORM_DEFAULT) {
   xmlNodePtr parent = element->parent;
   while (parent) {
   if (node_is_equal_ex(parent, "schema", SCHEMA_NAMESPACE)) {
    xmlAttrPtr def;
    def = get_attribute(parent->properties, "elementFormDefault");
    if(def == ((void*)0) || strncmp((char*)def->children->content, "qualified", sizeof("qualified"))) {
     cur_type->form = XSD_FORM_UNQUALIFIED;
    } else {
     cur_type->form = XSD_FORM_QUALIFIED;
    }
    break;
   }
   parent = parent->parent;
   }
  if (parent == ((void*)0)) {
   cur_type->form = XSD_FORM_UNQUALIFIED;
  }
 }


 type = get_attribute(attrs, "type");
 if (type) {
  char *cptype, *str_ns;
  xmlNsPtr nsptr;

  if (ref != ((void*)0)) {
   soap_error0(E_ERROR, "Parsing Schema: element has both 'ref' and 'type' attributes");
  }
  parse_namespace(type->children->content, &cptype, &str_ns);
  nsptr = xmlSearchNs(element->doc, element, BAD_CAST(str_ns));
  if (nsptr != ((void*)0)) {
   cur_type->encode = get_create_encoder(sdl, cur_type, nsptr->href, BAD_CAST(cptype));
  }
  if (str_ns) {efree(str_ns);}
  if (cptype) {efree(cptype);}
 }

 trav = element->children;
 if (trav != ((void*)0) && node_is_equal(trav, "annotation")) {

  trav = trav->next;
 }
 if (trav != ((void*)0)) {
  if (node_is_equal(trav,"simpleType")) {
   if (ref != ((void*)0)) {
    soap_error0(E_ERROR, "Parsing Schema: element has both 'ref' attribute and subtype");
   } else if (type != ((void*)0)) {
    soap_error0(E_ERROR, "Parsing Schema: element has both 'type' attribute and subtype");
   }
   schema_simpleType(sdl, tns, trav, cur_type);
   trav = trav->next;
  } else if (node_is_equal(trav,"complexType")) {
   if (ref != ((void*)0)) {
    soap_error0(E_ERROR, "Parsing Schema: element has both 'ref' attribute and subtype");
   } else if (type != ((void*)0)) {
    soap_error0(E_ERROR, "Parsing Schema: element has both 'type' attribute and subtype");
   }
   schema_complexType(sdl, tns, trav, cur_type);
   trav = trav->next;
  }
 }
 while (trav != ((void*)0)) {
  if (node_is_equal(trav,"unique")) {

  } else if (node_is_equal(trav,"key")) {

  } else if (node_is_equal(trav,"keyref")) {

  } else {
   soap_error1(E_ERROR, "Parsing Schema: unexpected <%s> in element", trav->name);
  }
  trav = trav->next;
 }

 return TRUE;
}

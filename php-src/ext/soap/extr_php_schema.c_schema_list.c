
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef TYPE_2__* xmlNsPtr ;
typedef TYPE_3__* xmlNodePtr ;
typedef TYPE_4__* xmlAttrPtr ;
typedef TYPE_5__* sdlTypePtr ;
typedef int sdlType ;
typedef TYPE_6__* sdlPtr ;
typedef int buf ;
struct TYPE_28__ {int types; } ;
struct TYPE_27__ {char* name; int * elements; void* namens; int encode; } ;
struct TYPE_26__ {TYPE_1__* children; } ;
struct TYPE_25__ {int name; struct TYPE_25__* next; struct TYPE_25__* children; int doc; int properties; } ;
struct TYPE_24__ {scalar_t__ href; } ;
struct TYPE_23__ {scalar_t__ content; } ;
typedef int HashTable ;


 int BAD_CAST (char*) ;
 int E_ERROR ;
 int MAX_LENGTH_OF_LONG ;
 int TRUE ;
 int delete_type ;
 int efree (char*) ;
 void* emalloc (int) ;
 void* estrdup (char*) ;
 TYPE_4__* get_attribute (int ,char*) ;
 int get_create_encoder (TYPE_6__*,TYPE_5__*,scalar_t__,int ) ;
 int memcpy (char*,char*,int) ;
 int memset (TYPE_5__*,int ,int) ;
 scalar_t__ node_is_equal (TYPE_3__*,char*) ;
 int parse_namespace (scalar_t__,char**,char**) ;
 int schema_simpleType (TYPE_6__*,TYPE_4__*,TYPE_3__*,TYPE_5__*) ;
 int soap_error0 (int ,char*) ;
 int soap_error1 (int ,char*,int ) ;
 TYPE_2__* xmlSearchNs (int ,TYPE_3__*,int ) ;
 int zend_hash_init (int *,int ,int *,int ,int ) ;
 int zend_hash_next_index_insert_ptr (int *,TYPE_5__*) ;
 int zend_hash_num_elements (int ) ;
 char* zend_print_long_to_buf (char*,int ) ;

__attribute__((used)) static int schema_list(sdlPtr sdl, xmlAttrPtr tns, xmlNodePtr listType, sdlTypePtr cur_type)
{
 xmlNodePtr trav;
 xmlAttrPtr itemType;

 itemType = get_attribute(listType->properties, "itemType");
 if (itemType != ((void*)0)) {
  char *type, *ns;
  xmlNsPtr nsptr;

  parse_namespace(itemType->children->content, &type, &ns);
  nsptr = xmlSearchNs(listType->doc, listType, BAD_CAST(ns));
  if (nsptr != ((void*)0)) {
   sdlTypePtr newType;

   newType = emalloc(sizeof(sdlType));
   memset(newType, 0, sizeof(sdlType));

   newType->name = estrdup(type);
   newType->namens = estrdup((char*)nsptr->href);

   newType->encode = get_create_encoder(sdl, newType, nsptr->href, BAD_CAST(type));

   if (cur_type->elements == ((void*)0)) {
    cur_type->elements = emalloc(sizeof(HashTable));
    zend_hash_init(cur_type->elements, 0, ((void*)0), delete_type, 0);
   }
   zend_hash_next_index_insert_ptr(cur_type->elements, newType);
  }
  if (type) {efree(type);}
  if (ns) {efree(ns);}
 }

 trav = listType->children;
 if (trav != ((void*)0) && node_is_equal(trav,"annotation")) {

  trav = trav->next;
 }
 if (trav != ((void*)0) && node_is_equal(trav,"simpleType")) {
  sdlTypePtr newType;

  if (itemType != ((void*)0)) {
   soap_error0(E_ERROR, "Parsing Schema: element has both 'itemType' attribute and subtype");
  }

  newType = emalloc(sizeof(sdlType));
  memset(newType, 0, sizeof(sdlType));

  {
   char buf[MAX_LENGTH_OF_LONG + 1];
   char *res = zend_print_long_to_buf(buf + sizeof(buf) - 1, zend_hash_num_elements(sdl->types));
   char *str = emalloc(sizeof("anonymous")-1 + (buf + sizeof(buf) - res));

   memcpy(str, "anonymous", sizeof("anonymous")-1);
   memcpy(str + sizeof("anonymous")-1, res, buf + sizeof(buf) - res);
   newType->name = str;
  }
  newType->namens = estrdup((char*)tns->children->content);

  if (cur_type->elements == ((void*)0)) {
   cur_type->elements = emalloc(sizeof(HashTable));
   zend_hash_init(cur_type->elements, 0, ((void*)0), delete_type, 0);
  }
  zend_hash_next_index_insert_ptr(cur_type->elements, newType);

  schema_simpleType(sdl, tns, trav, newType);

  trav = trav->next;
 }
 if (trav != ((void*)0)) {
  soap_error1(E_ERROR, "Parsing Schema: unexpected <%s> in list", trav->name);
 }
 return TRUE;
}

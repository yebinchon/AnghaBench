
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_6__ ;
typedef struct TYPE_36__ TYPE_5__ ;
typedef struct TYPE_35__ TYPE_4__ ;
typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_1__ ;


typedef TYPE_3__* xmlNodePtr ;
typedef TYPE_4__* xmlAttrPtr ;
typedef TYPE_5__* sdlTypePtr ;
typedef int sdlType ;
typedef TYPE_6__* sdlPtr ;
typedef int encode ;
struct TYPE_37__ {int * types; int * encoders; } ;
struct TYPE_32__ {TYPE_5__* sdl_type; void* type_str; void* ns; } ;
struct TYPE_36__ {char* name; char* namens; void* kind; int * elements; struct TYPE_36__* encode; int to_zval; int to_xml; TYPE_1__ details; } ;
struct TYPE_35__ {TYPE_2__* children; } ;
struct TYPE_34__ {int name; struct TYPE_34__* next; struct TYPE_34__* children; int properties; } ;
struct TYPE_33__ {scalar_t__ content; } ;
typedef int HashTable ;


 int E_ERROR ;
 int TRUE ;
 void* XSD_TYPEKIND_LIST ;
 void* XSD_TYPEKIND_SIMPLE ;
 void* XSD_TYPEKIND_UNION ;
 int create_encoder (TYPE_6__*,TYPE_5__*,scalar_t__,scalar_t__) ;
 int delete_encoder ;
 int delete_type ;
 void* emalloc (int) ;
 void* estrdup (char*) ;
 TYPE_4__* get_attribute (int ,char*) ;
 int memset (TYPE_5__*,int ,int) ;
 scalar_t__ node_is_equal (TYPE_3__*,char*) ;
 int schema_list (TYPE_6__*,TYPE_4__*,TYPE_3__*,TYPE_5__*) ;
 int schema_restriction_simpleContent (TYPE_6__*,TYPE_4__*,TYPE_3__*,TYPE_5__*,int) ;
 int schema_union (TYPE_6__*,TYPE_4__*,TYPE_3__*,TYPE_5__*) ;
 int sdl_guess_convert_xml ;
 int sdl_guess_convert_zval ;
 int soap_error0 (int ,char*) ;
 int soap_error1 (int ,char*,int ) ;
 int strlen (char*) ;
 int zend_hash_init (int *,int ,int *,int ,int ) ;
 TYPE_5__* zend_hash_next_index_insert_ptr (int *,TYPE_5__*) ;
 TYPE_5__* zend_hash_str_update_ptr (int *,char*,int ,TYPE_5__*) ;

__attribute__((used)) static int schema_simpleType(sdlPtr sdl, xmlAttrPtr tns, xmlNodePtr simpleType, sdlTypePtr cur_type)
{
 xmlNodePtr trav;
 xmlAttrPtr name, ns;

 ns = get_attribute(simpleType->properties, "targetNamespace");
 if (ns == ((void*)0)) {
  ns = tns;
 }

 name = get_attribute(simpleType->properties, "name");
 if (cur_type != ((void*)0)) {

  sdlTypePtr newType, ptr;

  newType = emalloc(sizeof(sdlType));
  memset(newType, 0, sizeof(sdlType));
  newType->kind = XSD_TYPEKIND_SIMPLE;
  if (name != ((void*)0)) {
   newType->name = estrdup((char*)name->children->content);
   newType->namens = estrdup((char*)ns->children->content);
  } else {
   newType->name = estrdup(cur_type->name);
   newType->namens = estrdup(cur_type->namens);
  }

  ptr = zend_hash_next_index_insert_ptr(sdl->types, newType);

  if (sdl->encoders == ((void*)0)) {
   sdl->encoders = emalloc(sizeof(HashTable));
   zend_hash_init(sdl->encoders, 0, ((void*)0), delete_encoder, 0);
  }
  cur_type->encode = emalloc(sizeof(encode));
  memset(cur_type->encode, 0, sizeof(encode));
  cur_type->encode->details.ns = estrdup(newType->namens);
  cur_type->encode->details.type_str = estrdup(newType->name);
  cur_type->encode->details.sdl_type = ptr;
  cur_type->encode->to_xml = sdl_guess_convert_xml;
  cur_type->encode->to_zval = sdl_guess_convert_zval;
  zend_hash_next_index_insert_ptr(sdl->encoders, cur_type->encode);

  cur_type =ptr;

 } else if (name != ((void*)0)) {
  sdlTypePtr newType, ptr;

  newType = emalloc(sizeof(sdlType));
  memset(newType, 0, sizeof(sdlType));
  newType->kind = XSD_TYPEKIND_SIMPLE;
  newType->name = estrdup((char*)name->children->content);
  newType->namens = estrdup((char*)ns->children->content);

  if (cur_type == ((void*)0)) {
   ptr = zend_hash_next_index_insert_ptr(sdl->types, newType);
  } else {
   if (cur_type->elements == ((void*)0)) {
    cur_type->elements = emalloc(sizeof(HashTable));
    zend_hash_init(cur_type->elements, 0, ((void*)0), delete_type, 0);
   }
   ptr = zend_hash_str_update_ptr(cur_type->elements, newType->name, strlen(newType->name), newType);
  }
  cur_type = ptr;

  create_encoder(sdl, cur_type, ns->children->content, name->children->content);
 } else {
  soap_error0(E_ERROR, "Parsing Schema: simpleType has no 'name' attribute");
 }

 trav = simpleType->children;
 if (trav != ((void*)0) && node_is_equal(trav,"annotation")) {

  trav = trav->next;
 }
 if (trav != ((void*)0)) {
  if (node_is_equal(trav,"restriction")) {
   schema_restriction_simpleContent(sdl, tns, trav, cur_type, 1);
   trav = trav->next;
  } else if (node_is_equal(trav,"list")) {
   cur_type->kind = XSD_TYPEKIND_LIST;
   schema_list(sdl, tns, trav, cur_type);
   trav = trav->next;
  } else if (node_is_equal(trav,"union")) {
   cur_type->kind = XSD_TYPEKIND_UNION;
   schema_union(sdl, tns, trav, cur_type);
   trav = trav->next;
  } else {
   soap_error1(E_ERROR, "Parsing Schema: unexpected <%s> in simpleType", trav->name);
  }
 } else {
  soap_error0(E_ERROR, "Parsing Schema: expected <restriction>, <list> or <union> in simpleType");
 }
 if (trav != ((void*)0)) {
  soap_error1(E_ERROR, "Parsing Schema: unexpected <%s> in simpleType", trav->name);
 }

 return TRUE;
}

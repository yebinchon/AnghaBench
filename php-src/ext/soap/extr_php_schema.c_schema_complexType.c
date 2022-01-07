
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_56__ TYPE_6__ ;
typedef struct TYPE_55__ TYPE_5__ ;
typedef struct TYPE_54__ TYPE_4__ ;
typedef struct TYPE_53__ TYPE_3__ ;
typedef struct TYPE_52__ TYPE_2__ ;
typedef struct TYPE_51__ TYPE_1__ ;


typedef TYPE_3__* xmlNodePtr ;
typedef TYPE_4__* xmlAttrPtr ;
typedef TYPE_5__* sdlTypePtr ;
typedef int sdlType ;
typedef TYPE_6__* sdlPtr ;
typedef int encode ;
struct TYPE_56__ {int * types; int * encoders; } ;
struct TYPE_51__ {TYPE_5__* sdl_type; void* type_str; void* ns; } ;
struct TYPE_55__ {char* name; char* namens; void* kind; struct TYPE_55__* encode; int to_zval; int to_xml; TYPE_1__ details; } ;
struct TYPE_54__ {TYPE_2__* children; } ;
struct TYPE_53__ {int name; struct TYPE_53__* next; struct TYPE_53__* children; TYPE_4__* properties; } ;
struct TYPE_52__ {scalar_t__ content; } ;
typedef int HashTable ;


 int E_ERROR ;
 int FALSE ;
 int TRUE ;
 void* XSD_TYPEKIND_COMPLEX ;
 int create_encoder (TYPE_6__*,TYPE_5__*,scalar_t__,scalar_t__) ;
 int delete_encoder ;
 void* emalloc (int) ;
 void* estrdup (char*) ;
 TYPE_4__* get_attribute (TYPE_4__*,char*) ;
 int memset (TYPE_5__*,int ,int) ;
 scalar_t__ node_is_equal (TYPE_3__*,char*) ;
 int schema_all (TYPE_6__*,TYPE_4__*,TYPE_3__*,TYPE_5__*,int *) ;
 int schema_attribute (TYPE_6__*,TYPE_4__*,TYPE_3__*,TYPE_5__*,int *) ;
 int schema_attributeGroup (TYPE_6__*,TYPE_4__*,TYPE_3__*,TYPE_5__*,int *) ;
 int schema_choice (TYPE_6__*,TYPE_4__*,TYPE_3__*,TYPE_5__*,int *) ;
 int schema_complexContent (TYPE_6__*,TYPE_4__*,TYPE_3__*,TYPE_5__*) ;
 int schema_group (TYPE_6__*,TYPE_4__*,TYPE_3__*,TYPE_5__*,int *) ;
 int schema_sequence (TYPE_6__*,TYPE_4__*,TYPE_3__*,TYPE_5__*,int *) ;
 int schema_simpleContent (TYPE_6__*,TYPE_4__*,TYPE_3__*,TYPE_5__*) ;
 int sdl_guess_convert_xml ;
 int sdl_guess_convert_zval ;
 int soap_error0 (int ,char*) ;
 int soap_error1 (int ,char*,int ) ;
 int zend_hash_init (int *,int ,int *,int ,int ) ;
 TYPE_5__* zend_hash_next_index_insert_ptr (int *,TYPE_5__*) ;

__attribute__((used)) static int schema_complexType(sdlPtr sdl, xmlAttrPtr tns, xmlNodePtr compType, sdlTypePtr cur_type)
{
 xmlNodePtr trav;
 xmlAttrPtr attrs, name, ns;

 attrs = compType->properties;
 ns = get_attribute(attrs, "targetNamespace");
 if (ns == ((void*)0)) {
  ns = tns;
 }

 name = get_attribute(attrs, "name");
 if (cur_type != ((void*)0)) {

  sdlTypePtr newType, ptr;

  newType = emalloc(sizeof(sdlType));
  memset(newType, 0, sizeof(sdlType));
  newType->kind = XSD_TYPEKIND_COMPLEX;
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

  cur_type = ptr;

 } else if (name) {
  sdlTypePtr newType, ptr;

  newType = emalloc(sizeof(sdlType));
  memset(newType, 0, sizeof(sdlType));
  newType->kind = XSD_TYPEKIND_COMPLEX;
  newType->name = estrdup((char*)name->children->content);
  newType->namens = estrdup((char*)ns->children->content);

  ptr = zend_hash_next_index_insert_ptr(sdl->types, newType);

  cur_type = ptr;
  create_encoder(sdl, cur_type, ns->children->content, name->children->content);
 } else {
  soap_error0(E_ERROR, "Parsing Schema: complexType has no 'name' attribute");
  return FALSE;
 }

 trav = compType->children;
 if (trav != ((void*)0) && node_is_equal(trav, "annotation")) {

  trav = trav->next;
 }
 if (trav != ((void*)0)) {
  if (node_is_equal(trav,"simpleContent")) {
   schema_simpleContent(sdl, tns, trav, cur_type);
   trav = trav->next;
  } else if (node_is_equal(trav,"complexContent")) {
   schema_complexContent(sdl, tns, trav, cur_type);
   trav = trav->next;
  } else {
   if (node_is_equal(trav,"group")) {
    schema_group(sdl, tns, trav, cur_type, ((void*)0));
    trav = trav->next;
   } else if (node_is_equal(trav,"all")) {
    schema_all(sdl, tns, trav, cur_type, ((void*)0));
    trav = trav->next;
   } else if (node_is_equal(trav,"choice")) {
    schema_choice(sdl, tns, trav, cur_type, ((void*)0));
    trav = trav->next;
   } else if (node_is_equal(trav,"sequence")) {
    schema_sequence(sdl, tns, trav, cur_type, ((void*)0));
    trav = trav->next;
   }
   while (trav != ((void*)0)) {
    if (node_is_equal(trav,"attribute")) {
     schema_attribute(sdl, tns, trav, cur_type, ((void*)0));
    } else if (node_is_equal(trav,"attributeGroup")) {
     schema_attributeGroup(sdl, tns, trav, cur_type, ((void*)0));
    } else if (node_is_equal(trav,"anyAttribute")) {

     trav = trav->next;
     break;
    } else {
     soap_error1(E_ERROR, "Parsing Schema: unexpected <%s> in complexType", trav->name);
    }
    trav = trav->next;
   }
  }
 }
 if (trav != ((void*)0)) {
  soap_error1(E_ERROR, "Parsing Schema: unexpected <%s> in complexType", trav->name);
 }
 return TRUE;
}

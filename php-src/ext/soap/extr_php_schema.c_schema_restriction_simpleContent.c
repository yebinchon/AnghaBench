
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_6__ ;
typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_26__ ;
typedef struct TYPE_30__ TYPE_1__ ;


typedef TYPE_2__* xmlNsPtr ;
typedef TYPE_3__* xmlNodePtr ;
typedef TYPE_4__* xmlAttrPtr ;
typedef TYPE_5__* sdlTypePtr ;
typedef int sdlRestrictions ;
typedef TYPE_6__* sdlRestrictionCharPtr ;
typedef int sdlPtr ;
struct TYPE_36__ {int value; } ;
struct TYPE_35__ {TYPE_26__* restrictions; int encode; } ;
struct TYPE_34__ {TYPE_1__* children; } ;
struct TYPE_33__ {int name; struct TYPE_33__* next; struct TYPE_33__* children; int doc; int properties; } ;
struct TYPE_32__ {int href; } ;
struct TYPE_31__ {int * enumeration; TYPE_6__* pattern; TYPE_6__* whiteSpace; int maxLength; int minLength; int length; int fractionDigits; int totalDigits; int maxInclusive; int maxExclusive; int minInclusive; int minExclusive; } ;
struct TYPE_30__ {int content; } ;
typedef int HashTable ;


 int BAD_CAST (char*) ;
 int E_ERROR ;
 int TRUE ;
 int delete_restriction_var_char ;
 int delete_restriction_var_char_int (TYPE_6__*) ;
 int efree (char*) ;
 void* emalloc (int) ;
 TYPE_4__* get_attribute (int ,char*) ;
 int get_create_encoder (int ,TYPE_5__*,int ,int ) ;
 int memset (TYPE_26__*,int ,int) ;
 scalar_t__ node_is_equal (TYPE_3__*,char*) ;
 int parse_namespace (int ,char**,char**) ;
 int schema_attribute (int ,TYPE_4__*,TYPE_3__*,TYPE_5__*,int *) ;
 int schema_attributeGroup (int ,TYPE_4__*,TYPE_3__*,TYPE_5__*,int *) ;
 int schema_restriction_var_char (TYPE_3__*,TYPE_6__**) ;
 int schema_restriction_var_int (TYPE_3__*,int *) ;
 int schema_simpleType (int ,TYPE_4__*,TYPE_3__*,TYPE_5__*) ;
 int soap_error0 (int ,char*) ;
 int soap_error1 (int ,char*,int ) ;
 int strlen (int ) ;
 TYPE_2__* xmlSearchNs (int ,TYPE_3__*,int ) ;
 int zend_hash_init (int *,int ,int *,int ,int ) ;
 int * zend_hash_str_add_ptr (int *,int ,int ,TYPE_6__*) ;

__attribute__((used)) static int schema_restriction_simpleContent(sdlPtr sdl, xmlAttrPtr tns, xmlNodePtr restType, sdlTypePtr cur_type, int simpleType)
{
 xmlNodePtr trav;
 xmlAttrPtr base;

 base = get_attribute(restType->properties, "base");
 if (base != ((void*)0)) {
  char *type, *ns;
  xmlNsPtr nsptr;

  parse_namespace(base->children->content, &type, &ns);
  nsptr = xmlSearchNs(restType->doc, restType, BAD_CAST(ns));
  if (nsptr != ((void*)0)) {
   cur_type->encode = get_create_encoder(sdl, cur_type, nsptr->href, BAD_CAST(type));
  }
  if (type) {efree(type);}
  if (ns) {efree(ns);}
 } else if (!simpleType) {
  soap_error0(E_ERROR, "Parsing Schema: restriction has no 'base' attribute");
 }

 if (cur_type->restrictions == ((void*)0)) {
  cur_type->restrictions = emalloc(sizeof(sdlRestrictions));
  memset(cur_type->restrictions, 0, sizeof(sdlRestrictions));
 }

 trav = restType->children;
 if (trav != ((void*)0) && node_is_equal(trav, "annotation")) {

  trav = trav->next;
 }
 if (trav != ((void*)0) && node_is_equal(trav, "simpleType")) {
  schema_simpleType(sdl, tns, trav, cur_type);
  trav = trav->next;
 }
 while (trav != ((void*)0)) {
  if (node_is_equal(trav, "minExclusive")) {
   schema_restriction_var_int(trav, &cur_type->restrictions->minExclusive);
  } else if (node_is_equal(trav, "minInclusive")) {
   schema_restriction_var_int(trav, &cur_type->restrictions->minInclusive);
  } else if (node_is_equal(trav, "maxExclusive")) {
   schema_restriction_var_int(trav, &cur_type->restrictions->maxExclusive);
  } else if (node_is_equal(trav, "maxInclusive")) {
   schema_restriction_var_int(trav, &cur_type->restrictions->maxInclusive);
  } else if (node_is_equal(trav, "totalDigits")) {
   schema_restriction_var_int(trav, &cur_type->restrictions->totalDigits);
  } else if (node_is_equal(trav, "fractionDigits")) {
   schema_restriction_var_int(trav, &cur_type->restrictions->fractionDigits);
  } else if (node_is_equal(trav, "length")) {
   schema_restriction_var_int(trav, &cur_type->restrictions->length);
  } else if (node_is_equal(trav, "minLength")) {
   schema_restriction_var_int(trav, &cur_type->restrictions->minLength);
  } else if (node_is_equal(trav, "maxLength")) {
   schema_restriction_var_int(trav, &cur_type->restrictions->maxLength);
  } else if (node_is_equal(trav, "whiteSpace")) {
   schema_restriction_var_char(trav, &cur_type->restrictions->whiteSpace);
  } else if (node_is_equal(trav, "pattern")) {
   schema_restriction_var_char(trav, &cur_type->restrictions->pattern);
  } else if (node_is_equal(trav, "enumeration")) {
   sdlRestrictionCharPtr enumval = ((void*)0);

   schema_restriction_var_char(trav, &enumval);
   if (cur_type->restrictions->enumeration == ((void*)0)) {
    cur_type->restrictions->enumeration = emalloc(sizeof(HashTable));
    zend_hash_init(cur_type->restrictions->enumeration, 0, ((void*)0), delete_restriction_var_char, 0);
   }
   if (zend_hash_str_add_ptr(cur_type->restrictions->enumeration, enumval->value, strlen(enumval->value), enumval) == ((void*)0)) {
    delete_restriction_var_char_int(enumval);
   }
  } else {
   break;
  }
  trav = trav->next;
 }
 if (!simpleType) {
  while (trav != ((void*)0)) {
   if (node_is_equal(trav,"attribute")) {
    schema_attribute(sdl, tns, trav, cur_type, ((void*)0));
   } else if (node_is_equal(trav,"attributeGroup")) {
    schema_attributeGroup(sdl, tns, trav, cur_type, ((void*)0));
   } else if (node_is_equal(trav,"anyAttribute")) {

    trav = trav->next;
    break;
   } else {
    soap_error1(E_ERROR, "Parsing Schema: unexpected <%s> in restriction", trav->name);
   }
   trav = trav->next;
  }
 }
 if (trav != ((void*)0)) {
  soap_error1(E_ERROR, "Parsing Schema: unexpected <%s> in restriction", trav->name);
 }

 return TRUE;
}

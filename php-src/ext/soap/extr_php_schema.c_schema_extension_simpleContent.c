
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef TYPE_2__* xmlNsPtr ;
typedef TYPE_3__* xmlNodePtr ;
typedef TYPE_4__* xmlAttrPtr ;
typedef TYPE_5__* sdlTypePtr ;
typedef int sdlPtr ;
struct TYPE_24__ {int encode; } ;
struct TYPE_23__ {TYPE_1__* children; } ;
struct TYPE_22__ {int name; struct TYPE_22__* next; struct TYPE_22__* children; int doc; int properties; } ;
struct TYPE_21__ {int href; } ;
struct TYPE_20__ {int content; } ;


 int BAD_CAST (char*) ;
 int E_ERROR ;
 int TRUE ;
 int efree (char*) ;
 TYPE_4__* get_attribute (int ,char*) ;
 int get_create_encoder (int ,TYPE_5__*,int ,int ) ;
 scalar_t__ node_is_equal (TYPE_3__*,char*) ;
 int parse_namespace (int ,char**,char**) ;
 int schema_attribute (int ,TYPE_4__*,TYPE_3__*,TYPE_5__*,int *) ;
 int schema_attributeGroup (int ,TYPE_4__*,TYPE_3__*,TYPE_5__*,int *) ;
 int soap_error0 (int ,char*) ;
 int soap_error1 (int ,char*,int ) ;
 TYPE_2__* xmlSearchNs (int ,TYPE_3__*,int ) ;

__attribute__((used)) static int schema_extension_simpleContent(sdlPtr sdl, xmlAttrPtr tns, xmlNodePtr extType, sdlTypePtr cur_type)
{
 xmlNodePtr trav;
 xmlAttrPtr base;

 base = get_attribute(extType->properties, "base");
 if (base != ((void*)0)) {
  char *type, *ns;
  xmlNsPtr nsptr;

  parse_namespace(base->children->content, &type, &ns);
  nsptr = xmlSearchNs(extType->doc, extType, BAD_CAST(ns));
  if (nsptr != ((void*)0)) {
   cur_type->encode = get_create_encoder(sdl, cur_type, nsptr->href, BAD_CAST(type));
  }
  if (type) {efree(type);}
  if (ns) {efree(ns);}
 } else {
  soap_error0(E_ERROR, "Parsing Schema: extension has no 'base' attribute");
 }

 trav = extType->children;
 if (trav != ((void*)0) && node_is_equal(trav,"annotation")) {

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
   soap_error1(E_ERROR, "Parsing Schema: unexpected <%s> in extension", trav->name);
  }
  trav = trav->next;
 }
 if (trav != ((void*)0)) {
  soap_error1(E_ERROR, "Parsing Schema: unexpected <%s> in extension", trav->name);
 }
 return TRUE;
}

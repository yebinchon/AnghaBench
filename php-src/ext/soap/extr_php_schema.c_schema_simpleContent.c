
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* xmlNodePtr ;
typedef int xmlAttrPtr ;
typedef TYPE_2__* sdlTypePtr ;
typedef int sdlPtr ;
struct TYPE_11__ {int kind; } ;
struct TYPE_10__ {int name; struct TYPE_10__* next; struct TYPE_10__* children; } ;


 int E_ERROR ;
 int TRUE ;
 int XSD_TYPEKIND_EXTENSION ;
 int XSD_TYPEKIND_RESTRICTION ;
 scalar_t__ node_is_equal (TYPE_1__*,char*) ;
 int schema_extension_simpleContent (int ,int ,TYPE_1__*,TYPE_2__*) ;
 int schema_restriction_simpleContent (int ,int ,TYPE_1__*,TYPE_2__*,int ) ;
 int soap_error0 (int ,char*) ;
 int soap_error1 (int ,char*,int ) ;

__attribute__((used)) static int schema_simpleContent(sdlPtr sdl, xmlAttrPtr tns, xmlNodePtr simpCompType, sdlTypePtr cur_type)
{
 xmlNodePtr trav;

 trav = simpCompType->children;
 if (trav != ((void*)0) && node_is_equal(trav,"annotation")) {

  trav = trav->next;
 }
 if (trav != ((void*)0)) {
  if (node_is_equal(trav, "restriction")) {
   cur_type->kind = XSD_TYPEKIND_RESTRICTION;
   schema_restriction_simpleContent(sdl, tns, trav, cur_type, 0);
   trav = trav->next;
  } else if (node_is_equal(trav, "extension")) {
   cur_type->kind = XSD_TYPEKIND_EXTENSION;
   schema_extension_simpleContent(sdl, tns, trav, cur_type);
   trav = trav->next;
  } else {
   soap_error1(E_ERROR, "Parsing Schema: unexpected <%s> in simpleContent", trav->name);
  }
 } else {
  soap_error0(E_ERROR, "Parsing Schema: expected <restriction> or <extension> in simpleContent");
 }
 if (trav != ((void*)0)) {
  soap_error1(E_ERROR, "Parsing Schema: unexpected <%s> in simpleContent", trav->name);
 }

 return TRUE;
}

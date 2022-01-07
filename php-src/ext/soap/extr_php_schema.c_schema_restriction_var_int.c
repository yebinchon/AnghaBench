
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_2__* xmlNodePtr ;
typedef TYPE_3__* xmlAttrPtr ;
typedef TYPE_4__* sdlRestrictionIntPtr ;
typedef int sdlRestrictionInt ;
struct TYPE_13__ {int fixed; int value; } ;
struct TYPE_12__ {TYPE_1__* children; } ;
struct TYPE_11__ {int properties; } ;
struct TYPE_10__ {scalar_t__ content; } ;


 int E_ERROR ;
 int FALSE ;
 int TRUE ;
 int atoi (char*) ;
 TYPE_4__* emalloc (int) ;
 TYPE_3__* get_attribute (int ,char*) ;
 int memset (TYPE_4__*,int ,int) ;
 int soap_error0 (int ,char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static int schema_restriction_var_int(xmlNodePtr val, sdlRestrictionIntPtr *valptr)
{
 xmlAttrPtr fixed, value;

 if ((*valptr) == ((void*)0)) {
  (*valptr) = emalloc(sizeof(sdlRestrictionInt));
 }
 memset((*valptr), 0, sizeof(sdlRestrictionInt));

 fixed = get_attribute(val->properties, "fixed");
 (*valptr)->fixed = FALSE;
 if (fixed != ((void*)0)) {
  if (!strncmp((char*)fixed->children->content, "true", sizeof("true")) ||
   !strncmp((char*)fixed->children->content, "1", sizeof("1")))
   (*valptr)->fixed = TRUE;
 }

 value = get_attribute(val->properties, "value");
 if (value == ((void*)0)) {
  soap_error0(E_ERROR, "Parsing Schema: missing restriction value");
 }

 (*valptr)->value = atoi((char*)value->children->content);

 return TRUE;
}

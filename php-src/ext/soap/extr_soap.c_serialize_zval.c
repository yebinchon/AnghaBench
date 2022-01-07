
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int zval ;
typedef TYPE_2__* xmlNodePtr ;
typedef TYPE_3__* sdlParamPtr ;
typedef int * encodePtr ;
struct TYPE_12__ {TYPE_1__* element; int * encode; } ;
struct TYPE_11__ {scalar_t__ name; } ;
struct TYPE_10__ {int def; int nillable; int fixed; } ;


 int BAD_CAST (char*) ;
 int ZVAL_STRING (int *,int ) ;
 int ZVAL_UNDEF (int *) ;
 TYPE_2__* master_to_xml (int *,int *,int,TYPE_2__*) ;
 int strcmp (char*,char*) ;
 int xmlNodeSetName (TYPE_2__*,int ) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static xmlNodePtr serialize_zval(zval *val, sdlParamPtr param, char *paramName, int style, xmlNodePtr parent)
{
 xmlNodePtr xmlParam;
 encodePtr enc;
 zval defval;

 ZVAL_UNDEF(&defval);
 if (param != ((void*)0)) {
  enc = param->encode;
  if (val == ((void*)0)) {
   if (param->element) {
    if (param->element->fixed) {
     ZVAL_STRING(&defval, param->element->fixed);
     val = &defval;
    } else if (param->element->def && !param->element->nillable) {
     ZVAL_STRING(&defval, param->element->def);
     val = &defval;
    }
   }
  }
 } else {
  enc = ((void*)0);
 }
 xmlParam = master_to_xml(enc, val, style, parent);
 zval_ptr_dtor(&defval);
 if (!strcmp((char*)xmlParam->name, "BOGUS")) {
  xmlNodeSetName(xmlParam, BAD_CAST(paramName));
 }
 return xmlParam;
}

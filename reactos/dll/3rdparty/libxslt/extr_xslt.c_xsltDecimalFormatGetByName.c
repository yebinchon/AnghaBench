
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef TYPE_2__* xsltDecimalFormatPtr ;
typedef int xmlChar ;
struct TYPE_8__ {int name; int * nsUri; struct TYPE_8__* next; } ;
struct TYPE_7__ {TYPE_2__* decimalFormat; } ;


 scalar_t__ xmlStrEqual (int *,int ) ;
 TYPE_1__* xsltNextImport (TYPE_1__*) ;

xsltDecimalFormatPtr
xsltDecimalFormatGetByName(xsltStylesheetPtr style, xmlChar *name)
{
    xsltDecimalFormatPtr result = ((void*)0);

    if (name == ((void*)0))
 return style->decimalFormat;

    while (style != ((void*)0)) {
 for (result = style->decimalFormat->next;
      result != ((void*)0);
      result = result->next) {
     if ((result->nsUri == ((void*)0)) && xmlStrEqual(name, result->name))
  return result;
 }
 style = xsltNextImport(style);
    }
    return result;
}

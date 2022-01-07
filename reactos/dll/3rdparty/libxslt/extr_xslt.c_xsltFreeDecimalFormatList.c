
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef TYPE_2__* xsltDecimalFormatPtr ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
struct TYPE_5__ {TYPE_2__* decimalFormat; } ;


 int xsltFreeDecimalFormat (TYPE_2__*) ;

__attribute__((used)) static void
xsltFreeDecimalFormatList(xsltStylesheetPtr self)
{
    xsltDecimalFormatPtr iter;
    xsltDecimalFormatPtr tmp;

    if (self == ((void*)0))
 return;

    iter = self->decimalFormat;
    while (iter != ((void*)0)) {
 tmp = iter->next;
 xsltFreeDecimalFormat(iter);
 iter = tmp;
    }
}

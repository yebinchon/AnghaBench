
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
struct TYPE_3__ {int extrasNr; } ;



int
xsltAllocateExtra(xsltStylesheetPtr style)
{
    return(style->extrasNr++);
}

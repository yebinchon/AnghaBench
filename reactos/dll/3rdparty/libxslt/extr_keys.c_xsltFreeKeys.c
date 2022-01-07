
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef int xsltKeyDefPtr ;
struct TYPE_3__ {scalar_t__ keys; } ;


 int xsltFreeKeyDefList (int ) ;

void
xsltFreeKeys(xsltStylesheetPtr style) {
    if (style->keys)
 xsltFreeKeyDefList((xsltKeyDefPtr) style->keys);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xsltDocumentPtr ;
struct TYPE_3__ {int keys; } ;


 int xsltFreeKeyTableList (int ) ;

void
xsltFreeDocumentKeys(xsltDocumentPtr idoc) {
    if (idoc != ((void*)0))
        xsltFreeKeyTableList(idoc->keys);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xsltAttrElemPtr ;


 int xmlFree (int ) ;

__attribute__((used)) static void
xsltFreeAttrElem(xsltAttrElemPtr attr) {
    xmlFree(attr);
}

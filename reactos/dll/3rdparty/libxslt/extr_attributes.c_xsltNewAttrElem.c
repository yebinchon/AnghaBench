
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xsltAttrElemPtr ;
typedef int xsltAttrElem ;
typedef int xmlNodePtr ;
struct TYPE_4__ {int attr; } ;


 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ xmlMalloc (int) ;
 int xsltGenericError (int ,char*) ;
 int xsltGenericErrorContext ;

__attribute__((used)) static xsltAttrElemPtr
xsltNewAttrElem(xmlNodePtr attr) {
    xsltAttrElemPtr cur;

    cur = (xsltAttrElemPtr) xmlMalloc(sizeof(xsltAttrElem));
    if (cur == ((void*)0)) {
        xsltGenericError(xsltGenericErrorContext,
  "xsltNewAttrElem : malloc failed\n");
 return(((void*)0));
    }
    memset(cur, 0, sizeof(xsltAttrElem));
    cur->attr = attr;
    return(cur);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xsltAttrSetPtr ;
typedef int xsltAttrSet ;


 int memset (int *,int ,int) ;
 scalar_t__ xmlMalloc (int) ;
 int xsltGenericError (int ,char*) ;
 int xsltGenericErrorContext ;

__attribute__((used)) static xsltAttrSetPtr
xsltNewAttrSet() {
    xsltAttrSetPtr cur;

    cur = (xsltAttrSetPtr) xmlMalloc(sizeof(xsltAttrSet));
    if (cur == ((void*)0)) {
        xsltGenericError(xsltGenericErrorContext,
  "xsltNewAttrSet : malloc failed\n");
 return(((void*)0));
    }
    memset(cur, 0, sizeof(xsltAttrSet));
    return(cur);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xsltSecurityPrefsPtr ;
typedef int xsltSecurityPrefs ;


 int memset (int *,int ,int) ;
 scalar_t__ xmlMalloc (int) ;
 int xsltInitGlobals () ;
 int xsltTransformError (int *,int *,int *,char*) ;

xsltSecurityPrefsPtr
xsltNewSecurityPrefs(void) {
    xsltSecurityPrefsPtr ret;

    xsltInitGlobals();

    ret = (xsltSecurityPrefsPtr) xmlMalloc(sizeof(xsltSecurityPrefs));
    if (ret == ((void*)0)) {
 xsltTransformError(((void*)0), ((void*)0), ((void*)0),
  "xsltNewSecurityPrefs : malloc failed\n");
 return(((void*)0));
    }
    memset(ret, 0, sizeof(xsltSecurityPrefs));
    return(ret);
}

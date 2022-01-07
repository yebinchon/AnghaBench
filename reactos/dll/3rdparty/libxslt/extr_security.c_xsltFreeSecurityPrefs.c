
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xsltSecurityPrefsPtr ;


 int xmlFree (int *) ;

void
xsltFreeSecurityPrefs(xsltSecurityPrefsPtr sec) {
    if (sec == ((void*)0))
 return;
    xmlFree(sec);
}

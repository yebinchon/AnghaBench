
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef scalar_t__ xsltSecurityPrefsPtr ;
struct TYPE_3__ {void* sec; } ;



int
xsltSetCtxtSecurityPrefs(xsltSecurityPrefsPtr sec,
                  xsltTransformContextPtr ctxt) {
    if (ctxt == ((void*)0))
 return(-1);
    ctxt->sec = (void *) sec;
    return(0);
}

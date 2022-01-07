
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlGenericErrorFunc ;


 int * xsltGenericError ;
 void* xsltGenericErrorContext ;
 int * xsltGenericErrorDefaultFunc ;

void
xsltSetGenericErrorFunc(void *ctx, xmlGenericErrorFunc handler) {
    xsltGenericErrorContext = ctx;
    if (handler != ((void*)0))
 xsltGenericError = handler;
    else
 xsltGenericError = xsltGenericErrorDefaultFunc;
}

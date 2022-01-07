
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlGenericErrorFunc ;


 int * xsltGenericDebug ;
 void* xsltGenericDebugContext ;
 int * xsltGenericDebugDefaultFunc ;

void
xsltSetGenericDebugFunc(void *ctx, xmlGenericErrorFunc handler) {
    xsltGenericDebugContext = ctx;
    if (handler != ((void*)0))
 xsltGenericDebug = handler;
    else
 xsltGenericDebug = xsltGenericDebugDefaultFunc;
}

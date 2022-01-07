
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xsltDocLoaderFunc ;


 int * xsltDocDefaultLoader ;
 int * xsltDocDefaultLoaderFunc ;

void
xsltSetLoaderFunc(xsltDocLoaderFunc f) {
    if (f == ((void*)0))
        xsltDocDefaultLoader = xsltDocDefaultLoaderFunc;
    else
        xsltDocDefaultLoader = f;
}

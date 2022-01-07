
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xsltSortFunc ;


 int * xsltDefaultSortFunction ;
 int * xsltSortFunction ;

void
xsltSetSortFunc(xsltSortFunc handler) {
    if (handler != ((void*)0))
 xsltSortFunction = handler;
    else
 xsltSortFunction = xsltDefaultSortFunction;
}

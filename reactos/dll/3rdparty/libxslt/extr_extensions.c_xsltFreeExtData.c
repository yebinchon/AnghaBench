
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xsltExtDataPtr ;


 int xmlFree (int *) ;

__attribute__((used)) static void
xsltFreeExtData(xsltExtDataPtr ext)
{
    if (ext == ((void*)0))
        return;
    xmlFree(ext);
}

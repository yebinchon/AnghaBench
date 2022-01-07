
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xsltLocaleChar ;
typedef int xsltLocale ;
typedef int xmlChar ;


 int CP_UTF8 ;
 size_t MultiByteToWideChar (int ,int ,char*,int,int *,size_t) ;
 int strxfrm_l (char*,char const*,size_t,int ) ;
 int xmlFree (int *) ;
 scalar_t__ xmlMalloc (size_t) ;
 int xsltTransformError (int *,int *,int *,char*) ;

xsltLocaleChar *
xsltStrxfrm(xsltLocale locale, const xmlChar *string)
{



    size_t xstrlen, r;
    xsltLocaleChar *xstr;
    if (r >= xstrlen) {
 xsltTransformError(((void*)0), ((void*)0), ((void*)0), "xsltStrxfrm : strxfrm failed\n");
        xmlFree(xstr);
        return(((void*)0));
    }

    return(xstr);

}

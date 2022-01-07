
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xsltLocaleChar ;
typedef int xsltLocale ;


 int CompareStringW (int ,int ,int const*,int,int const*,int) ;
 int xmlStrcmp (int const*,int const*) ;
 int xsltTransformError (int *,int *,int *,char*) ;

int
xsltLocaleStrcmp(xsltLocale locale, const xsltLocaleChar *str1, const xsltLocaleChar *str2) {
    (void)locale;
    return(xmlStrcmp(str1, str2));

}

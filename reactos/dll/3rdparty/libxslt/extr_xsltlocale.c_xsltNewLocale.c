
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xsltLocale ;
typedef char xmlChar ;


 scalar_t__ ISALPHA (char const) ;
 int LC_COLLATE_MASK ;
 void* TOLOWER (int ) ;
 void* TOUPPER (int ) ;
 int XSLTMAX_ISO3166CNTRYLEN ;
 int XSLTMAX_ISO639LANGLEN ;
 int XSLTMAX_LANGTAGLEN ;
 int memcpy (char*,char*,int) ;
 int * newlocale (int ,char*,int *) ;
 int strcpy (char*,char*) ;
 char* xsltDefaultRegion (char*) ;
 int xsltEnumSupportedLocales () ;
 int * xslt_locale_WINAPI (char*) ;

xsltLocale
xsltNewLocale(const xmlChar *languageTag) {
}

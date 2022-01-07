
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlChar ;


 scalar_t__ XSLT_DEFAULT_URL ;
 int xsltExtElementPreCompTest ;
 int xsltExtElementTest ;
 int xsltExtFunctionTest ;
 int xsltExtInitTest ;
 int xsltExtShutdownTest ;
 int xsltExtStyleInitTest ;
 int xsltExtStyleShutdownTest ;
 int xsltInitGlobals () ;
 int xsltRegisterExtModuleElement (int const*,int const*,int ,int ) ;
 int xsltRegisterExtModuleFull (int const*,int ,int ,int ,int ) ;
 int xsltRegisterExtModuleFunction (int const*,int const*,int ) ;

void
xsltRegisterTestModule(void)
{
    xsltInitGlobals();
    xsltRegisterExtModuleFull((const xmlChar *) XSLT_DEFAULT_URL,
                              xsltExtInitTest, xsltExtShutdownTest,
                              xsltExtStyleInitTest,
                              xsltExtStyleShutdownTest);
    xsltRegisterExtModuleFunction((const xmlChar *) "test",
                                  (const xmlChar *) XSLT_DEFAULT_URL,
                                  xsltExtFunctionTest);
    xsltRegisterExtModuleElement((const xmlChar *) "test",
                                 (const xmlChar *) XSLT_DEFAULT_URL,
                                 xsltExtElementPreCompTest,
                                 xsltExtElementTest);
}

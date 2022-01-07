
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlXPathContextPtr ;
typedef int xmlChar ;


 int xmlXPathRegisterFunc (int ,int const*,int ) ;
 int xsltCurrentFunction ;
 int xsltDocumentFunction ;
 int xsltElementAvailableFunction ;
 int xsltFormatNumberFunction ;
 int xsltFunctionAvailableFunction ;
 int xsltGenerateIdFunction ;
 int xsltKeyFunction ;
 int xsltSystemPropertyFunction ;
 int xsltUnparsedEntityURIFunction ;

void
xsltRegisterAllFunctions(xmlXPathContextPtr ctxt)
{
    xmlXPathRegisterFunc(ctxt, (const xmlChar *) "current",
                         xsltCurrentFunction);
    xmlXPathRegisterFunc(ctxt, (const xmlChar *) "document",
                         xsltDocumentFunction);
    xmlXPathRegisterFunc(ctxt, (const xmlChar *) "key", xsltKeyFunction);
    xmlXPathRegisterFunc(ctxt, (const xmlChar *) "unparsed-entity-uri",
                         xsltUnparsedEntityURIFunction);
    xmlXPathRegisterFunc(ctxt, (const xmlChar *) "format-number",
                         xsltFormatNumberFunction);
    xmlXPathRegisterFunc(ctxt, (const xmlChar *) "generate-id",
                         xsltGenerateIdFunction);
    xmlXPathRegisterFunc(ctxt, (const xmlChar *) "system-property",
                         xsltSystemPropertyFunction);
    xmlXPathRegisterFunc(ctxt, (const xmlChar *) "element-available",
                         xsltElementAvailableFunction);
    xmlXPathRegisterFunc(ctxt, (const xmlChar *) "function-available",
                         xsltFunctionAvailableFunction);
}

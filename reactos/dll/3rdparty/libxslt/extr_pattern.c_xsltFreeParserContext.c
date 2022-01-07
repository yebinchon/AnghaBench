
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xsltParserContextPtr ;
typedef int xsltParserContext ;


 int memset (int *,int,int) ;
 int xmlFree (int *) ;

__attribute__((used)) static void
xsltFreeParserContext(xsltParserContextPtr ctxt) {
    if (ctxt == ((void*)0))
 return;
    memset(ctxt, -1, sizeof(xsltParserContext));
    xmlFree(ctxt);
}

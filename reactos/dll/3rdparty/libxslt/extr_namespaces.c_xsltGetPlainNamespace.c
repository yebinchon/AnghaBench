
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xsltTransformContextPtr ;
typedef int xmlNsPtr ;
typedef int xmlNodePtr ;


 int xsltGetNamespace (int ,int ,int ,int ) ;

xmlNsPtr
xsltGetPlainNamespace(xsltTransformContextPtr ctxt, xmlNodePtr cur,
                      xmlNsPtr ns, xmlNodePtr out)
{
    return(xsltGetNamespace(ctxt, cur, ns, out));
}

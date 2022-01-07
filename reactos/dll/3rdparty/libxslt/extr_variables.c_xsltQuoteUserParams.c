
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xsltTransformContextPtr ;
typedef int xmlChar ;


 scalar_t__ xsltQuoteOneUserParam (int ,int const*,int const*) ;

int
xsltQuoteUserParams(xsltTransformContextPtr ctxt, const char **params) {
    int indx = 0;
    const xmlChar *name;
    const xmlChar *value;

    if (params == ((void*)0))
 return(0);
    while (params[indx] != ((void*)0)) {
 name = (const xmlChar *) params[indx++];
 value = (const xmlChar *) params[indx++];
 if (xsltQuoteOneUserParam(ctxt, name, value) != 0)
     return(-1);
    }
    return 0;
}

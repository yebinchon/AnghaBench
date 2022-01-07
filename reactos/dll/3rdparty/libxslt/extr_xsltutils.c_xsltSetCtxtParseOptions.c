
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
struct TYPE_3__ {int parserOptions; int xinclude; } ;


 int XML_PARSE_XINCLUDE ;

int
xsltSetCtxtParseOptions(xsltTransformContextPtr ctxt, int options)
{
    int oldopts;

    if (ctxt == ((void*)0))
        return(-1);
    oldopts = ctxt->parserOptions;
    if (ctxt->xinclude)
        oldopts |= XML_PARSE_XINCLUDE;
    ctxt->parserOptions = options;
    if (options & XML_PARSE_XINCLUDE)
        ctxt->xinclude = 1;
    else
        ctxt->xinclude = 0;
    return(oldopts);
}

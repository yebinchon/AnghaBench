
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xsltTransformContextPtr ;


 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;

int
xsltExtensionInstructionResultFinalize(xsltTransformContextPtr ctxt)
{
    xmlGenericError(xmlGenericErrorContext,
            "xsltExtensionInstructionResultFinalize is unsupported "
            "in this release of libxslt.\n");
    return(-1);
}

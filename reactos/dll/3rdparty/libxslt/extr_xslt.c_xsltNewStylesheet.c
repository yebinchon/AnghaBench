
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef int xsltStylesheet ;
struct TYPE_5__ {int omitXmlDeclaration; int standalone; int indent; int internalized; int dict; scalar_t__ forwards_compatible; scalar_t__ literal_result; scalar_t__ extrasNr; int * extInfos; int * exclPrefixTab; scalar_t__ exclPrefixMax; scalar_t__ exclPrefixNr; scalar_t__ warnings; scalar_t__ errors; int decimalFormat; } ;


 int memset (TYPE_1__*,int ,int) ;
 int xmlDictCreate () ;
 scalar_t__ xmlMalloc (int) ;
 int xsltFreeStylesheet (TYPE_1__*) ;
 int xsltGenericDebug (int ,char*) ;
 int xsltGenericDebugContext ;
 int xsltInit () ;
 int xsltNewDecimalFormat (int *,int *) ;
 int xsltTransformError (int *,int *,int *,char*) ;

xsltStylesheetPtr
xsltNewStylesheet(void) {
    xsltStylesheetPtr ret = ((void*)0);

    ret = (xsltStylesheetPtr) xmlMalloc(sizeof(xsltStylesheet));
    if (ret == ((void*)0)) {
 xsltTransformError(((void*)0), ((void*)0), ((void*)0),
  "xsltNewStylesheet : malloc failed\n");
 goto internal_err;
    }
    memset(ret, 0, sizeof(xsltStylesheet));

    ret->omitXmlDeclaration = -1;
    ret->standalone = -1;
    ret->decimalFormat = xsltNewDecimalFormat(((void*)0), ((void*)0));
    ret->indent = -1;
    ret->errors = 0;
    ret->warnings = 0;
    ret->exclPrefixNr = 0;
    ret->exclPrefixMax = 0;
    ret->exclPrefixTab = ((void*)0);
    ret->extInfos = ((void*)0);
    ret->extrasNr = 0;
    ret->internalized = 1;
    ret->literal_result = 0;
    ret->forwards_compatible = 0;
    ret->dict = xmlDictCreate();





    xsltInit();

    return(ret);

internal_err:
    if (ret != ((void*)0))
 xsltFreeStylesheet(ret);
    return(((void*)0));
}

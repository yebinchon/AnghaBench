
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef TYPE_2__* xsltStylesheetPtr ;
typedef int * xsltDecimalFormatPtr ;
typedef int xmlXPathParserContextPtr ;
typedef TYPE_3__* xmlXPathObjectPtr ;
typedef TYPE_4__* xmlNsPtr ;
typedef int xmlChar ;
struct TYPE_16__ {int * href; } ;
struct TYPE_15__ {int floatval; int stringval; } ;
struct TYPE_14__ {int errors; int dict; int * decimalFormat; } ;
struct TYPE_13__ {TYPE_10__* inst; TYPE_2__* style; } ;
struct TYPE_12__ {int doc; } ;


 int CAST_TO_NUMBER ;
 int CAST_TO_STRING ;
 scalar_t__ XPATH_EXPRESSION_OK ;
 int XPATH_INVALID_ARITY ;
 int XP_ERROR (int ) ;
 TYPE_3__* valuePop (int ) ;
 int valuePush (int ,int ) ;
 int xmlFree (int *) ;
 TYPE_4__* xmlSearchNs (int ,TYPE_10__*,int const*) ;
 int xmlXPathFreeObject (TYPE_3__*) ;
 int xmlXPathNewString (int *) ;
 int * xsltDecimalFormatGetByQName (TYPE_2__*,int const*,int const*) ;
 scalar_t__ xsltFormatNumberConversion (int *,int ,int ,int **) ;
 int * xsltSplitQName (int ,int ,int const**) ;
 int xsltTransformError (TYPE_1__*,int *,int *,char*,int ,...) ;
 TYPE_1__* xsltXPathGetTransformContext (int ) ;

void
xsltFormatNumberFunction(xmlXPathParserContextPtr ctxt, int nargs)
{
    xmlXPathObjectPtr numberObj = ((void*)0);
    xmlXPathObjectPtr formatObj = ((void*)0);
    xmlXPathObjectPtr decimalObj = ((void*)0);
    xsltStylesheetPtr sheet;
    xsltDecimalFormatPtr formatValues = ((void*)0);
    xmlChar *result;
    const xmlChar *ncname;
    const xmlChar *prefix = ((void*)0);
    const xmlChar *nsUri = ((void*)0);
    xsltTransformContextPtr tctxt;

    tctxt = xsltXPathGetTransformContext(ctxt);
    if ((tctxt == ((void*)0)) || (tctxt->inst == ((void*)0)))
 return;
    sheet = tctxt->style;
    if (sheet == ((void*)0))
 return;
    formatValues = sheet->decimalFormat;

    switch (nargs) {
    case 3:
 CAST_TO_STRING;
 decimalObj = valuePop(ctxt);
        ncname = xsltSplitQName(sheet->dict, decimalObj->stringval, &prefix);
        if (prefix != ((void*)0)) {
            xmlNsPtr ns = xmlSearchNs(tctxt->inst->doc, tctxt->inst, prefix);
            if (ns == ((void*)0)) {
                xsltTransformError(tctxt, ((void*)0), ((void*)0),
                    "format-number : No namespace found for QName '%s:%s'\n",
                    prefix, ncname);
                sheet->errors++;
                ncname = ((void*)0);
            }
            else {
                nsUri = ns->href;
            }
        }
        if (ncname != ((void*)0)) {
     formatValues = xsltDecimalFormatGetByQName(sheet, nsUri, ncname);
        }
 if (formatValues == ((void*)0)) {
     xsltTransformError(tctxt, ((void*)0), ((void*)0),
      "format-number() : undeclared decimal format '%s'\n",
      decimalObj->stringval);
 }

    case 2:
 CAST_TO_STRING;
 formatObj = valuePop(ctxt);
 CAST_TO_NUMBER;
 numberObj = valuePop(ctxt);
 break;
    default:
 XP_ERROR(XPATH_INVALID_ARITY);
    }

    if (formatValues != ((void*)0)) {
 if (xsltFormatNumberConversion(formatValues,
           formatObj->stringval,
           numberObj->floatval,
           &result) == XPATH_EXPRESSION_OK) {
     valuePush(ctxt, xmlXPathNewString(result));
     xmlFree(result);
 }
    }

    xmlXPathFreeObject(numberObj);
    xmlXPathFreeObject(formatObj);
    xmlXPathFreeObject(decimalObj);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef TYPE_2__* xsltTransformContextPtr ;
typedef TYPE_3__* xsltNumberDataPtr ;
struct TYPE_17__ {int nTokens; TYPE_1__* tokens; int * end; int * start; } ;
typedef TYPE_4__ xsltFormat ;
typedef int xmlNodePtr ;
typedef int xmlChar ;
typedef int * xmlBufferPtr ;
typedef int numarray ;
struct TYPE_16__ {scalar_t__ has_format; int fromPat; int countPat; scalar_t__ level; scalar_t__ value; int node; int * format; } ;
struct TYPE_15__ {int insert; int xpathCtxt; } ;
struct TYPE_14__ {int * separator; } ;


 int XSLT_NAMESPACE ;
 int xmlBufferContent (int *) ;
 int * xmlBufferCreate () ;
 int xmlBufferFree (int *) ;
 int xmlFree (int *) ;
 scalar_t__ xmlStrEqual (scalar_t__,int const*) ;
 int xsltCopyTextString (TYPE_2__*,int ,int ,int ) ;
 int * xsltEvalAttrValueTemplate (TYPE_2__*,int ,int const*,int ) ;
 int xsltNumberFormatGetAnyLevel (TYPE_2__*,int ,int ,int ,double*) ;
 int xsltNumberFormatGetMultipleLevel (TYPE_2__*,int ,int ,int ,double*,int) ;
 int xsltNumberFormatGetValue (int ,int ,scalar_t__,double*) ;
 int xsltNumberFormatInsertNumbers (TYPE_3__*,double*,int,TYPE_4__*,int *) ;
 int xsltNumberFormatTokenize (int *,TYPE_4__*) ;

void
xsltNumberFormat(xsltTransformContextPtr ctxt,
   xsltNumberDataPtr data,
   xmlNodePtr node)
{
    xmlBufferPtr output = ((void*)0);
    int amount, i;
    double number;
    xsltFormat tokens;

    if (data->format != ((void*)0)) {
        xsltNumberFormatTokenize(data->format, &tokens);
    }
    else {
        xmlChar *format;


        if (data->has_format == 0)
            return;
 format = xsltEvalAttrValueTemplate(ctxt, data->node,
          (const xmlChar *) "format",
          XSLT_NAMESPACE);
        if (format == ((void*)0))
            return;
        xsltNumberFormatTokenize(format, &tokens);
 xmlFree(format);
    }

    output = xmlBufferCreate();
    if (output == ((void*)0))
 goto XSLT_NUMBER_FORMAT_END;




    if (data->value) {
 amount = xsltNumberFormatGetValue(ctxt->xpathCtxt,
       node,
       data->value,
       &number);
 if (amount == 1) {
     xsltNumberFormatInsertNumbers(data,
       &number,
       1,
       &tokens,
       output);
 }

    } else if (data->level) {

 if (xmlStrEqual(data->level, (const xmlChar *) "single")) {
     amount = xsltNumberFormatGetMultipleLevel(ctxt,
            node,
            data->countPat,
            data->fromPat,
            &number,
            1);
     if (amount == 1) {
  xsltNumberFormatInsertNumbers(data,
           &number,
           1,
           &tokens,
           output);
     }
 } else if (xmlStrEqual(data->level, (const xmlChar *) "multiple")) {
     double numarray[1024];
     int max = sizeof(numarray)/sizeof(numarray[0]);
     amount = xsltNumberFormatGetMultipleLevel(ctxt,
            node,
            data->countPat,
            data->fromPat,
            numarray,
            max);
     if (amount > 0) {
  xsltNumberFormatInsertNumbers(data,
           numarray,
           amount,
           &tokens,
           output);
     }
 } else if (xmlStrEqual(data->level, (const xmlChar *) "any")) {
     amount = xsltNumberFormatGetAnyLevel(ctxt,
       node,
       data->countPat,
       data->fromPat,
       &number);
     if (amount > 0) {
  xsltNumberFormatInsertNumbers(data,
           &number,
           1,
           &tokens,
           output);
     }
 }
    }

    xsltCopyTextString(ctxt, ctxt->insert, xmlBufferContent(output), 0);

    xmlBufferFree(output);

XSLT_NUMBER_FORMAT_END:
    if (tokens.start != ((void*)0))
 xmlFree(tokens.start);
    if (tokens.end != ((void*)0))
 xmlFree(tokens.end);
    for (i = 0;i < tokens.nTokens;i++) {
 if (tokens.tokens[i].separator != ((void*)0))
     xmlFree(tokens.tokens[i].separator);
    }
}

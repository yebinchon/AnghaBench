
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_13__ ;


typedef TYPE_2__* xsltTransformContextPtr ;
typedef int xsltTransformContext ;
typedef int xsltTemplatePtr ;
typedef TYPE_3__* xsltStylesheetPtr ;
typedef int xsltStackElemPtr ;
typedef TYPE_4__* xsltRuntimeExtraPtr ;
typedef int xsltRuntimeExtra ;
typedef TYPE_5__* xsltDocumentPtr ;
typedef int xmlNodePtr ;
typedef scalar_t__ xmlDocPtr ;
struct TYPE_23__ {int main; } ;
struct TYPE_19__ {int * ptr; } ;
struct TYPE_22__ {TYPE_1__ val; int * deallocate; int * info; } ;
struct TYPE_21__ {scalar_t__ extrasNr; int nsHash; scalar_t__ internalized; int dict; } ;
struct TYPE_20__ {int internalized; int templMax; int varsMax; int extrasMax; int extrasNr; unsigned long* traceCode; scalar_t__ keyInitLevel; int xinclude; scalar_t__ debugStatus; int sec; int * outputFile; int * inst; TYPE_5__* document; int parserOptions; TYPE_13__* xpathCtxt; TYPE_4__* extras; TYPE_3__* style; scalar_t__ prof; scalar_t__ profMax; scalar_t__ profNr; int * profTab; int maxTemplateVars; scalar_t__ varsBase; int * vars; scalar_t__ varsNr; int * varsTab; int maxTemplateDepth; int * templ; scalar_t__ templNr; int * templTab; int * dict; int * cache; } ;
struct TYPE_18__ {int nsHash; } ;


 scalar_t__ XSLT_DEBUG_NONE ;
 int XSLT_PARSE_OPTIONS ;
 int XSLT_REGISTER_FUNCTION_LOOKUP (TYPE_2__*) ;
 int XSLT_REGISTER_VARIABLE_LOOKUP (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;
 int * xmlDictCreateSub (int ) ;
 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;
 scalar_t__ xmlMalloc (int) ;
 int xmlXPathContextSetCache (TYPE_13__*,int,int,int ) ;
 int xmlXPathInit () ;
 TYPE_13__* xmlXPathNewContext (scalar_t__) ;
 int xmlXPathOrderDocElems (scalar_t__) ;
 scalar_t__ xslDebugStatus ;
 int xsltDefaultTrace ;
 int xsltFreeTransformContext (TYPE_2__*) ;
 int xsltGenericDebug (int ,char*) ;
 int xsltGenericDebugContext ;
 int xsltGetDefaultSecurityPrefs () ;
 int xsltGetXIncludeDefault () ;
 int xsltInitCtxtExts (TYPE_2__*) ;
 int xsltInitGlobals () ;
 int xsltMaxDepth ;
 int xsltMaxVars ;
 TYPE_5__* xsltNewDocument (TYPE_2__*,scalar_t__) ;
 int * xsltTransformCacheCreate () ;
 int xsltTransformError (TYPE_2__*,int *,int ,char*) ;

xsltTransformContextPtr
xsltNewTransformContext(xsltStylesheetPtr style, xmlDocPtr doc) {
    xsltTransformContextPtr cur;
    xsltDocumentPtr docu;
    int i;

    xsltInitGlobals();

    cur = (xsltTransformContextPtr) xmlMalloc(sizeof(xsltTransformContext));
    if (cur == ((void*)0)) {
 xsltTransformError(((void*)0), ((void*)0), (xmlNodePtr)doc,
  "xsltNewTransformContext : malloc failed\n");
 return(((void*)0));
    }
    memset(cur, 0, sizeof(xsltTransformContext));

    cur->cache = xsltTransformCacheCreate();
    if (cur->cache == ((void*)0))
 goto internal_err;




    cur->dict = xmlDictCreateSub(style->dict);
    cur->internalized = ((style->internalized) && (cur->dict != ((void*)0)));
    cur->templTab = (xsltTemplatePtr *)
         xmlMalloc(10 * sizeof(xsltTemplatePtr));
    if (cur->templTab == ((void*)0)) {
 xsltTransformError(((void*)0), ((void*)0), (xmlNodePtr) doc,
  "xsltNewTransformContext: out of memory\n");
 goto internal_err;
    }
    cur->templNr = 0;
    cur->templMax = 5;
    cur->templ = ((void*)0);
    cur->maxTemplateDepth = xsltMaxDepth;




    cur->varsTab = (xsltStackElemPtr *)
         xmlMalloc(10 * sizeof(xsltStackElemPtr));
    if (cur->varsTab == ((void*)0)) {
        xmlGenericError(xmlGenericErrorContext,
  "xsltNewTransformContext: out of memory\n");
 goto internal_err;
    }
    cur->varsNr = 0;
    cur->varsMax = 10;
    cur->vars = ((void*)0);
    cur->varsBase = 0;
    cur->maxTemplateVars = xsltMaxVars;




    cur->profTab = ((void*)0);
    cur->profNr = 0;
    cur->profMax = 0;
    cur->prof = 0;

    cur->style = style;
    xmlXPathInit();
    cur->xpathCtxt = xmlXPathNewContext(doc);
    if (cur->xpathCtxt == ((void*)0)) {
 xsltTransformError(((void*)0), ((void*)0), (xmlNodePtr) doc,
  "xsltNewTransformContext : xmlXPathNewContext failed\n");
 goto internal_err;
    }



    if (xmlXPathContextSetCache(cur->xpathCtxt, 1, -1, 0) == -1)
 goto internal_err;



    if (style->extrasNr != 0) {
 cur->extrasMax = style->extrasNr + 20;
 cur->extras = (xsltRuntimeExtraPtr)
     xmlMalloc(cur->extrasMax * sizeof(xsltRuntimeExtra));
 if (cur->extras == ((void*)0)) {
     xmlGenericError(xmlGenericErrorContext,
      "xsltNewTransformContext: out of memory\n");
     goto internal_err;
 }
 cur->extrasNr = style->extrasNr;
 for (i = 0;i < cur->extrasMax;i++) {
     cur->extras[i].info = ((void*)0);
     cur->extras[i].deallocate = ((void*)0);
     cur->extras[i].val.ptr = ((void*)0);
 }
    } else {
 cur->extras = ((void*)0);
 cur->extrasNr = 0;
 cur->extrasMax = 0;
    }

    XSLT_REGISTER_VARIABLE_LOOKUP(cur);
    XSLT_REGISTER_FUNCTION_LOOKUP(cur);
    cur->xpathCtxt->nsHash = style->nsHash;



    xsltInitCtxtExts(cur);




    if (xslDebugStatus == XSLT_DEBUG_NONE)
        xmlXPathOrderDocElems(doc);




    cur->parserOptions = XSLT_PARSE_OPTIONS;
    docu = xsltNewDocument(cur, doc);
    if (docu == ((void*)0)) {
 xsltTransformError(cur, ((void*)0), (xmlNodePtr)doc,
  "xsltNewTransformContext : xsltNewDocument failed\n");
 goto internal_err;
    }
    docu->main = 1;
    cur->document = docu;
    cur->inst = ((void*)0);
    cur->outputFile = ((void*)0);
    cur->sec = xsltGetDefaultSecurityPrefs();
    cur->debugStatus = xslDebugStatus;
    cur->traceCode = (unsigned long*) &xsltDefaultTrace;
    cur->xinclude = xsltGetXIncludeDefault();
    cur->keyInitLevel = 0;

    return(cur);

internal_err:
    if (cur != ((void*)0))
 xsltFreeTransformContext(cur);
    return(((void*)0));
}

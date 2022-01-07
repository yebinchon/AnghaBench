
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef TYPE_2__* xsltTransformContextPtr ;
typedef TYPE_3__* xsltStylesheetPtr ;
typedef TYPE_4__* xsltStackElemPtr ;
typedef int * xmlXPathObjectPtr ;
typedef TYPE_5__* xmlXPathContextPtr ;
typedef int * xmlXPathCompExprPtr ;
typedef TYPE_6__* xmlNsPtr ;
typedef int xmlNodePtr ;
typedef int xmlDocPtr ;
typedef char xmlChar ;
struct TYPE_23__ {char* href; } ;
struct TYPE_22__ {int proximityPosition; int contextSize; int nsNr; TYPE_6__** namespaces; int node; int doc; } ;
struct TYPE_21__ {char const* name; char const* nameURI; int computed; int * value; int * tree; void* select; struct TYPE_21__* next; TYPE_1__* comp; } ;
struct TYPE_20__ {TYPE_4__* variables; int doc; } ;
struct TYPE_19__ {int * globalVars; int dict; int state; int initialContextNode; int initialContextDoc; TYPE_5__* xpathCtxt; TYPE_3__* style; } ;
struct TYPE_18__ {scalar_t__ type; } ;
typedef int FILE ;


 scalar_t__ XSLT_FUNC_VARIABLE ;
 int XSLT_STATE_STOPPED ;
 int XSLT_TRACE (TYPE_2__*,int ,int ) ;
 int XSLT_TRACE_VARIABLES ;
 scalar_t__ stderr ;
 scalar_t__ stdout ;
 void* xmlDictLookup (int ,char const*,int) ;
 int xmlDocGetRootElement (int ) ;
 int xmlHashAddEntry2 (int *,char const*,char const*,TYPE_4__*) ;
 int * xmlHashCreate (int) ;
 void* xmlHashLookup2 (int *,char const*,char const*) ;
 TYPE_6__* xmlSearchNs (int ,int ,char const*) ;
 scalar_t__ xmlStrEqual (char const*,char const*) ;
 int * xmlXPathCompile (char const*) ;
 int * xmlXPathCompiledEval (int *,TYPE_5__*) ;
 int xmlXPathDebugDumpObject (int *,int *,int ) ;
 int xmlXPathFreeCompExpr (int *) ;
 int * xmlXPathNewString (char const*) ;
 int xsltFreeStackElem (TYPE_4__*) ;
 int xsltGenericDebug (scalar_t__,char*,char const*,char const*) ;
 scalar_t__ xsltGenericDebugContext ;
 TYPE_4__* xsltNewStackElem (int *) ;
 TYPE_3__* xsltNextImport (TYPE_3__*) ;
 char* xsltSplitQName (int ,char const*,char const**) ;
 int xsltTransformError (TYPE_2__*,TYPE_3__*,int *,char*,char const*) ;

__attribute__((used)) static
int
xsltProcessUserParamInternal(xsltTransformContextPtr ctxt,
               const xmlChar * name,
        const xmlChar * value,
        int eval) {

    xsltStylesheetPtr style;
    const xmlChar *prefix;
    const xmlChar *href;
    xmlXPathCompExprPtr xpExpr;
    xmlXPathObjectPtr result;

    xsltStackElemPtr elem;
    int res;
    void *res_ptr;

    if (ctxt == ((void*)0))
 return(-1);
    if (name == ((void*)0))
 return(0);
    if (value == ((void*)0))
 return(0);

    style = ctxt->style;
    href = ((void*)0);

    if (name[0] == '{') {
        int len = 0;

        while ((name[len] != 0) && (name[len] != '}')) len++;
        if (name[len] == 0) {
           xsltTransformError(ctxt, style, ((void*)0),
           "user param : malformed parameter name : %s\n", name);
        } else {
           href = xmlDictLookup(ctxt->dict, &name[1], len-1);
           name = xmlDictLookup(ctxt->dict, &name[len + 1], -1);
       }
    }
    else {
        name = xsltSplitQName(ctxt->dict, name, &prefix);
        if (prefix != ((void*)0)) {
            xmlNsPtr ns;

            ns = xmlSearchNs(style->doc, xmlDocGetRootElement(style->doc),
                             prefix);
            if (ns == ((void*)0)) {
                xsltTransformError(ctxt, style, ((void*)0),
                "user param : no namespace bound to prefix %s\n", prefix);
                href = ((void*)0);
            } else {
                href = ns->href;
            }
        }
    }

    if (name == ((void*)0))
 return (-1);

    res_ptr = xmlHashLookup2(ctxt->globalVars, name, href);
    if (res_ptr != 0) {
 xsltTransformError(ctxt, style, ((void*)0),
     "Global parameter %s already defined\n", name);
    }
    if (ctxt->globalVars == ((void*)0))
 ctxt->globalVars = xmlHashCreate(20);




    while (style != ((void*)0)) {
        elem = ctxt->style->variables;
 while (elem != ((void*)0)) {
     if ((elem->comp != ((void*)0)) &&
         (elem->comp->type == XSLT_FUNC_VARIABLE) &&
  (xmlStrEqual(elem->name, name)) &&
  (xmlStrEqual(elem->nameURI, href))) {
  return(0);
     }
            elem = elem->next;
 }
        style = xsltNextImport(style);
    }
    style = ctxt->style;
    elem = ((void*)0);





    result = ((void*)0);
    if (eval != 0) {
        xpExpr = xmlXPathCompile(value);
 if (xpExpr != ((void*)0)) {
     xmlDocPtr oldXPDoc;
     xmlNodePtr oldXPContextNode;
     int oldXPProximityPosition, oldXPContextSize, oldXPNsNr;
     xmlNsPtr *oldXPNamespaces;
     xmlXPathContextPtr xpctxt = ctxt->xpathCtxt;




     oldXPDoc = xpctxt->doc;
     oldXPContextNode = xpctxt->node;
     oldXPProximityPosition = xpctxt->proximityPosition;
     oldXPContextSize = xpctxt->contextSize;
     oldXPNamespaces = xpctxt->namespaces;
     oldXPNsNr = xpctxt->nsNr;
     xpctxt->doc = ctxt->initialContextDoc;
     xpctxt->node = ctxt->initialContextNode;
     xpctxt->contextSize = 1;
     xpctxt->proximityPosition = 1;




     xpctxt->namespaces = ((void*)0);
     xpctxt->nsNr = 0;

     result = xmlXPathCompiledEval(xpExpr, xpctxt);




     xpctxt->doc = oldXPDoc;
     xpctxt->node = oldXPContextNode;
     xpctxt->contextSize = oldXPContextSize;
     xpctxt->proximityPosition = oldXPProximityPosition;
     xpctxt->namespaces = oldXPNamespaces;
     xpctxt->nsNr = oldXPNsNr;

     xmlXPathFreeCompExpr(xpExpr);
 }
 if (result == ((void*)0)) {
     xsltTransformError(ctxt, style, ((void*)0),
  "Evaluating user parameter %s failed\n", name);
     ctxt->state = XSLT_STATE_STOPPED;
     return(-1);
 }
    }
    elem = xsltNewStackElem(((void*)0));
    if (elem != ((void*)0)) {
 elem->name = name;
 elem->select = xmlDictLookup(ctxt->dict, value, -1);
 if (href != ((void*)0))
     elem->nameURI = xmlDictLookup(ctxt->dict, href, -1);
 elem->tree = ((void*)0);
 elem->computed = 1;
 if (eval == 0) {
     elem->value = xmlXPathNewString(value);
 }
 else {
     elem->value = result;
 }
    }





    res = xmlHashAddEntry2(ctxt->globalVars, name, href, elem);
    if (res != 0) {
 xsltFreeStackElem(elem);
 xsltTransformError(ctxt, style, ((void*)0),
     "Global parameter %s already defined\n", name);
    }
    return(0);
}

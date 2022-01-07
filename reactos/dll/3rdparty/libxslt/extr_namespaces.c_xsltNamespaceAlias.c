
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef TYPE_2__* xsltNsAliasPtr ;
typedef TYPE_3__* xmlNsPtr ;
typedef TYPE_4__* xmlNodePtr ;
typedef int xmlHashTablePtr ;
typedef int xmlChar ;
struct TYPE_20__ {int hasNsAliases; } ;
struct TYPE_19__ {int doc; } ;
struct TYPE_18__ {int * href; } ;
struct TYPE_17__ {TYPE_3__* targetNs; TYPE_3__* literalNs; } ;
struct TYPE_16__ {int * nsAliases; int * defaultAlias; } ;


 int * UNDEFINED_DEFAULT_NS ;
 TYPE_8__* XSLT_CCTXT (TYPE_1__*) ;
 int xmlFree (int *) ;
 int * xmlGetNsProp (TYPE_4__*,int const*,int *) ;
 int xmlHashAddEntry (int ,int const*,void*) ;
 int * xmlHashCreate (int) ;
 TYPE_3__* xmlSearchNs (int ,TYPE_4__*,int *) ;
 scalar_t__ xmlStrEqual (int *,int const*) ;
 TYPE_2__* xsltNewNsAlias (TYPE_8__*) ;
 int xsltTransformError (int *,TYPE_1__*,TYPE_4__*,char*,...) ;

void
xsltNamespaceAlias(xsltStylesheetPtr style, xmlNodePtr node)
{
    xmlChar *resultPrefix = ((void*)0);
    xmlChar *stylePrefix = ((void*)0);
    xmlNsPtr literalNs = ((void*)0);
    xmlNsPtr targetNs = ((void*)0);
    const xmlChar *literalNsName;
    const xmlChar *targetNsName;


    if ((style == ((void*)0)) || (node == ((void*)0)))
 return;

    stylePrefix = xmlGetNsProp(node, (const xmlChar *)"stylesheet-prefix", ((void*)0));
    if (stylePrefix == ((void*)0)) {
 xsltTransformError(((void*)0), style, node,
     "namespace-alias: stylesheet-prefix attribute missing\n");
 return;
    }
    resultPrefix = xmlGetNsProp(node, (const xmlChar *)"result-prefix", ((void*)0));
    if (resultPrefix == ((void*)0)) {
 xsltTransformError(((void*)0), style, node,
     "namespace-alias: result-prefix attribute missing\n");
 goto error;
    }

    if (xmlStrEqual(stylePrefix, (const xmlChar *)"#default")) {
 literalNs = xmlSearchNs(node->doc, node, ((void*)0));
 if (literalNs == ((void*)0)) {
     literalNsName = ((void*)0);
 } else
     literalNsName = literalNs->href;
    } else {
 literalNs = xmlSearchNs(node->doc, node, stylePrefix);

 if ((literalNs == ((void*)0)) || (literalNs->href == ((void*)0))) {
     xsltTransformError(((void*)0), style, node,
         "namespace-alias: prefix %s not bound to any namespace\n",
     stylePrefix);
     goto error;
 } else
     literalNsName = literalNs->href;
    }






    if (xmlStrEqual(resultPrefix, (const xmlChar *)"#default")) {
 targetNs = xmlSearchNs(node->doc, node, ((void*)0));
 if (targetNs == ((void*)0)) {
     targetNsName = UNDEFINED_DEFAULT_NS;
 } else
     targetNsName = targetNs->href;
    } else {
 targetNs = xmlSearchNs(node->doc, node, resultPrefix);

        if ((targetNs == ((void*)0)) || (targetNs->href == ((void*)0))) {
     xsltTransformError(((void*)0), style, node,
         "namespace-alias: prefix %s not bound to any namespace\n",
     resultPrefix);
     goto error;
 } else
     targetNsName = targetNs->href;
    }





    if (literalNsName == ((void*)0)) {
        if (targetNs != ((void*)0)) {
            style->defaultAlias = targetNs->href;
 }
    } else {
        if (style->nsAliases == ((void*)0))
     style->nsAliases = xmlHashCreate(10);
        if (style->nsAliases == ((void*)0)) {
     xsltTransformError(((void*)0), style, node,
         "namespace-alias: cannot create hash table\n");
     goto error;
        }
 xmlHashAddEntry((xmlHashTablePtr) style->nsAliases,
     literalNsName, (void *) targetNsName);
    }


error:
    if (stylePrefix != ((void*)0))
 xmlFree(stylePrefix);
    if (resultPrefix != ((void*)0))
 xmlFree(resultPrefix);
}

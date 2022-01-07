
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef TYPE_2__* xsltStylePreCompPtr ;
typedef int xsltStyleItemSortPtr ;
typedef int xsltLocaleChar ;
typedef scalar_t__ xsltLocale ;
typedef TYPE_3__* xmlXPathObjectPtr ;
typedef TYPE_4__* xmlNodeSetPtr ;
typedef TYPE_5__* xmlNodePtr ;
typedef int xmlChar ;
struct TYPE_21__ {TYPE_2__* psvi; } ;
struct TYPE_20__ {int nodeNr; TYPE_5__** nodeTab; } ;
struct TYPE_19__ {scalar_t__ floatval; scalar_t__ index; scalar_t__ stringval; } ;
struct TYPE_18__ {scalar_t__ has_stype; int number; scalar_t__ has_order; int descending; scalar_t__ locale; int * order; int * stype; } ;
struct TYPE_17__ {TYPE_4__* nodeList; } ;


 int XSLT_MAX_SORT ;
 int XSLT_NAMESPACE ;
 int xmlFree (TYPE_3__**) ;
 scalar_t__ xmlStrEqual (int *,int const*) ;
 int xmlStrcmp (scalar_t__,scalar_t__) ;
 int xmlXPathFreeObject (TYPE_3__*) ;
 scalar_t__ xmlXPathIsNaN (scalar_t__) ;
 TYPE_3__** xsltComputeSortResult (TYPE_1__*,TYPE_5__*) ;
 void* xsltEvalAttrValueTemplate (TYPE_1__*,TYPE_5__*,int const*,int ) ;
 int xsltLocaleStrcmp (scalar_t__,int *,int *) ;
 int xsltTransformError (TYPE_1__*,int *,TYPE_5__*,char*,int *) ;

void
xsltDefaultSortFunction(xsltTransformContextPtr ctxt, xmlNodePtr *sorts,
            int nbsorts) {



    xsltStylePreCompPtr comp;

    xmlXPathObjectPtr *resultsTab[XSLT_MAX_SORT];
    xmlXPathObjectPtr *results = ((void*)0), *res;
    xmlNodeSetPtr list = ((void*)0);
    int descending, number, desc, numb;
    int len = 0;
    int i, j, incr;
    int tst;
    int depth;
    xmlNodePtr node;
    xmlXPathObjectPtr tmp;
    int tempstype[XSLT_MAX_SORT], temporder[XSLT_MAX_SORT];

    if ((ctxt == ((void*)0)) || (sorts == ((void*)0)) || (nbsorts <= 0) ||
 (nbsorts >= XSLT_MAX_SORT))
 return;
    if (sorts[0] == ((void*)0))
 return;
    comp = sorts[0]->psvi;
    if (comp == ((void*)0))
 return;

    list = ctxt->nodeList;
    if ((list == ((void*)0)) || (list->nodeNr <= 1))
 return;

    for (j = 0; j < nbsorts; j++) {
 comp = sorts[j]->psvi;
 tempstype[j] = 0;
 if ((comp->stype == ((void*)0)) && (comp->has_stype != 0)) {
     comp->stype =
  xsltEvalAttrValueTemplate(ctxt, sorts[j],
       (const xmlChar *) "data-type",
       XSLT_NAMESPACE);
     if (comp->stype != ((void*)0)) {
  tempstype[j] = 1;
  if (xmlStrEqual(comp->stype, (const xmlChar *) "text"))
      comp->number = 0;
  else if (xmlStrEqual(comp->stype, (const xmlChar *) "number"))
      comp->number = 1;
  else {
      xsltTransformError(ctxt, ((void*)0), sorts[j],
     "xsltDoSortFunction: no support for data-type = %s\n",
         comp->stype);
      comp->number = 0;
  }
     }
 }
 temporder[j] = 0;
 if ((comp->order == ((void*)0)) && (comp->has_order != 0)) {
     comp->order = xsltEvalAttrValueTemplate(ctxt, sorts[j],
          (const xmlChar *) "order",
          XSLT_NAMESPACE);
     if (comp->order != ((void*)0)) {
  temporder[j] = 1;
  if (xmlStrEqual(comp->order, (const xmlChar *) "ascending"))
      comp->descending = 0;
  else if (xmlStrEqual(comp->order,
         (const xmlChar *) "descending"))
      comp->descending = 1;
  else {
      xsltTransformError(ctxt, ((void*)0), sorts[j],
        "xsltDoSortFunction: invalid value %s for order\n",
         comp->order);
      comp->descending = 0;
  }
     }
 }
    }

    len = list->nodeNr;

    resultsTab[0] = xsltComputeSortResult(ctxt, sorts[0]);
    for (i = 1;i < XSLT_MAX_SORT;i++)
 resultsTab[i] = ((void*)0);

    results = resultsTab[0];

    comp = sorts[0]->psvi;
    descending = comp->descending;
    number = comp->number;
    if (results == ((void*)0))
 return;


    for (incr = len / 2; incr > 0; incr /= 2) {
 for (i = incr; i < len; i++) {
     j = i - incr;
     if (results[i] == ((void*)0))
  continue;

     while (j >= 0) {
  if (results[j] == ((void*)0))
      tst = 1;
  else {
      if (number) {


   if (xmlXPathIsNaN(results[j]->floatval)) {
       if (xmlXPathIsNaN(results[j + incr]->floatval))
    tst = 0;
       else
    tst = -1;
   } else if (xmlXPathIsNaN(results[j + incr]->floatval))
       tst = 1;
   else if (results[j]->floatval ==
    results[j + incr]->floatval)
       tst = 0;
   else if (results[j]->floatval >
    results[j + incr]->floatval)
       tst = 1;
   else tst = -1;
      } else if(comp->locale != (xsltLocale)0) {
   tst = xsltLocaleStrcmp(
       comp->locale,
       (xsltLocaleChar *) results[j]->stringval,
       (xsltLocaleChar *) results[j + incr]->stringval);
      } else {
   tst = xmlStrcmp(results[j]->stringval,
         results[j + incr]->stringval);
      }
      if (descending)
   tst = -tst;
  }
  if (tst == 0) {



      depth = 1;
      while (depth < nbsorts) {
   if (sorts[depth] == ((void*)0))
       break;
   comp = sorts[depth]->psvi;
   if (comp == ((void*)0))
       break;
   desc = comp->descending;
   numb = comp->number;





   if (resultsTab[depth] == ((void*)0))
       resultsTab[depth] = xsltComputeSortResult(ctxt,
                            sorts[depth]);
   res = resultsTab[depth];
   if (res == ((void*)0))
       break;
   if (res[j] == ((void*)0)) {
       if (res[j+incr] != ((void*)0))
    tst = 1;
   } else if (res[j+incr] == ((void*)0)) {
       tst = -1;
   } else {
       if (numb) {


    if (xmlXPathIsNaN(res[j]->floatval)) {
        if (xmlXPathIsNaN(res[j +
      incr]->floatval))
     tst = 0;
        else
            tst = -1;
    } else if (xmlXPathIsNaN(res[j + incr]->
      floatval))
        tst = 1;
    else if (res[j]->floatval == res[j + incr]->
      floatval)
        tst = 0;
    else if (res[j]->floatval >
     res[j + incr]->floatval)
        tst = 1;
    else tst = -1;
       } else if(comp->locale != (xsltLocale)0) {
    tst = xsltLocaleStrcmp(
        comp->locale,
        (xsltLocaleChar *) res[j]->stringval,
        (xsltLocaleChar *) res[j + incr]->stringval);
       } else {
    tst = xmlStrcmp(res[j]->stringval,
          res[j + incr]->stringval);
       }
       if (desc)
    tst = -tst;
   }





   if (tst != 0)
       break;
   depth++;
      }
  }
  if (tst == 0) {
      tst = results[j]->index > results[j + incr]->index;
  }
  if (tst > 0) {
      tmp = results[j];
      results[j] = results[j + incr];
      results[j + incr] = tmp;
      node = list->nodeTab[j];
      list->nodeTab[j] = list->nodeTab[j + incr];
      list->nodeTab[j + incr] = node;
      depth = 1;
      while (depth < nbsorts) {
   if (sorts[depth] == ((void*)0))
       break;
   if (resultsTab[depth] == ((void*)0))
       break;
   res = resultsTab[depth];
   tmp = res[j];
   res[j] = res[j + incr];
   res[j + incr] = tmp;
   depth++;
      }
      j -= incr;
  } else
      break;
     }
 }
    }

    for (j = 0; j < nbsorts; j++) {
 comp = sorts[j]->psvi;
 if (tempstype[j] == 1) {

     xmlFree((void *)(comp->stype));
     comp->stype = ((void*)0);
 }
 if (temporder[j] == 1) {

     xmlFree((void *)(comp->order));
     comp->order = ((void*)0);
 }
 if (resultsTab[j] != ((void*)0)) {
     for (i = 0;i < len;i++)
  xmlXPathFreeObject(resultsTab[j][i]);
     xmlFree(resultsTab[j]);
 }
    }
}

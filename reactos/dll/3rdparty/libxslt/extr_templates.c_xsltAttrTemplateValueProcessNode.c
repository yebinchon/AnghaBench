
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int xsltTransformContextPtr ;
typedef int xmlXPathCompExprPtr ;
typedef int * xmlNsPtr ;
typedef TYPE_1__* xmlNodePtr ;
typedef scalar_t__ xmlChar ;
struct TYPE_5__ {int doc; } ;


 int xmlFree (scalar_t__*) ;
 int ** xmlGetNsList (int ,TYPE_1__*) ;
 scalar_t__* xmlStrcat (scalar_t__*,scalar_t__*) ;
 scalar_t__* xmlStrncat (scalar_t__*,scalar_t__ const*,int) ;
 scalar_t__* xmlStrndup (scalar_t__ const*,int) ;
 int xmlXPathCompile (scalar_t__*) ;
 int xmlXPathFreeCompExpr (int ) ;
 scalar_t__* xsltEvalXPathStringNs (int ,int ,int,int **) ;
 int xsltTransformError (int ,int *,TYPE_1__*,char*) ;

xmlChar *
xsltAttrTemplateValueProcessNode(xsltTransformContextPtr ctxt,
   const xmlChar *str, xmlNodePtr inst)
{
    xmlChar *ret = ((void*)0);
    const xmlChar *cur;
    xmlChar *expr, *val;
    xmlNsPtr *nsList = ((void*)0);
    int nsNr = 0;

    if (str == ((void*)0)) return(((void*)0));
    if (*str == 0)
 return(xmlStrndup((xmlChar *)"", 0));

    cur = str;
    while (*cur != 0) {
 if (*cur == '{') {
     if (*(cur+1) == '{') {
         cur++;
  ret = xmlStrncat(ret, str, cur - str);
  cur++;
  str = cur;
  continue;
     }
     ret = xmlStrncat(ret, str, cur - str);
     str = cur;
     cur++;
     while ((*cur != 0) && (*cur != '}')) {

  if ((*cur == '\'') || (*cur == '"')) {
      char delim = *(cur++);
      while ((*cur != 0) && (*cur != delim))
   cur++;
      if (*cur != 0)
   cur++;
  } else
      cur++;
            }
     if (*cur == 0) {
         xsltTransformError(ctxt, ((void*)0), inst,
   "xsltAttrTemplateValueProcessNode: unmatched '{'\n");
  ret = xmlStrncat(ret, str, cur - str);
  goto exit;
     }
     str++;
     expr = xmlStrndup(str, cur - str);
     if (expr == ((void*)0))
  goto exit;
     else if (*expr == '{') {
  ret = xmlStrcat(ret, expr);
  xmlFree(expr);
     } else {
  xmlXPathCompExprPtr comp;



  if ((nsList == ((void*)0)) && (inst != ((void*)0))) {
      int i = 0;

      nsList = xmlGetNsList(inst->doc, inst);
      if (nsList != ((void*)0)) {
   while (nsList[i] != ((void*)0))
       i++;
   nsNr = i;
      }
  }
  comp = xmlXPathCompile(expr);
                val = xsltEvalXPathStringNs(ctxt, comp, nsNr, nsList);
  xmlXPathFreeCompExpr(comp);
  xmlFree(expr);
  if (val != ((void*)0)) {
      ret = xmlStrcat(ret, val);
      xmlFree(val);
  }
     }
     cur++;
     str = cur;
 } else if (*cur == '}') {
     cur++;
     if (*cur == '}') {
  ret = xmlStrncat(ret, str, cur - str);
  cur++;
  str = cur;
  continue;
     } else {
         xsltTransformError(ctxt, ((void*)0), inst,
       "xsltAttrTemplateValueProcessNode: unmatched '}'\n");
     }
 } else
     cur++;
    }
    if (cur != str) {
 ret = xmlStrncat(ret, str, cur - str);
    }

exit:
    if (nsList != ((void*)0))
 xmlFree(nsList);

    return(ret);
}

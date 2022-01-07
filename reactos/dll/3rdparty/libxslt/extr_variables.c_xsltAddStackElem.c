
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef TYPE_2__* xsltStackElemPtr ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
struct TYPE_6__ {int varsMax; int varsNr; TYPE_2__* vars; TYPE_2__** varsTab; } ;


 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;
 scalar_t__ xmlMalloc (int) ;
 scalar_t__ xmlRealloc (TYPE_2__**,int) ;

__attribute__((used)) static int
xsltAddStackElem(xsltTransformContextPtr ctxt, xsltStackElemPtr elem)
{
    if ((ctxt == ((void*)0)) || (elem == ((void*)0)))
 return(-1);

    do {
 if (ctxt->varsMax == 0) {
     ctxt->varsMax = 10;
     ctxt->varsTab =
  (xsltStackElemPtr *) xmlMalloc(ctxt->varsMax *
  sizeof(ctxt->varsTab[0]));
     if (ctxt->varsTab == ((void*)0)) {
  xmlGenericError(xmlGenericErrorContext, "malloc failed !\n");
  return (-1);
     }
 }
 if (ctxt->varsNr >= ctxt->varsMax) {
     ctxt->varsMax *= 2;
     ctxt->varsTab =
  (xsltStackElemPtr *) xmlRealloc(ctxt->varsTab,
  ctxt->varsMax *
  sizeof(ctxt->varsTab[0]));
     if (ctxt->varsTab == ((void*)0)) {
  xmlGenericError(xmlGenericErrorContext, "realloc failed !\n");
  return (-1);
     }
 }
 ctxt->varsTab[ctxt->varsNr++] = elem;
 ctxt->vars = elem;

 elem = elem->next;
    } while (elem != ((void*)0));

    return(0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xsltTransformContextPtr ;
typedef TYPE_2__* xsltStackElemPtr ;
typedef int xmlChar ;
struct TYPE_6__ {struct TYPE_6__* next; int const* nameURI; int const* name; } ;
struct TYPE_5__ {int varsNr; int varsBase; TYPE_2__** varsTab; int dict; } ;


 int stack_addr ;
 int stack_cmp ;
 int * xmlDictLookup (int ,int const*,int) ;

__attribute__((used)) static xsltStackElemPtr
xsltStackLookup(xsltTransformContextPtr ctxt, const xmlChar *name,
         const xmlChar *nameURI) {
    int i;
    xsltStackElemPtr cur;

    if ((ctxt == ((void*)0)) || (name == ((void*)0)) || (ctxt->varsNr == 0))
 return(((void*)0));







    for (i = ctxt->varsNr; i > ctxt->varsBase; i--) {
 cur = ctxt->varsTab[i-1];
 while (cur != ((void*)0)) {
     if ((cur->name == name) && (cur->nameURI == nameURI)) {



  return(cur);
     }
     cur = cur->next;
 }
    }





    name = xmlDictLookup(ctxt->dict, name, -1);
    if (nameURI != ((void*)0))
        nameURI = xmlDictLookup(ctxt->dict, nameURI, -1);

    for (i = ctxt->varsNr; i > ctxt->varsBase; i--) {
 cur = ctxt->varsTab[i-1];
 while (cur != ((void*)0)) {
     if ((cur->name == name) && (cur->nameURI == nameURI)) {



  return(cur);
     }
     cur = cur->next;
 }
    }

    return(((void*)0));
}

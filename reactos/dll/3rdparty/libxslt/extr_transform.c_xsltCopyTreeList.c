
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int xsltTransformContextPtr ;
typedef TYPE_1__* xmlNodePtr ;
struct TYPE_10__ {struct TYPE_10__* next; } ;


 TYPE_1__* xsltCopyTree (int ,TYPE_1__*,TYPE_1__*,TYPE_1__*,int,int) ;

__attribute__((used)) static xmlNodePtr
xsltCopyTreeList(xsltTransformContextPtr ctxt, xmlNodePtr invocNode,
   xmlNodePtr list,
   xmlNodePtr insert, int isLRE, int topElemVisited)
{
    xmlNodePtr copy, ret = ((void*)0);

    while (list != ((void*)0)) {
 copy = xsltCopyTree(ctxt, invocNode,
     list, insert, isLRE, topElemVisited);
 if (copy != ((void*)0)) {
     if (ret == ((void*)0)) {
  ret = copy;
     }
 }
 list = list->next;
    }
    return(ret);
}

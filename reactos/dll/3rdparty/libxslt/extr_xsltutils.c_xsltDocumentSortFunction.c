
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xmlNodeSetPtr ;
typedef int xmlNodePtr ;
struct TYPE_3__ {int nodeNr; int * nodeTab; } ;


 int xmlXPathCmpNodes (int ,int ) ;

void
xsltDocumentSortFunction(xmlNodeSetPtr list) {
    int i, j;
    int len, tst;
    xmlNodePtr node;

    if (list == ((void*)0))
 return;
    len = list->nodeNr;
    if (len <= 1)
 return;

    for (i = 0;i < len -1;i++) {
 for (j = i + 1; j < len; j++) {
     tst = xmlXPathCmpNodes(list->nodeTab[i], list->nodeTab[j]);
     if (tst == -1) {
  node = list->nodeTab[i];
  list->nodeTab[i] = list->nodeTab[j];
  list->nodeTab[j] = node;
     }
 }
    }
}

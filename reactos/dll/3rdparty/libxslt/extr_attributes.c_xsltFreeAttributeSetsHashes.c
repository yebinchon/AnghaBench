
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef int xmlHashTablePtr ;
struct TYPE_3__ {int * attributeSets; } ;


 int xmlHashFree (int ,int ) ;
 int xsltFreeAttributeSetsEntry ;

void
xsltFreeAttributeSetsHashes(xsltStylesheetPtr style) {
    if (style->attributeSets != ((void*)0))
 xmlHashFree((xmlHashTablePtr) style->attributeSets,
      xsltFreeAttributeSetsEntry);
    style->attributeSets = ((void*)0);
}

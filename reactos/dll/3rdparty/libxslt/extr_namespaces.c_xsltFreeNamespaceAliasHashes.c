
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef int xmlHashTablePtr ;
struct TYPE_3__ {int * nsAliases; } ;


 int xmlHashFree (int ,int *) ;

void
xsltFreeNamespaceAliasHashes(xsltStylesheetPtr style) {
    if (style->nsAliases != ((void*)0))
 xmlHashFree((xmlHashTablePtr) style->nsAliases, ((void*)0));
    style->nsAliases = ((void*)0);
}

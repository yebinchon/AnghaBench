
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* imports; scalar_t__ extrasNr; int templatesHash; } ;


 int xmlHashScan (int ,int ,TYPE_1__*) ;
 int xsltNormalizeCompSteps ;

__attribute__((used)) static void xsltFixImportedCompSteps(xsltStylesheetPtr master,
   xsltStylesheetPtr style) {
    xsltStylesheetPtr res;
    xmlHashScan(style->templatesHash, xsltNormalizeCompSteps, master);
    master->extrasNr += style->extrasNr;
    for (res = style->imports; res != ((void*)0); res = res->next) {
        xsltFixImportedCompSteps(master, res);
    }
}

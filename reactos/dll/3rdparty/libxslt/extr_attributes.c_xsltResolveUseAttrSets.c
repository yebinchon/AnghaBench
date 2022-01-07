
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef TYPE_1__* xsltUseAttrSetPtr ;
typedef TYPE_2__* xsltStylesheetPtr ;
typedef TYPE_3__* xsltAttrSetPtr ;
struct TYPE_17__ {TYPE_1__* useAttrSets; } ;
struct TYPE_16__ {scalar_t__ attributeSets; } ;
struct TYPE_15__ {struct TYPE_15__* next; int ns; int ncname; } ;


 TYPE_3__* xmlHashLookup2 (scalar_t__,int ,int ) ;
 int xsltFreeUseAttrSet (TYPE_1__*) ;
 int xsltMergeAttrSets (TYPE_3__*,TYPE_3__*) ;
 TYPE_2__* xsltNextImport (TYPE_2__*) ;
 int xsltResolveAttrSet (TYPE_3__*,TYPE_2__*,TYPE_2__*,int ,int ,int) ;

__attribute__((used)) static void
xsltResolveUseAttrSets(xsltAttrSetPtr set, xsltStylesheetPtr topStyle,
         int depth) {
    xsltStylesheetPtr cur;
    xsltAttrSetPtr other;
    xsltUseAttrSetPtr use = set->useAttrSets;
    xsltUseAttrSetPtr next;

    while (use != ((void*)0)) {



        cur = topStyle;
        while (cur != ((void*)0)) {
            if (cur->attributeSets) {
                other = xmlHashLookup2(cur->attributeSets, use->ncname,
                                       use->ns);
                if (other != ((void*)0)) {
                    xsltResolveAttrSet(other, topStyle, cur, use->ncname,
                                       use->ns, depth + 1);
                    xsltMergeAttrSets(set, other);
                    break;
                }
            }
            cur = xsltNextImport(cur);
        }

        next = use->next;

        xsltFreeUseAttrSet(use);
        use = next;
    }

    set->useAttrSets = ((void*)0);
}

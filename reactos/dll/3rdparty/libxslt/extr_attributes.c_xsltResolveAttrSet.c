
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef TYPE_1__* xsltStylesheetPtr ;
typedef TYPE_2__* xsltAttrSetPtr ;
typedef int xmlChar ;
struct TYPE_16__ {scalar_t__ state; } ;
struct TYPE_15__ {int * attributeSets; int errors; } ;


 scalar_t__ ATTRSET_RESOLVED ;
 scalar_t__ ATTRSET_RESOLVING ;
 TYPE_2__* xmlHashLookup2 (int *,int const*,int const*) ;
 int xmlHashRemoveEntry2 (int *,int const*,int const*,int *) ;
 int xsltFreeAttrSet (TYPE_2__*) ;
 int xsltGenericDebug (int ,char*,int const*) ;
 int xsltGenericDebugContext ;
 int xsltMergeAttrSets (TYPE_2__*,TYPE_2__*) ;
 TYPE_1__* xsltNextImport (TYPE_1__*) ;
 int xsltResolveUseAttrSets (TYPE_2__*,TYPE_1__*,int) ;
 int xsltTransformError (int *,TYPE_1__*,int *,char*,int const*) ;

__attribute__((used)) static void
xsltResolveAttrSet(xsltAttrSetPtr set, xsltStylesheetPtr topStyle,
                   xsltStylesheetPtr style, const xmlChar *name,
                   const xmlChar *ns, int depth) {
    xsltStylesheetPtr cur;
    xsltAttrSetPtr other;

    if (set->state == ATTRSET_RESOLVED)
        return;
    if (set->state == ATTRSET_RESOLVING) {
 xsltTransformError(((void*)0), topStyle, ((void*)0),
            "xsl:attribute-set : use-attribute-sets recursion detected"
            " on %s\n", name);
        topStyle->errors++;
        set->state = ATTRSET_RESOLVED;
        return;
    }
    if (depth > 100) {
 xsltTransformError(((void*)0), topStyle, ((void*)0),
  "xsl:attribute-set : use-attribute-sets maximum recursion "
  "depth exceeded on %s\n", name);
        topStyle->errors++;
 return;
    }

    set->state = ATTRSET_RESOLVING;

    xsltResolveUseAttrSets(set, topStyle, depth);


    cur = xsltNextImport(style);
    while (cur != ((void*)0)) {
        if (cur->attributeSets != ((void*)0)) {
            other = xmlHashLookup2(cur->attributeSets, name, ns);

            if (other != ((void*)0)) {




                xsltResolveUseAttrSets(other, topStyle, depth);
                xsltMergeAttrSets(set, other);
                xmlHashRemoveEntry2(cur->attributeSets, name, ns, ((void*)0));
                xsltFreeAttrSet(other);
            }
        }

        cur = xsltNextImport(cur);
    }

    set->state = ATTRSET_RESOLVED;
}

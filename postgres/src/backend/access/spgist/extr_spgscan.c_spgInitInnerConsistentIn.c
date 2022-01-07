
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int hasPrefix; int nodeLabels; int nNodes; int prefixDatum; int allTheSame; int returnData; int level; int traversalValue; int traversalMemoryContext; int reconstructedValue; int norderbys; int nkeys; int orderbys; int scankeys; } ;
typedef TYPE_1__ spgInnerConsistentIn ;
struct TYPE_14__ {scalar_t__ prefixSize; int nNodes; int allTheSame; } ;
struct TYPE_13__ {int state; int want_itup; int traversalCxt; int numberOfNonNullOrderBys; int numberOfKeys; int orderByData; int keyData; } ;
struct TYPE_12__ {int level; int traversalValue; int value; } ;
typedef TYPE_2__ SpGistSearchItem ;
typedef TYPE_3__* SpGistScanOpaque ;
typedef TYPE_4__* SpGistInnerTuple ;


 int SGITDATUM (TYPE_4__*,int *) ;
 int spgExtractNodeLabels (int *,TYPE_4__*) ;

__attribute__((used)) static void
spgInitInnerConsistentIn(spgInnerConsistentIn *in,
       SpGistScanOpaque so,
       SpGistSearchItem *item,
       SpGistInnerTuple innerTuple)
{
 in->scankeys = so->keyData;
 in->orderbys = so->orderByData;
 in->nkeys = so->numberOfKeys;
 in->norderbys = so->numberOfNonNullOrderBys;
 in->reconstructedValue = item->value;
 in->traversalMemoryContext = so->traversalCxt;
 in->traversalValue = item->traversalValue;
 in->level = item->level;
 in->returnData = so->want_itup;
 in->allTheSame = innerTuple->allTheSame;
 in->hasPrefix = (innerTuple->prefixSize > 0);
 in->prefixDatum = SGITDATUM(innerTuple, &so->state);
 in->nNodes = innerTuple->nNodes;
 in->nodeLabels = spgExtractNodeLabels(&so->state, innerTuple);
}

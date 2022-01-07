
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* mapTuplesToNodes; int nNodes; int * nodeLabels; } ;
typedef TYPE_1__ spgPickSplitOut ;
struct TYPE_6__ {int nTuples; } ;
typedef TYPE_2__ spgPickSplitIn ;
typedef int Datum ;


 scalar_t__ palloc (int) ;

__attribute__((used)) static bool
checkAllTheSame(spgPickSplitIn *in, spgPickSplitOut *out, bool tooBig,
    bool *includeNew)
{
 int theNode;
 int limit;
 int i;


 *includeNew = 1;


 if (in->nTuples <= 1)
  return 0;


 limit = tooBig ? in->nTuples - 1 : in->nTuples;


 theNode = out->mapTuplesToNodes[0];
 for (i = 1; i < limit; i++)
 {
  if (out->mapTuplesToNodes[i] != theNode)
   return 0;
 }




 if (tooBig && out->mapTuplesToNodes[in->nTuples - 1] != theNode)
  *includeNew = 0;

 out->nNodes = 8;


 for (i = 0; i < in->nTuples; i++)
  out->mapTuplesToNodes[i] = i % out->nNodes;


 if (out->nodeLabels)
 {
  Datum theLabel = out->nodeLabels[theNode];

  out->nodeLabels = (Datum *) palloc(sizeof(Datum) * out->nNodes);
  for (i = 0; i < out->nNodes; i++)
   out->nodeLabels[i] = theLabel;
 }



 return 1;
}

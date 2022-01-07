
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int LineLength; struct TYPE_4__* ContribRow; struct TYPE_4__* Weights; } ;
typedef TYPE_1__ LineContribType ;


 int gdFree (TYPE_1__*) ;

__attribute__((used)) static inline void _gdContributionsFree(LineContribType * p)
{
 unsigned int u;
 for (u = 0; u < p->LineLength; u++) {
  gdFree(p->ContribRow[u].Weights);
 }
 gdFree(p->ContribRow);
 gdFree(p);
}

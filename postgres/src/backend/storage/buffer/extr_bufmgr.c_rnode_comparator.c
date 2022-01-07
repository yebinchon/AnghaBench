
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ relNode; scalar_t__ dbNode; scalar_t__ spcNode; } ;
typedef TYPE_1__ RelFileNode ;



__attribute__((used)) static int
rnode_comparator(const void *p1, const void *p2)
{
 RelFileNode n1 = *(const RelFileNode *) p1;
 RelFileNode n2 = *(const RelFileNode *) p2;

 if (n1.relNode < n2.relNode)
  return -1;
 else if (n1.relNode > n2.relNode)
  return 1;

 if (n1.dbNode < n2.dbNode)
  return -1;
 else if (n1.dbNode > n2.dbNode)
  return 1;

 if (n1.spcNode < n2.spcNode)
  return -1;
 else if (n1.spcNode > n2.spcNode)
  return 1;
 else
  return 0;
}

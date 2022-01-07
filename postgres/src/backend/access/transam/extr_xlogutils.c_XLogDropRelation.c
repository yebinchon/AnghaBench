
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RelFileNode ;
typedef int ForkNumber ;


 int forget_invalid_pages (int ,int ,int ) ;

void
XLogDropRelation(RelFileNode rnode, ForkNumber forknum)
{
 forget_invalid_pages(rnode, forknum, 0);
}

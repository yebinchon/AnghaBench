
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RelFileNode ;
typedef int ForkNumber ;
typedef int BlockNumber ;


 int elog (int,char*,int ,char*) ;
 int pfree (char*) ;
 char* relpathperm (int ,int ) ;

__attribute__((used)) static void
report_invalid_page(int elevel, RelFileNode node, ForkNumber forkno,
     BlockNumber blkno, bool present)
{
 char *path = relpathperm(node, forkno);

 if (present)
  elog(elevel, "page %u of relation %s is uninitialized",
    blkno, path);
 else
  elog(elevel, "page %u of relation %s does not exist",
    blkno, path);
 pfree(path);
}

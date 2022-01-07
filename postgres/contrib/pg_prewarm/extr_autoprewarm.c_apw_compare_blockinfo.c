
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BlockInfoRecord ;


 int blocknum ;
 int cmp_member_elem (int ) ;
 int database ;
 int filenode ;
 int forknum ;
 int tablespace ;

__attribute__((used)) static int
apw_compare_blockinfo(const void *p, const void *q)
{
 const BlockInfoRecord *a = (const BlockInfoRecord *) p;
 const BlockInfoRecord *b = (const BlockInfoRecord *) q;

 cmp_member_elem(database);
 cmp_member_elem(tablespace);
 cmp_member_elem(filenode);
 cmp_member_elem(forknum);
 cmp_member_elem(blocknum);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ReorderBuffer ;
typedef int Oid ;


 int pfree (int *) ;

void
ReorderBufferReturnRelids(ReorderBuffer *rb, Oid *relids)
{
 pfree(relids);
}

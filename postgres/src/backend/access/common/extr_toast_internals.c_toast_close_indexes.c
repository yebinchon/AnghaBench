
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int LOCKMODE ;


 int index_close (int ,int ) ;
 int pfree (int *) ;

void
toast_close_indexes(Relation *toastidxs, int num_indexes, LOCKMODE lock)
{
 int i;


 for (i = 0; i < num_indexes; i++)
  index_close(toastidxs[i], lock);
 pfree(toastidxs);
}

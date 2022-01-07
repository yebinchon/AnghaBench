
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int il_info; int il_ind; int il_heap; struct TYPE_2__* il_next; } ;
typedef int Relation ;


 TYPE_1__* ILHead ;
 int NoLock ;
 int index_build (int ,int ,int ,int,int) ;
 int index_close (int ,int ) ;
 int index_open (int ,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
build_indices(void)
{
 for (; ILHead != ((void*)0); ILHead = ILHead->il_next)
 {
  Relation heap;
  Relation ind;


  heap = table_open(ILHead->il_heap, NoLock);
  ind = index_open(ILHead->il_ind, NoLock);

  index_build(heap, ind, ILHead->il_info, 0, 0);

  index_close(ind, NoLock);
  table_close(heap, NoLock);
 }
}

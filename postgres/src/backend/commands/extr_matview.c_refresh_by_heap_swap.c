
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int ReadNextMultiXactId () ;
 int RecentXmin ;
 int finish_heap_swap (int ,int ,int,int,int,int,int ,int ,char) ;

__attribute__((used)) static void
refresh_by_heap_swap(Oid matviewOid, Oid OIDNewHeap, char relpersistence)
{
 finish_heap_swap(matviewOid, OIDNewHeap, 0, 0, 1, 1,
      RecentXmin, ReadNextMultiXactId(), relpersistence);
}

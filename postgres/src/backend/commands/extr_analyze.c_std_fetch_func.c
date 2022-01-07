
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* VacAttrStatsP ;
typedef int TupleDesc ;
struct TYPE_3__ {int tupattnum; int tupDesc; int * rows; } ;
typedef int HeapTuple ;
typedef int Datum ;


 int heap_getattr (int ,int,int ,int*) ;

__attribute__((used)) static Datum
std_fetch_func(VacAttrStatsP stats, int rownum, bool *isNull)
{
 int attnum = stats->tupattnum;
 HeapTuple tuple = stats->rows[rownum];
 TupleDesc tupDesc = stats->tupDesc;

 return heap_getattr(tuple, attnum, tupDesc, isNull);
}

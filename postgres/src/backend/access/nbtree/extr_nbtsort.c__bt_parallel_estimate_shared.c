
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Snapshot ;
typedef int Size ;
typedef int Relation ;
typedef int BTShared ;


 int BUFFERALIGN (int) ;
 int add_size (int ,int ) ;
 int table_parallelscan_estimate (int ,int ) ;

__attribute__((used)) static Size
_bt_parallel_estimate_shared(Relation heap, Snapshot snapshot)
{

 return add_size(BUFFERALIGN(sizeof(BTShared)),
     table_parallelscan_estimate(heap, snapshot));
}

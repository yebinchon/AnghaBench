
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WalSnd ;
typedef int Size ;


 int WalSndCtlData ;
 int add_size (int ,int ) ;
 int max_wal_senders ;
 int mul_size (int ,int) ;
 int offsetof (int ,int ) ;
 int walsnds ;

Size
WalSndShmemSize(void)
{
 Size size = 0;

 size = offsetof(WalSndCtlData, walsnds);
 size = add_size(size, mul_size(max_wal_senders, sizeof(WalSnd)));

 return size;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WalRcvData ;
typedef int Size ;


 int add_size (int ,int) ;

Size
WalRcvShmemSize(void)
{
 Size size = 0;

 size = add_size(size, sizeof(WalRcvData));

 return size;
}

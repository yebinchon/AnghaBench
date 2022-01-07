
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;


 int Max (int,int) ;
 int Min (int,int ) ;
 int NBuffers ;

Size
CLOGShmemBuffers(void)
{
 return Min(128, Max(4, NBuffers / 512));
}

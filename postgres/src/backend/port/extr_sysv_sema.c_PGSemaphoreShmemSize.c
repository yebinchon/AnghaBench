
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef int PGSemaphoreData ;


 int mul_size (int,int) ;

Size
PGSemaphoreShmemSize(int maxSemas)
{
 return mul_size(maxSemas, sizeof(PGSemaphoreData));
}

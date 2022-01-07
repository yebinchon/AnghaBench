
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tx ;
struct timex {int tai; } ;


 int adjtimex (struct timex*) ;
 int memset (struct timex*,int ,int) ;

int get_tai(void)
{
 struct timex tx;

 memset(&tx, 0, sizeof(tx));

 adjtimex(&tx);
 return tx.tai;
}

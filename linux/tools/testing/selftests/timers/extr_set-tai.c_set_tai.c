
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tx ;
struct timex {int constant; int modes; } ;


 int ADJ_TAI ;
 int adjtimex (struct timex*) ;
 int memset (struct timex*,int ,int) ;

int set_tai(int offset)
{
 struct timex tx;

 memset(&tx, 0, sizeof(tx));

 tx.modes = ADJ_TAI;
 tx.constant = offset;

 return adjtimex(&tx);
}

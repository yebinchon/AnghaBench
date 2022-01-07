
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ date ;


 scalar_t__ date2j (int,int,int) ;

void
PGTYPESdate_mdyjul(int *mdy, date * jdate)
{




 *jdate = (date) (date2j(mdy[2], mdy[0], mdy[1]) - date2j(2000, 1, 1));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ date ;


 scalar_t__ date2j (int,int,int) ;

int
PGTYPESdate_dayofweek(date dDate)
{




 return (int) (dDate + date2j(2000, 1, 1) + 1) % 7;
}

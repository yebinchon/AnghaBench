
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int date2isoyear (int,int,int) ;
 int date2j (int,int,int) ;
 int isoweek2j (int ,int) ;

int
date2isoyearday(int year, int mon, int mday)
{
 return date2j(year, mon, mday) - isoweek2j(date2isoyear(year, mon, mday), 1) + 1;
}

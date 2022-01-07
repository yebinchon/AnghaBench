
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ date ;


 scalar_t__ date2j (int,int,int) ;
 int j2date (int,int*,int*,int*) ;

void
PGTYPESdate_julmdy(date jd, int *mdy)
{
 int y,
    m,
    d;

 j2date((int) (jd + date2j(2000, 1, 1)), &y, &m, &d);
 mdy[0] = m;
 mdy[1] = d;
 mdy[2] = y;
}

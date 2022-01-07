
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int date ;


 int PGTYPESdate_mdyjul (int*,int *) ;

int
rmdyjul(short mdy[3], date * d)
{
 int mdy_int[3];

 mdy_int[0] = mdy[0];
 mdy_int[1] = mdy[1];
 mdy_int[2] = mdy[2];
 PGTYPESdate_mdyjul(mdy_int, d);
 return 0;
}

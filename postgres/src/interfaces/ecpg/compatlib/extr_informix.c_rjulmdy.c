
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int date ;


 int PGTYPESdate_julmdy (int ,int*) ;

int
rjulmdy(date d, short mdy[3])
{
 int mdy_int[3];

 PGTYPESdate_julmdy(d, mdy_int);
 mdy[0] = (short) mdy_int[0];
 mdy[1] = (short) mdy_int[1];
 mdy[2] = (short) mdy_int[2];
 return 0;
}

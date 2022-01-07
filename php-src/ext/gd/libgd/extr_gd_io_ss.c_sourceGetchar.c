
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdIOCtx ;


 int EOF ;
 int sourceGetbuf (int *,unsigned char*,int) ;

__attribute__((used)) static int sourceGetchar (gdIOCtx * ctx)
{
 int res;
 unsigned char buf;

 res = sourceGetbuf (ctx, &buf, 1);

 if (res == 1) {
  return buf;
 } else {
  return EOF;
 }
}

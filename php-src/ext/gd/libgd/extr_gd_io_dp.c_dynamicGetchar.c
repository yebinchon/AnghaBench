
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdIOCtxPtr ;


 int EOF ;
 int dynamicGetbuf (int ,unsigned char*,int) ;

__attribute__((used)) static int dynamicGetchar (gdIOCtxPtr ctx)
{
 unsigned char b;
 int rv;

 rv = dynamicGetbuf (ctx, &b, 1);
 if (rv != 1) {
  return EOF;
 } else {
  return b;
 }
}

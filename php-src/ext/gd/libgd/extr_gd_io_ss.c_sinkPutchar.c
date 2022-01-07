
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdIOCtx ;


 int sinkPutbuf (int *,unsigned char*,int) ;

__attribute__((used)) static void sinkPutchar (gdIOCtx * ctx, int a)
{
 unsigned char b;

 b = a;
 sinkPutbuf (ctx, &b, 1);
}

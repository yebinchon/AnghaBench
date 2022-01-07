
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdIOCtx ;


 int gdPutC (int,int *) ;

__attribute__((used)) static int gdBMPPutInt(gdIOCtx *out, int w)
{

 gdPutC(w & 0xFF, out);
 gdPutC((w >> 8) & 0xFF, out);
 gdPutC((w >> 16) & 0xFF, out);
 gdPutC((w >> 24) & 0xFF, out);
 return 0;
}

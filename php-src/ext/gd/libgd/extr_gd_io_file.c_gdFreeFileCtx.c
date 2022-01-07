
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdIOCtx ;


 int gdFree (int *) ;

__attribute__((used)) static void gdFreeFileCtx (gdIOCtx * ctx)
{
 gdFree(ctx);
}

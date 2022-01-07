
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long (* tell ) (TYPE_1__*) ;} ;
typedef TYPE_1__ gdIOCtx ;


 int IO_DBG (int ) ;
 int gd_error (char*) ;
 long stub1 (TYPE_1__*) ;

long gdTell (gdIOCtx * ctx)
{
 IO_DBG (gd_error("Telling..."));
 return ((ctx->tell) (ctx));
 IO_DBG (gd_error ("told."));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* seek ) (TYPE_1__*,int const) ;} ;
typedef TYPE_1__ gdIOCtx ;


 int IO_DBG (int ) ;
 int gd_error (char*) ;
 int stub1 (TYPE_1__*,int const) ;

int gdSeek (gdIOCtx * ctx, const int pos)
{
 IO_DBG (gd_error("Seeking..."));
 return ((ctx->seek) (ctx, pos));
 IO_DBG (gd_error("Done."));
}

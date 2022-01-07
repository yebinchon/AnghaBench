
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int gdIOCtx ;
struct TYPE_3__ {int gd_free; int seek; int tell; int putBuf; int getBuf; int putC; int getC; } ;
struct TYPE_4__ {TYPE_1__ ctx; int * f; } ;
typedef TYPE_2__ fileIOCtx ;
typedef int FILE ;


 int fileGetbuf ;
 int fileGetchar ;
 int filePutbuf ;
 int filePutchar ;
 int fileSeek ;
 int fileTell ;
 int gdFreeFileCtx ;
 scalar_t__ gdMalloc (int) ;

gdIOCtx * gdNewFileCtx (FILE * f)
{
 fileIOCtx *ctx;

 ctx = (fileIOCtx *) gdMalloc(sizeof (fileIOCtx));

 ctx->f = f;

 ctx->ctx.getC = fileGetchar;
 ctx->ctx.putC = filePutchar;

 ctx->ctx.getBuf = fileGetbuf;
 ctx->ctx.putBuf = filePutbuf;

 ctx->ctx.tell = fileTell;
 ctx->ctx.seek = fileSeek;

 ctx->ctx.gd_free = gdFreeFileCtx;

 return (gdIOCtx *) ctx;
}

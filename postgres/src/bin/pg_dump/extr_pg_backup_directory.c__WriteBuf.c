
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dataFH; } ;
typedef TYPE_1__ lclContext ;
struct TYPE_5__ {scalar_t__ formatData; } ;
typedef TYPE_2__ ArchiveHandle ;


 size_t cfwrite (void const*,size_t,int ) ;
 int fatal (char*,int ) ;
 int get_cfp_error (int ) ;

__attribute__((used)) static void
_WriteBuf(ArchiveHandle *AH, const void *buf, size_t len)
{
 lclContext *ctx = (lclContext *) AH->formatData;

 if (cfwrite(buf, len, ctx->dataFH) != len)
  fatal("could not write to output file: %s",
     get_cfp_error(ctx->dataFH));

 return;
}

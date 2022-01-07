
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


 int cfwrite (unsigned char*,int,int ) ;
 int fatal (char*,int ) ;
 int get_cfp_error (int ) ;

__attribute__((used)) static int
_WriteByte(ArchiveHandle *AH, const int i)
{
 unsigned char c = (unsigned char) i;
 lclContext *ctx = (lclContext *) AH->formatData;

 if (cfwrite(&c, 1, ctx->dataFH) != 1)
  fatal("could not write to output file: %s",
     get_cfp_error(ctx->dataFH));

 return 1;
}

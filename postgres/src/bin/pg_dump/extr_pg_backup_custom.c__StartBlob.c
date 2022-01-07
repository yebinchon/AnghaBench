
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cs; } ;
typedef TYPE_1__ lclContext ;
typedef int TocEntry ;
struct TYPE_6__ {int compression; scalar_t__ formatData; } ;
typedef scalar_t__ Oid ;
typedef TYPE_2__ ArchiveHandle ;


 int AllocateCompressor (int ,int ) ;
 int WriteInt (TYPE_2__*,scalar_t__) ;
 int _CustomWriteFunc ;
 int fatal (char*) ;

__attribute__((used)) static void
_StartBlob(ArchiveHandle *AH, TocEntry *te, Oid oid)
{
 lclContext *ctx = (lclContext *) AH->formatData;

 if (oid == 0)
  fatal("invalid OID for large object");

 WriteInt(AH, oid);

 ctx->cs = AllocateCompressor(AH->compression, _CustomWriteFunc);
}

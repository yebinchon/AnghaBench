
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16 ;
typedef scalar_t__ int32 ;
struct TYPE_2__ {char* data; } ;
typedef TYPE_1__ PGAlignedBlock ;


 scalar_t__ BLCKSZ ;
 int PGLZ_strategy_default ;
 scalar_t__ SizeOfXLogRecordBlockCompressHeader ;
 int memcpy (char*,char*,scalar_t__) ;
 scalar_t__ pglz_compress (char*,scalar_t__,char*,int ) ;

__attribute__((used)) static bool
XLogCompressBackupBlock(char *page, uint16 hole_offset, uint16 hole_length,
      char *dest, uint16 *dlen)
{
 int32 orig_len = BLCKSZ - hole_length;
 int32 len;
 int32 extra_bytes = 0;
 char *source;
 PGAlignedBlock tmp;

 if (hole_length != 0)
 {

  source = tmp.data;
  memcpy(source, page, hole_offset);
  memcpy(source + hole_offset,
      page + (hole_offset + hole_length),
      BLCKSZ - (hole_length + hole_offset));





  extra_bytes = SizeOfXLogRecordBlockCompressHeader;
 }
 else
  source = page;






 len = pglz_compress(source, orig_len, dest, PGLZ_strategy_default);
 if (len >= 0 &&
  len + extra_bytes < orig_len)
 {
  *dlen = (uint16) len;
  return 1;
 }
 return 0;
}

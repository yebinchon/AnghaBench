
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_7__ {int max_block_id; TYPE_1__* blocks; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_6__ {scalar_t__ bimg_len; } ;


 scalar_t__ XLogRecGetTotalLen (TYPE_2__*) ;
 scalar_t__ XLogRecHasBlockImage (TYPE_2__*,int) ;

__attribute__((used)) static void
XLogDumpRecordLen(XLogReaderState *record, uint32 *rec_len, uint32 *fpi_len)
{
 int block_id;
 *fpi_len = 0;
 for (block_id = 0; block_id <= record->max_block_id; block_id++)
 {
  if (XLogRecHasBlockImage(record, block_id))
   *fpi_len += record->blocks[block_id].bimg_len;
 }





 *rec_len = XLogRecGetTotalLen(record) - *fpi_len;
}

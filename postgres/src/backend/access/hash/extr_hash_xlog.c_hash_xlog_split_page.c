
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLogReaderState ;
typedef int Buffer ;


 scalar_t__ BLK_RESTORED ;
 int ERROR ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogReadBufferForRedo (int *,int ,int *) ;
 int elog (int ,char*) ;

__attribute__((used)) static void
hash_xlog_split_page(XLogReaderState *record)
{
 Buffer buf;

 if (XLogReadBufferForRedo(record, 0, &buf) != BLK_RESTORED)
  elog(ERROR, "Hash split record did not contain a full-page image");

 UnlockReleaseBuffer(buf);
}

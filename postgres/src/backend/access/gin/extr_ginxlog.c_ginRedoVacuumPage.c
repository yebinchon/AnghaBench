
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
ginRedoVacuumPage(XLogReaderState *record)
{
 Buffer buffer;

 if (XLogReadBufferForRedo(record, 0, &buffer) != BLK_RESTORED)
 {
  elog(ERROR, "replay of gin entry tree page vacuum did not restore the page");
 }
 UnlockReleaseBuffer(buffer);
}

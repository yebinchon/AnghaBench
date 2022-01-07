
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
typedef TYPE_1__ ginxlogSplit ;
typedef int XLogReaderState ;
typedef int Buffer ;


 scalar_t__ BLK_RESTORED ;
 int ERROR ;
 int GIN_INSERT_ISLEAF ;
 int GIN_SPLIT_ROOT ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogReadBufferForRedo (int *,int,int *) ;
 scalar_t__ XLogRecGetData (int *) ;
 int elog (int ,char*) ;
 int ginRedoClearIncompleteSplit (int *,int) ;

__attribute__((used)) static void
ginRedoSplit(XLogReaderState *record)
{
 ginxlogSplit *data = (ginxlogSplit *) XLogRecGetData(record);
 Buffer lbuffer,
    rbuffer,
    rootbuf;
 bool isLeaf = (data->flags & GIN_INSERT_ISLEAF) != 0;
 bool isRoot = (data->flags & GIN_SPLIT_ROOT) != 0;





 if (!isLeaf)
  ginRedoClearIncompleteSplit(record, 3);

 if (XLogReadBufferForRedo(record, 0, &lbuffer) != BLK_RESTORED)
  elog(ERROR, "GIN split record did not contain a full-page image of left page");

 if (XLogReadBufferForRedo(record, 1, &rbuffer) != BLK_RESTORED)
  elog(ERROR, "GIN split record did not contain a full-page image of right page");

 if (isRoot)
 {
  if (XLogReadBufferForRedo(record, 2, &rootbuf) != BLK_RESTORED)
   elog(ERROR, "GIN split record did not contain a full-page image of root page");
  UnlockReleaseBuffer(rootbuf);
 }

 UnlockReleaseBuffer(rbuffer);
 UnlockReleaseBuffer(lbuffer);
}

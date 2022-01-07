
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int registered_buffer ;
typedef int XLogRecData ;


 int Assert (int) ;
 scalar_t__ CritSectionCount ;
 int ERROR ;
 int MemSet (int *,int ,int) ;
 int XLR_MAX_BLOCK_ID ;
 int XLR_NORMAL_MAX_BLOCK_ID ;
 int XLR_NORMAL_RDATAS ;
 int elog (int ,char*) ;
 int max_rdatas ;
 int max_registered_buffers ;
 int * rdatas ;
 int * registered_buffers ;
 scalar_t__ repalloc (int *,int) ;

void
XLogEnsureRecordSpace(int max_block_id, int ndatas)
{
 int nbuffers;







 Assert(CritSectionCount == 0);


 if (max_block_id < XLR_NORMAL_MAX_BLOCK_ID)
  max_block_id = XLR_NORMAL_MAX_BLOCK_ID;
 if (ndatas < XLR_NORMAL_RDATAS)
  ndatas = XLR_NORMAL_RDATAS;

 if (max_block_id > XLR_MAX_BLOCK_ID)
  elog(ERROR, "maximum number of WAL record block references exceeded");
 nbuffers = max_block_id + 1;

 if (nbuffers > max_registered_buffers)
 {
  registered_buffers = (registered_buffer *)
   repalloc(registered_buffers, sizeof(registered_buffer) * nbuffers);





  MemSet(&registered_buffers[max_registered_buffers], 0,
      (nbuffers - max_registered_buffers) * sizeof(registered_buffer));
  max_registered_buffers = nbuffers;
 }

 if (ndatas > max_rdatas)
 {
  rdatas = (XLogRecData *) repalloc(rdatas, sizeof(XLogRecData) * ndatas);
  max_rdatas = ndatas;
 }
}

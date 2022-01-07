
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int registered_buffer ;
typedef int XLogRecData ;


 int ALLOCSET_DEFAULT_SIZES ;
 int * AllocSetContextCreate (int ,char*,int ) ;
 int HEADER_SCRATCH_SIZE ;
 int * MemoryContextAlloc (int *,int) ;
 int * MemoryContextAllocZero (int *,int) ;
 int TopMemoryContext ;
 int XLR_NORMAL_MAX_BLOCK_ID ;
 int XLR_NORMAL_RDATAS ;
 int * hdr_scratch ;
 int max_rdatas ;
 int max_registered_buffers ;
 int * rdatas ;
 int * registered_buffers ;
 int * xloginsert_cxt ;

void
InitXLogInsert(void)
{

 if (xloginsert_cxt == ((void*)0))
 {
  xloginsert_cxt = AllocSetContextCreate(TopMemoryContext,
              "WAL record construction",
              ALLOCSET_DEFAULT_SIZES);
 }

 if (registered_buffers == ((void*)0))
 {
  registered_buffers = (registered_buffer *)
   MemoryContextAllocZero(xloginsert_cxt,
           sizeof(registered_buffer) * (XLR_NORMAL_MAX_BLOCK_ID + 1));
  max_registered_buffers = XLR_NORMAL_MAX_BLOCK_ID + 1;
 }
 if (rdatas == ((void*)0))
 {
  rdatas = MemoryContextAlloc(xloginsert_cxt,
         sizeof(XLogRecData) * XLR_NORMAL_RDATAS);
  max_rdatas = XLR_NORMAL_RDATAS;
 }




 if (hdr_scratch == ((void*)0))
  hdr_scratch = MemoryContextAllocZero(xloginsert_cxt,
            HEADER_SCRATCH_SIZE);
}

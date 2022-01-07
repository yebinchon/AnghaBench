
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int XLogReaderState ;
typedef int Buffer ;


 int RBM_ZERO_AND_LOCK ;
 int XLogReadBufferForRedoExtended (int *,int ,int ,int,int *) ;

Buffer
XLogInitBufferForRedo(XLogReaderState *record, uint8 block_id)
{
 Buffer buf;

 XLogReadBufferForRedoExtended(record, block_id, RBM_ZERO_AND_LOCK, 0,
          &buf);
 return buf;
}

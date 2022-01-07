
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int XLogRedoAction ;
typedef int XLogReaderState ;
typedef int Buffer ;


 int RBM_NORMAL ;
 int XLogReadBufferForRedoExtended (int *,int ,int ,int,int *) ;

XLogRedoAction
XLogReadBufferForRedo(XLogReaderState *record, uint8 block_id,
       Buffer *buf)
{
 return XLogReadBufferForRedoExtended(record, block_id, RBM_NORMAL,
           0, buf);
}

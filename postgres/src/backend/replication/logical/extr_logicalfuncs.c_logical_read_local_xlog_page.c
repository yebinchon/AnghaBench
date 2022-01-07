
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLogRecPtr ;
typedef int XLogReaderState ;


 int read_local_xlog_page (int *,int ,int,int ,char*) ;

int
logical_read_local_xlog_page(XLogReaderState *state, XLogRecPtr targetPagePtr,
        int reqLen, XLogRecPtr targetRecPtr, char *cur_page)
{
 return read_local_xlog_page(state, targetPagePtr, reqLen,
        targetRecPtr, cur_page);
}

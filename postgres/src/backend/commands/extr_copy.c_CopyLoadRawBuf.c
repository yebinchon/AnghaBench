
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int raw_buf_index; int raw_buf_len; char* raw_buf; } ;
typedef TYPE_1__* CopyState ;


 int CopyGetData (TYPE_1__*,char*,int,scalar_t__) ;
 scalar_t__ RAW_BUF_SIZE ;
 int memmove (char*,char*,int) ;

__attribute__((used)) static bool
CopyLoadRawBuf(CopyState cstate)
{
 int nbytes;
 int inbytes;

 if (cstate->raw_buf_index < cstate->raw_buf_len)
 {

  nbytes = cstate->raw_buf_len - cstate->raw_buf_index;
  memmove(cstate->raw_buf, cstate->raw_buf + cstate->raw_buf_index,
    nbytes);
 }
 else
  nbytes = 0;

 inbytes = CopyGetData(cstate, cstate->raw_buf + nbytes,
        1, RAW_BUF_SIZE - nbytes);
 nbytes += inbytes;
 cstate->raw_buf[nbytes] = '\0';
 cstate->raw_buf_index = 0;
 cstate->raw_buf_len = nbytes;
 return (inbytes > 0);
}

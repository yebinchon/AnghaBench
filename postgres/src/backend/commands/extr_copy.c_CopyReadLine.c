
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int len; char* data; } ;
struct TYPE_7__ {int line_buf_valid; int line_buf_converted; scalar_t__ copy_dest; int eol_type; TYPE_2__ line_buf; int file_encoding; scalar_t__ need_transcoding; int raw_buf_len; int raw_buf_index; } ;
typedef TYPE_1__* CopyState ;


 int Assert (int) ;
 scalar_t__ COPY_NEW_FE ;
 scalar_t__ CopyLoadRawBuf (TYPE_1__*) ;
 int CopyReadLineText (TYPE_1__*) ;




 int appendBinaryStringInfo (TYPE_2__*,char*,int ) ;
 int pfree (char*) ;
 char* pg_any_to_server (char*,size_t,int ) ;
 int resetStringInfo (TYPE_2__*) ;
 int strlen (char*) ;

__attribute__((used)) static bool
CopyReadLine(CopyState cstate)
{
 bool result;

 resetStringInfo(&cstate->line_buf);
 cstate->line_buf_valid = 1;


 cstate->line_buf_converted = 0;


 result = CopyReadLineText(cstate);

 if (result)
 {





  if (cstate->copy_dest == COPY_NEW_FE)
  {
   do
   {
    cstate->raw_buf_index = cstate->raw_buf_len;
   } while (CopyLoadRawBuf(cstate));
  }
 }
 else
 {




  switch (cstate->eol_type)
  {
   case 129:
    Assert(cstate->line_buf.len >= 1);
    Assert(cstate->line_buf.data[cstate->line_buf.len - 1] == '\n');
    cstate->line_buf.len--;
    cstate->line_buf.data[cstate->line_buf.len] = '\0';
    break;
   case 131:
    Assert(cstate->line_buf.len >= 1);
    Assert(cstate->line_buf.data[cstate->line_buf.len - 1] == '\r');
    cstate->line_buf.len--;
    cstate->line_buf.data[cstate->line_buf.len] = '\0';
    break;
   case 130:
    Assert(cstate->line_buf.len >= 2);
    Assert(cstate->line_buf.data[cstate->line_buf.len - 2] == '\r');
    Assert(cstate->line_buf.data[cstate->line_buf.len - 1] == '\n');
    cstate->line_buf.len -= 2;
    cstate->line_buf.data[cstate->line_buf.len] = '\0';
    break;
   case 128:

    Assert(0);
    break;
  }
 }


 if (cstate->need_transcoding)
 {
  char *cvt;

  cvt = pg_any_to_server(cstate->line_buf.data,
          cstate->line_buf.len,
          cstate->file_encoding);
  if (cvt != cstate->line_buf.data)
  {

   resetStringInfo(&cstate->line_buf);
   appendBinaryStringInfo(&cstate->line_buf, cvt, strlen(cvt));
   pfree(cvt);
  }
 }


 cstate->line_buf_converted = 1;

 return result;
}

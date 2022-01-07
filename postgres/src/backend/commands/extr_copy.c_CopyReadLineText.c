
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* quote; char* escape; char* raw_buf; int raw_buf_index; int raw_buf_len; scalar_t__ eol_type; int file_encoding; scalar_t__ encoding_embeds_ascii; scalar_t__ csv_mode; int line_buf; int cur_lineno; } ;
typedef TYPE_1__* CopyState ;


 int CopyLoadRawBuf (TYPE_1__*) ;
 scalar_t__ EOL_CR ;
 scalar_t__ EOL_CRNL ;
 scalar_t__ EOL_NL ;
 scalar_t__ EOL_UNKNOWN ;
 int ERRCODE_BAD_COPY_FILE_FORMAT ;
 int ERROR ;
 int IF_NEED_REFILL_AND_EOF_BREAK (int) ;
 int IF_NEED_REFILL_AND_NOT_EOF_CONTINUE (int) ;
 scalar_t__ IS_HIGHBIT_SET (char) ;
 int NO_END_OF_COPY_GOTO ;
 int REFILL_LINEBUF ;
 int appendBinaryStringInfo (int *,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int pg_encoding_mblen (int ,char*) ;

__attribute__((used)) static bool
CopyReadLineText(CopyState cstate)
{
 char *copy_raw_buf;
 int raw_buf_ptr;
 int copy_buf_len;
 bool need_data = 0;
 bool hit_eof = 0;
 bool result = 0;
 char mblen_str[2];


 bool first_char_in_line = 1;
 bool in_quote = 0,
    last_was_esc = 0;
 char quotec = '\0';
 char escapec = '\0';

 if (cstate->csv_mode)
 {
  quotec = cstate->quote[0];
  escapec = cstate->escape[0];

  if (quotec == escapec)
   escapec = '\0';
 }

 mblen_str[1] = '\0';
 copy_raw_buf = cstate->raw_buf;
 raw_buf_ptr = cstate->raw_buf_index;
 copy_buf_len = cstate->raw_buf_len;

 for (;;)
 {
  int prev_raw_ptr;
  char c;
  if (raw_buf_ptr >= copy_buf_len || need_data)
  {
   REFILL_LINEBUF;





   if (!CopyLoadRawBuf(cstate))
    hit_eof = 1;
   raw_buf_ptr = 0;
   copy_buf_len = cstate->raw_buf_len;





   if (copy_buf_len <= 0)
   {
    result = 1;
    break;
   }
   need_data = 0;
  }


  prev_raw_ptr = raw_buf_ptr;
  c = copy_raw_buf[raw_buf_ptr++];

  if (cstate->csv_mode)
  {
   if (c == '\\' || c == '\r')
   {
    IF_NEED_REFILL_AND_NOT_EOF_CONTINUE(0);
   }
   if (in_quote && c == escapec)
    last_was_esc = !last_was_esc;
   if (c == quotec && !last_was_esc)
    in_quote = !in_quote;
   if (c != escapec)
    last_was_esc = 0;







   if (in_quote && c == (cstate->eol_type == EOL_NL ? '\n' : '\r'))
    cstate->cur_lineno++;
  }


  if (c == '\r' && (!cstate->csv_mode || !in_quote))
  {

   if (cstate->eol_type == EOL_UNKNOWN ||
    cstate->eol_type == EOL_CRNL)
   {






    IF_NEED_REFILL_AND_NOT_EOF_CONTINUE(0);


    c = copy_raw_buf[raw_buf_ptr];

    if (c == '\n')
    {
     raw_buf_ptr++;
     cstate->eol_type = EOL_CRNL;
    }
    else
    {

     if (cstate->eol_type == EOL_CRNL)
      ereport(ERROR,
        (errcode(ERRCODE_BAD_COPY_FILE_FORMAT),
         !cstate->csv_mode ?
         errmsg("literal carriage return found in data") :
         errmsg("unquoted carriage return found in data"),
         !cstate->csv_mode ?
         errhint("Use \"\\r\" to represent carriage return.") :
         errhint("Use quoted CSV field to represent carriage return.")));





     cstate->eol_type = EOL_CR;
    }
   }
   else if (cstate->eol_type == EOL_NL)
    ereport(ERROR,
      (errcode(ERRCODE_BAD_COPY_FILE_FORMAT),
       !cstate->csv_mode ?
       errmsg("literal carriage return found in data") :
       errmsg("unquoted carriage return found in data"),
       !cstate->csv_mode ?
       errhint("Use \"\\r\" to represent carriage return.") :
       errhint("Use quoted CSV field to represent carriage return.")));

   break;
  }


  if (c == '\n' && (!cstate->csv_mode || !in_quote))
  {
   if (cstate->eol_type == EOL_CR || cstate->eol_type == EOL_CRNL)
    ereport(ERROR,
      (errcode(ERRCODE_BAD_COPY_FILE_FORMAT),
       !cstate->csv_mode ?
       errmsg("literal newline found in data") :
       errmsg("unquoted newline found in data"),
       !cstate->csv_mode ?
       errhint("Use \"\\n\" to represent newline.") :
       errhint("Use quoted CSV field to represent newline.")));
   cstate->eol_type = EOL_NL;

   break;
  }





  if (c == '\\' && (!cstate->csv_mode || first_char_in_line))
  {
   char c2;

   IF_NEED_REFILL_AND_NOT_EOF_CONTINUE(0);
   IF_NEED_REFILL_AND_EOF_BREAK(0);







   c2 = copy_raw_buf[raw_buf_ptr];

   if (c2 == '.')
   {
    raw_buf_ptr++;






    if (cstate->eol_type == EOL_CRNL)
    {

     IF_NEED_REFILL_AND_NOT_EOF_CONTINUE(0);

     c2 = copy_raw_buf[raw_buf_ptr++];

     if (c2 == '\n')
     {
      if (!cstate->csv_mode)
       ereport(ERROR,
         (errcode(ERRCODE_BAD_COPY_FILE_FORMAT),
          errmsg("end-of-copy marker does not match previous newline style")));
      else
       NO_END_OF_COPY_GOTO;
     }
     else if (c2 != '\r')
     {
      if (!cstate->csv_mode)
       ereport(ERROR,
         (errcode(ERRCODE_BAD_COPY_FILE_FORMAT),
          errmsg("end-of-copy marker corrupt")));
      else
       NO_END_OF_COPY_GOTO;
     }
    }


    IF_NEED_REFILL_AND_NOT_EOF_CONTINUE(0);

    c2 = copy_raw_buf[raw_buf_ptr++];

    if (c2 != '\r' && c2 != '\n')
    {
     if (!cstate->csv_mode)
      ereport(ERROR,
        (errcode(ERRCODE_BAD_COPY_FILE_FORMAT),
         errmsg("end-of-copy marker corrupt")));
     else
      NO_END_OF_COPY_GOTO;
    }

    if ((cstate->eol_type == EOL_NL && c2 != '\n') ||
     (cstate->eol_type == EOL_CRNL && c2 != '\n') ||
     (cstate->eol_type == EOL_CR && c2 != '\r'))
    {
     ereport(ERROR,
       (errcode(ERRCODE_BAD_COPY_FILE_FORMAT),
        errmsg("end-of-copy marker does not match previous newline style")));
    }





    if (prev_raw_ptr > cstate->raw_buf_index)
     appendBinaryStringInfo(&cstate->line_buf,
             cstate->raw_buf + cstate->raw_buf_index,
             prev_raw_ptr - cstate->raw_buf_index);
    cstate->raw_buf_index = raw_buf_ptr;
    result = 1;
    break;
   }
   else if (!cstate->csv_mode)
    raw_buf_ptr++;
  }







not_end_of_copy:
  if (cstate->encoding_embeds_ascii && IS_HIGHBIT_SET(c))
  {
   int mblen;






   mblen_str[0] = c;
   mblen = pg_encoding_mblen(cstate->file_encoding, mblen_str);

   IF_NEED_REFILL_AND_NOT_EOF_CONTINUE(mblen - 1);
   IF_NEED_REFILL_AND_EOF_BREAK(mblen - 1);
   raw_buf_ptr += mblen - 1;
  }
  first_char_in_line = 0;
 }




 REFILL_LINEBUF;

 return result;
}

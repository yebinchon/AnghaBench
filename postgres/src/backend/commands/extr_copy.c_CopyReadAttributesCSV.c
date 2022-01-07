
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ maxlen; char* data; int len; } ;
struct TYPE_6__ {scalar_t__ len; char* data; } ;
struct TYPE_7__ {char* delim; char* quote; char* escape; int max_fields; char** raw_fields; int null_print_len; TYPE_3__ attribute_buf; int null_print; TYPE_1__ line_buf; } ;
typedef TYPE_2__* CopyState ;


 int Assert (int) ;
 int ERRCODE_BAD_COPY_FILE_FORMAT ;
 int ERROR ;
 int enlargeStringInfo (TYPE_3__*,scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 char** repalloc (char**,int) ;
 int resetStringInfo (TYPE_3__*) ;
 scalar_t__ strncmp (char*,int ,int) ;

__attribute__((used)) static int
CopyReadAttributesCSV(CopyState cstate)
{
 char delimc = cstate->delim[0];
 char quotec = cstate->quote[0];
 char escapec = cstate->escape[0];
 int fieldno;
 char *output_ptr;
 char *cur_ptr;
 char *line_end_ptr;





 if (cstate->max_fields <= 0)
 {
  if (cstate->line_buf.len != 0)
   ereport(ERROR,
     (errcode(ERRCODE_BAD_COPY_FILE_FORMAT),
      errmsg("extra data after last expected column")));
  return 0;
 }

 resetStringInfo(&cstate->attribute_buf);
 if (cstate->attribute_buf.maxlen <= cstate->line_buf.len)
  enlargeStringInfo(&cstate->attribute_buf, cstate->line_buf.len);
 output_ptr = cstate->attribute_buf.data;


 cur_ptr = cstate->line_buf.data;
 line_end_ptr = cstate->line_buf.data + cstate->line_buf.len;


 fieldno = 0;
 for (;;)
 {
  bool found_delim = 0;
  bool saw_quote = 0;
  char *start_ptr;
  char *end_ptr;
  int input_len;


  if (fieldno >= cstate->max_fields)
  {
   cstate->max_fields *= 2;
   cstate->raw_fields =
    repalloc(cstate->raw_fields, cstate->max_fields * sizeof(char *));
  }


  start_ptr = cur_ptr;
  cstate->raw_fields[fieldno] = output_ptr;
  for (;;)
  {
   char c;


   for (;;)
   {
    end_ptr = cur_ptr;
    if (cur_ptr >= line_end_ptr)
     goto endfield;
    c = *cur_ptr++;

    if (c == delimc)
    {
     found_delim = 1;
     goto endfield;
    }

    if (c == quotec)
    {
     saw_quote = 1;
     break;
    }

    *output_ptr++ = c;
   }


   for (;;)
   {
    end_ptr = cur_ptr;
    if (cur_ptr >= line_end_ptr)
     ereport(ERROR,
       (errcode(ERRCODE_BAD_COPY_FILE_FORMAT),
        errmsg("unterminated CSV quoted field")));

    c = *cur_ptr++;


    if (c == escapec)
    {




     if (cur_ptr < line_end_ptr)
     {
      char nextc = *cur_ptr;

      if (nextc == escapec || nextc == quotec)
      {
       *output_ptr++ = nextc;
       cur_ptr++;
       continue;
      }
     }
    }






    if (c == quotec)
     break;


    *output_ptr++ = c;
   }
  }
endfield:


  *output_ptr++ = '\0';


  input_len = end_ptr - start_ptr;
  if (!saw_quote && input_len == cstate->null_print_len &&
   strncmp(start_ptr, cstate->null_print, input_len) == 0)
   cstate->raw_fields[fieldno] = ((void*)0);

  fieldno++;

  if (!found_delim)
   break;
 }


 output_ptr--;
 Assert(*output_ptr == '\0');
 cstate->attribute_buf.len = (output_ptr - cstate->attribute_buf.data);

 return fieldno;
}

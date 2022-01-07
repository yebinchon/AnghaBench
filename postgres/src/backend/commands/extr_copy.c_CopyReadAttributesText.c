
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ maxlen; char* data; int len; } ;
struct TYPE_6__ {scalar_t__ len; char* data; } ;
struct TYPE_7__ {char* delim; int max_fields; char** raw_fields; int null_print_len; TYPE_3__ attribute_buf; int null_print; TYPE_1__ line_buf; } ;
typedef TYPE_2__* CopyState ;


 int Assert (int) ;
 int ERRCODE_BAD_COPY_FILE_FORMAT ;
 int ERROR ;
 int GetDecimalFromHex (char) ;
 int ISOCTAL (char) ;
 int IS_HIGHBIT_SET (char) ;
 int OCTVALUE (char) ;
 int enlargeStringInfo (TYPE_3__*,scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int isxdigit (unsigned char) ;
 int pg_verifymbstr (char*,int,int) ;
 char** repalloc (char**,int) ;
 int resetStringInfo (TYPE_3__*) ;
 scalar_t__ strncmp (char*,int ,int) ;

__attribute__((used)) static int
CopyReadAttributesText(CopyState cstate)
{
 char delimc = cstate->delim[0];
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
  char *start_ptr;
  char *end_ptr;
  int input_len;
  bool saw_non_ascii = 0;


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

   end_ptr = cur_ptr;
   if (cur_ptr >= line_end_ptr)
    break;
   c = *cur_ptr++;
   if (c == delimc)
   {
    found_delim = 1;
    break;
   }
   if (c == '\\')
   {
    if (cur_ptr >= line_end_ptr)
     break;
    c = *cur_ptr++;
    switch (c)
    {
     case '0':
     case '1':
     case '2':
     case '3':
     case '4':
     case '5':
     case '6':
     case '7':
      {

       int val;

       val = OCTVALUE(c);
       if (cur_ptr < line_end_ptr)
       {
        c = *cur_ptr;
        if (ISOCTAL(c))
        {
         cur_ptr++;
         val = (val << 3) + OCTVALUE(c);
         if (cur_ptr < line_end_ptr)
         {
          c = *cur_ptr;
          if (ISOCTAL(c))
          {
           cur_ptr++;
           val = (val << 3) + OCTVALUE(c);
          }
         }
        }
       }
       c = val & 0377;
       if (c == '\0' || IS_HIGHBIT_SET(c))
        saw_non_ascii = 1;
      }
      break;
     case 'x':

      if (cur_ptr < line_end_ptr)
      {
       char hexchar = *cur_ptr;

       if (isxdigit((unsigned char) hexchar))
       {
        int val = GetDecimalFromHex(hexchar);

        cur_ptr++;
        if (cur_ptr < line_end_ptr)
        {
         hexchar = *cur_ptr;
         if (isxdigit((unsigned char) hexchar))
         {
          cur_ptr++;
          val = (val << 4) + GetDecimalFromHex(hexchar);
         }
        }
        c = val & 0xff;
        if (c == '\0' || IS_HIGHBIT_SET(c))
         saw_non_ascii = 1;
       }
      }
      break;
     case 'b':
      c = '\b';
      break;
     case 'f':
      c = '\f';
      break;
     case 'n':
      c = '\n';
      break;
     case 'r':
      c = '\r';
      break;
     case 't':
      c = '\t';
      break;
     case 'v':
      c = '\v';
      break;





    }
   }


   *output_ptr++ = c;
  }


  input_len = end_ptr - start_ptr;
  if (input_len == cstate->null_print_len &&
   strncmp(start_ptr, cstate->null_print, input_len) == 0)
   cstate->raw_fields[fieldno] = ((void*)0);
  else
  {






   if (saw_non_ascii)
   {
    char *fld = cstate->raw_fields[fieldno];

    pg_verifymbstr(fld, output_ptr - fld, 0);
   }
  }


  *output_ptr++ = '\0';

  fieldno++;

  if (!found_delim)
   break;
 }


 output_ptr--;
 Assert(*output_ptr == '\0');
 cstate->attribute_buf.len = (output_ptr - cstate->attribute_buf.data);

 return fieldno;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int text ;
struct TYPE_9__ {int rm_so; int rm_eo; } ;
typedef TYPE_1__ regmatch_t ;
typedef int regex_t ;
typedef int pg_wchar ;
typedef int errMsg ;
struct TYPE_10__ {int * data; int len; } ;
typedef TYPE_2__ StringInfoData ;


 int CHECK_FOR_INTERRUPTS () ;
 int ERRCODE_INVALID_REGULAR_EXPRESSION ;
 int ERROR ;
 int REGEXP_REPLACE_BACKREF_CNT ;
 int REG_NOMATCH ;
 int REG_OKAY ;
 scalar_t__ VARDATA_ANY (int *) ;
 int VARSIZE_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int appendBinaryStringInfo (TYPE_2__*,char*,int) ;
 int appendStringInfoRegexpSubstr (TYPE_2__*,int *,TYPE_1__*,char*,int) ;
 int appendStringInfoText (TYPE_2__*,int *) ;
 int charlen_to_bytelen (char*,int) ;
 int check_replace_text_has_escape_char (int *) ;
 int * cstring_to_text_with_len (int *,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 int initStringInfo (TYPE_2__*) ;
 scalar_t__ palloc (int) ;
 int pfree (int *) ;
 size_t pg_mb2wchar_with_len (scalar_t__,int *,int) ;
 int pg_regerror (int,int *,char*,int) ;
 int pg_regexec (int *,int *,size_t,int,int *,int,TYPE_1__*,int ) ;

text *
replace_text_regexp(text *src_text, void *regexp,
     text *replace_text, bool glob)
{
 text *ret_text;
 regex_t *re = (regex_t *) regexp;
 int src_text_len = VARSIZE_ANY_EXHDR(src_text);
 StringInfoData buf;
 regmatch_t pmatch[REGEXP_REPLACE_BACKREF_CNT];
 pg_wchar *data;
 size_t data_len;
 int search_start;
 int data_pos;
 char *start_ptr;
 bool have_escape;

 initStringInfo(&buf);


 data = (pg_wchar *) palloc((src_text_len + 1) * sizeof(pg_wchar));
 data_len = pg_mb2wchar_with_len(VARDATA_ANY(src_text), data, src_text_len);


 have_escape = check_replace_text_has_escape_char(replace_text);


 start_ptr = (char *) VARDATA_ANY(src_text);
 data_pos = 0;

 search_start = 0;
 while (search_start <= data_len)
 {
  int regexec_result;

  CHECK_FOR_INTERRUPTS();

  regexec_result = pg_regexec(re,
         data,
         data_len,
         search_start,
         ((void*)0),
         REGEXP_REPLACE_BACKREF_CNT,
         pmatch,
         0);

  if (regexec_result == REG_NOMATCH)
   break;

  if (regexec_result != REG_OKAY)
  {
   char errMsg[100];

   CHECK_FOR_INTERRUPTS();
   pg_regerror(regexec_result, re, errMsg, sizeof(errMsg));
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_REGULAR_EXPRESSION),
      errmsg("regular expression failed: %s", errMsg)));
  }





  if (pmatch[0].rm_so - data_pos > 0)
  {
   int chunk_len;

   chunk_len = charlen_to_bytelen(start_ptr,
             pmatch[0].rm_so - data_pos);
   appendBinaryStringInfo(&buf, start_ptr, chunk_len);





   start_ptr += chunk_len;
   data_pos = pmatch[0].rm_so;
  }





  if (have_escape)
   appendStringInfoRegexpSubstr(&buf, replace_text, pmatch,
           start_ptr, data_pos);
  else
   appendStringInfoText(&buf, replace_text);


  start_ptr += charlen_to_bytelen(start_ptr,
          pmatch[0].rm_eo - data_pos);
  data_pos = pmatch[0].rm_eo;




  if (!glob)
   break;







  search_start = data_pos;
  if (pmatch[0].rm_so == pmatch[0].rm_eo)
   search_start++;
 }




 if (data_pos < data_len)
 {
  int chunk_len;

  chunk_len = ((char *) src_text + VARSIZE_ANY(src_text)) - start_ptr;
  appendBinaryStringInfo(&buf, start_ptr, chunk_len);
 }

 ret_text = cstring_to_text_with_len(buf.data, buf.len);
 pfree(buf.data);
 pfree(data);

 return ret_text;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int text ;
struct TYPE_3__ {int rm_so; int rm_eo; } ;
typedef TYPE_1__ regmatch_t ;
typedef int StringInfo ;


 int Assert (int) ;
 char* VARDATA_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int appendBinaryStringInfo (int ,char const*,int) ;
 int appendStringInfoChar (int ,char) ;
 int charlen_to_bytelen (char*,int) ;
 int pg_database_encoding_max_length () ;
 int pg_mblen (char const*) ;

__attribute__((used)) static void
appendStringInfoRegexpSubstr(StringInfo str, text *replace_text,
        regmatch_t *pmatch,
        char *start_ptr, int data_pos)
{
 const char *p = VARDATA_ANY(replace_text);
 const char *p_end = p + VARSIZE_ANY_EXHDR(replace_text);
 int eml = pg_database_encoding_max_length();

 for (;;)
 {
  const char *chunk_start = p;
  int so;
  int eo;


  if (eml == 1)
  {
   for (; p < p_end && *p != '\\'; p++)
                   ;
  }
  else
  {
   for (; p < p_end && *p != '\\'; p += pg_mblen(p))
                   ;
  }


  if (p > chunk_start)
   appendBinaryStringInfo(str, chunk_start, p - chunk_start);


  if (p >= p_end)
   break;
  p++;

  if (p >= p_end)
  {

   appendStringInfoChar(str, '\\');
   break;
  }

  if (*p >= '1' && *p <= '9')
  {

   int idx = *p - '0';

   so = pmatch[idx].rm_so;
   eo = pmatch[idx].rm_eo;
   p++;
  }
  else if (*p == '&')
  {

   so = pmatch[0].rm_so;
   eo = pmatch[0].rm_eo;
   p++;
  }
  else if (*p == '\\')
  {

   appendStringInfoChar(str, '\\');
   p++;
   continue;
  }
  else
  {





   appendStringInfoChar(str, '\\');
   continue;
  }

  if (so != -1 && eo != -1)
  {




   char *chunk_start;
   int chunk_len;

   Assert(so >= data_pos);
   chunk_start = start_ptr;
   chunk_start += charlen_to_bytelen(chunk_start, so - data_pos);
   chunk_len = charlen_to_bytelen(chunk_start, eo - so);
   appendBinaryStringInfo(str, chunk_start, chunk_len);
  }
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pg_wchar ;
typedef int pg_saslprep_rc ;


 void* ALLOC (int) ;
 int Assert (int) ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int FREE (int*) ;
 scalar_t__ IS_CODE_IN_TABLE (int,int ) ;
 int LCat_codepoint_ranges ;
 scalar_t__ MAX_PASSWORD_LENGTH ;
 int RandALCat_codepoint_ranges ;
 int SASLPREP_INVALID_UTF8 ;
 int SASLPREP_OOM ;
 int SASLPREP_PROHIBITED ;
 int SASLPREP_SUCCESS ;
 char* STRDUP (char const*) ;
 int commonly_mapped_to_nothing_ranges ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int non_ascii_space_ranges ;
 scalar_t__ pg_is_ascii_string (char const*) ;
 int pg_utf8_string_len (char const*) ;
 scalar_t__ pg_utf_mblen (unsigned char*) ;
 int prohibited_output_ranges ;
 scalar_t__ strlen (char const*) ;
 int unassigned_codepoint_ranges ;
 int* unicode_normalize_kc (int*) ;
 int unicode_to_utf8 (int,unsigned char*) ;
 int utf8_to_unicode (unsigned char*) ;

pg_saslprep_rc
pg_saslprep(const char *input, char **output)
{
 pg_wchar *input_chars = ((void*)0);
 pg_wchar *output_chars = ((void*)0);
 int input_size;
 char *result;
 int result_size;
 int count;
 int i;
 bool contains_RandALCat;
 unsigned char *p;
 pg_wchar *wp;


 *output = ((void*)0);


 if (strlen(input) > MAX_PASSWORD_LENGTH)
 {

  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("password too long")));



 }





 if (pg_is_ascii_string(input))
 {
  *output = STRDUP(input);
  if (!(*output))
   goto oom;
  return SASLPREP_SUCCESS;
 }






 input_size = pg_utf8_string_len(input);
 if (input_size < 0)
  return SASLPREP_INVALID_UTF8;

 input_chars = ALLOC((input_size + 1) * sizeof(pg_wchar));
 if (!input_chars)
  goto oom;

 p = (unsigned char *) input;
 for (i = 0; i < input_size; i++)
 {
  input_chars[i] = utf8_to_unicode(p);
  p += pg_utf_mblen(p);
 }
 input_chars[i] = (pg_wchar) '\0';
 count = 0;
 for (i = 0; i < input_size; i++)
 {
  pg_wchar code = input_chars[i];

  if (IS_CODE_IN_TABLE(code, non_ascii_space_ranges))
   input_chars[count++] = 0x0020;
  else if (IS_CODE_IN_TABLE(code, commonly_mapped_to_nothing_ranges))
  {

  }
  else
   input_chars[count++] = code;
 }
 input_chars[count] = (pg_wchar) '\0';
 input_size = count;

 if (input_size == 0)
  goto prohibited;





 output_chars = unicode_normalize_kc(input_chars);
 if (!output_chars)
  goto oom;





 for (i = 0; i < input_size; i++)
 {
  pg_wchar code = input_chars[i];

  if (IS_CODE_IN_TABLE(code, prohibited_output_ranges))
   goto prohibited;
  if (IS_CODE_IN_TABLE(code, unassigned_codepoint_ranges))
   goto prohibited;
 }
 contains_RandALCat = 0;
 for (i = 0; i < input_size; i++)
 {
  pg_wchar code = input_chars[i];

  if (IS_CODE_IN_TABLE(code, RandALCat_codepoint_ranges))
  {
   contains_RandALCat = 1;
   break;
  }
 }

 if (contains_RandALCat)
 {
  pg_wchar first = input_chars[0];
  pg_wchar last = input_chars[input_size - 1];

  for (i = 0; i < input_size; i++)
  {
   pg_wchar code = input_chars[i];

   if (IS_CODE_IN_TABLE(code, LCat_codepoint_ranges))
    goto prohibited;
  }

  if (!IS_CODE_IN_TABLE(first, RandALCat_codepoint_ranges) ||
   !IS_CODE_IN_TABLE(last, RandALCat_codepoint_ranges))
   goto prohibited;
 }




 result_size = 0;
 for (wp = output_chars; *wp; wp++)
 {
  unsigned char buf[4];

  unicode_to_utf8(*wp, buf);
  result_size += pg_utf_mblen(buf);
 }

 result = ALLOC(result_size + 1);
 if (!result)
  goto oom;





 p = (unsigned char *) result;
 for (wp = output_chars; *wp; wp++)
 {
  unicode_to_utf8(*wp, p);
  p += pg_utf_mblen(p);
 }
 Assert((char *) p == result + result_size);
 *p = '\0';

 FREE(input_chars);
 FREE(output_chars);

 *output = result;
 return SASLPREP_SUCCESS;

prohibited:
 if (input_chars)
  FREE(input_chars);
 if (output_chars)
  FREE(output_chars);

 return SASLPREP_PROHIBITED;

oom:
 if (input_chars)
  FREE(input_chars);
 if (output_chars)
  FREE(output_chars);

 return SASLPREP_OOM;
}

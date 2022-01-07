
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int UStringSearch ;
typedef int UErrorCode ;
typedef int UCollator ;
typedef int UChar ;
typedef int UBreakIterator ;


 int STRPOS_CHECK_STATUS (int ,char*) ;
 int UCOL_SECONDARY ;
 int UCOL_STRENGTH ;
 int USEARCH_DONE ;
 int U_BRK_SAFECLONE_BUFFERSIZE ;
 int U_ILLEGAL_ARGUMENT_ERROR ;
 int U_ZERO_ERROR ;
 int efree (int *) ;
 int grapheme_count_graphemes (int *,int *,int) ;
 int * grapheme_get_break_iterator (unsigned char*,int *) ;
 int grapheme_get_haystack_offset (int *,int) ;
 int intl_convert_utf8_to_utf16 (int **,int*,char*,size_t,int *) ;
 int ubrk_close (int *) ;
 scalar_t__ ubrk_isBoundary (int *,int) ;
 int ubrk_setText (int *,int *,int,int *) ;
 int ucol_setAttribute (int *,int ,int ,int *) ;
 int usearch_close (int *) ;
 int * usearch_getCollator (int *) ;
 int usearch_last (int *,int *) ;
 int usearch_next (int *,int *) ;
 int * usearch_open (int *,int,int *,int,char*,int *,int *) ;
 int usearch_reset (int *) ;
 int usearch_setOffset (int *,int,int *) ;

int32_t grapheme_strpos_utf16(char *haystack, size_t haystack_len, char *needle, size_t needle_len, int32_t offset, int32_t *puchar_pos, int f_ignore_case, int last)
{
 UChar *uhaystack = ((void*)0), *uneedle = ((void*)0);
 int32_t uhaystack_len = 0, uneedle_len = 0, char_pos, ret_pos, offset_pos = 0;
 unsigned char u_break_iterator_buffer[U_BRK_SAFECLONE_BUFFERSIZE];
 UBreakIterator* bi = ((void*)0);
 UErrorCode status;
 UStringSearch* src = ((void*)0);

 if(puchar_pos) {
  *puchar_pos = -1;
 }


 status = U_ZERO_ERROR;
 intl_convert_utf8_to_utf16(&uhaystack, &uhaystack_len, haystack, haystack_len, &status );
 STRPOS_CHECK_STATUS(status, "Error converting input string to UTF-16");

 status = U_ZERO_ERROR;
 intl_convert_utf8_to_utf16(&uneedle, &uneedle_len, needle, needle_len, &status );
 STRPOS_CHECK_STATUS(status, "Error converting needle string to UTF-16");


 status = U_ZERO_ERROR;
 bi = grapheme_get_break_iterator(u_break_iterator_buffer, &status );
 STRPOS_CHECK_STATUS(status, "Failed to get iterator");
 status = U_ZERO_ERROR;
 ubrk_setText(bi, uhaystack, uhaystack_len, &status);
 STRPOS_CHECK_STATUS(status, "Failed to set up iterator");

 status = U_ZERO_ERROR;
 src = usearch_open(uneedle, uneedle_len, uhaystack, uhaystack_len, "", bi, &status);
 STRPOS_CHECK_STATUS(status, "Error creating search object");

 if(f_ignore_case) {
  UCollator *coll = usearch_getCollator(src);
  status = U_ZERO_ERROR;
  ucol_setAttribute(coll, UCOL_STRENGTH, UCOL_SECONDARY, &status);
  STRPOS_CHECK_STATUS(status, "Error setting collation strength");
  usearch_reset(src);
 }

 if(offset != 0) {
  offset_pos = grapheme_get_haystack_offset(bi, offset);
  if(offset_pos == -1) {
   status = U_ILLEGAL_ARGUMENT_ERROR;
   STRPOS_CHECK_STATUS(status, "Invalid search offset");
  }
  status = U_ZERO_ERROR;
  usearch_setOffset(src, offset_pos, &status);
  STRPOS_CHECK_STATUS(status, "Invalid search offset");
 }


 if(last) {
  char_pos = usearch_last(src, &status);
  if(char_pos < offset_pos) {

   char_pos = USEARCH_DONE;
  }
 } else {
  char_pos = usearch_next(src, &status);
 }
 STRPOS_CHECK_STATUS(status, "Error looking up string");
 if(char_pos != USEARCH_DONE && ubrk_isBoundary(bi, char_pos)) {
  ret_pos = grapheme_count_graphemes(bi, uhaystack,char_pos);
  if(puchar_pos) {
   *puchar_pos = char_pos;
  }
 } else {
  ret_pos = -1;
 }

 if (uhaystack) {
  efree( uhaystack );
 }
 if (uneedle) {
  efree( uneedle );
 }
 ubrk_close (bi);
 usearch_close (src);

 return ret_pos;
}

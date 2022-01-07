
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int UErrorCode ;
typedef int UChar ;
typedef int UBreakIterator ;


 int UBRK_DONE ;
 int U_ZERO_ERROR ;
 int ubrk_next (int *) ;
 int ubrk_setText (int *,int *,int,int *) ;

int32_t grapheme_count_graphemes(UBreakIterator *bi, UChar *string, int32_t string_len)
{
 int ret_len = 0;
 int pos = 0;
 UErrorCode status = U_ZERO_ERROR;

 ubrk_setText(bi, string, string_len, &status);

 do {

  pos = ubrk_next(bi);

  if ( UBRK_DONE != pos ) {
   ret_len++;
  }

 } while ( UBRK_DONE != pos );

 return ret_len;
}

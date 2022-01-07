
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int UErrorCode ;
typedef int UChar ;
typedef int UBreakIterator ;


 int UBRK_DONE ;
 int U_BRK_SAFECLONE_BUFFERSIZE ;
 scalar_t__ U_FAILURE (int ) ;
 int U_ZERO_ERROR ;
 int * grapheme_get_break_iterator (void*,int *) ;
 int ubrk_close (int *) ;
 int ubrk_next (int *) ;
 int ubrk_setText (int *,int const*,int,int *) ;

int32_t grapheme_split_string(const UChar *text, int32_t text_length, int boundary_array[], int boundary_array_len )
{
 unsigned char u_break_iterator_buffer[U_BRK_SAFECLONE_BUFFERSIZE];
 UErrorCode status = U_ZERO_ERROR;
 int ret_len, pos;
 UBreakIterator* bi;

 bi = grapheme_get_break_iterator((void*)u_break_iterator_buffer, &status );

 if( U_FAILURE(status) ) {
  return -1;
 }

 ubrk_setText(bi, text, text_length, &status);

 pos = 0;

 for ( ret_len = 0; pos != UBRK_DONE; ) {

  pos = ubrk_next(bi);

  if ( pos != UBRK_DONE ) {

   if ( ((void*)0) != boundary_array && ret_len < boundary_array_len ) {
    boundary_array[ret_len] = pos;
   }

   ret_len++;
  }
 }

 ubrk_close(bi);

 return ret_len;
}

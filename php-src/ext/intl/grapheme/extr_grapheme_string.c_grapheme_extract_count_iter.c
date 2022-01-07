
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int UBreakIterator ;


 int UBRK_DONE ;
 int ubrk_next (int *) ;

__attribute__((used)) static inline int32_t
grapheme_extract_count_iter(UBreakIterator *bi, int32_t size, unsigned char *pstr, int32_t str_len)
{
 int next_pos = 0;
 int ret_pos = 0;

 while ( size ) {
  next_pos = ubrk_next(bi);

  if ( UBRK_DONE == next_pos ) {
   break;
  }
  ret_pos = next_pos;
  size--;
 }

 return ret_pos;
}

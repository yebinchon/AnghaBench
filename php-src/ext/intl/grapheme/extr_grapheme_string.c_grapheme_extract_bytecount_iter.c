
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int UBreakIterator ;


 int UBRK_DONE ;
 int ubrk_next (int *) ;

__attribute__((used)) static inline int32_t
grapheme_extract_bytecount_iter(UBreakIterator *bi, int32_t bsize, unsigned char *pstr, int32_t str_len)
{
 int pos = 0;
 int ret_pos = 0;

 while ( 1 ) {
  pos = ubrk_next(bi);

  if ( UBRK_DONE == pos ) {
   break;
  }

  if ( pos > bsize ) {
   break;
  }

  ret_pos = pos;
 }

 return ret_pos;
}

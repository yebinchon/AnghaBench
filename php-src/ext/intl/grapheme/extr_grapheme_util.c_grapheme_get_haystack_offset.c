
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;
typedef int UBreakIterator ;


 scalar_t__ UBRK_DONE ;
 int ubrk_last (int *) ;
 scalar_t__ ubrk_next (int *) ;
 scalar_t__ ubrk_previous (int *) ;

int32_t grapheme_get_haystack_offset(UBreakIterator* bi, int32_t offset)
{
 int32_t pos;
 int32_t (*iter_op)(UBreakIterator* bi);
 int iter_incr;

 if ( 0 == offset ) {
  return 0;
 }

 if ( offset < 0 ) {
  iter_op = ubrk_previous;
  ubrk_last(bi);
  iter_incr = 1;
 }
 else {
  iter_op = ubrk_next;
  iter_incr = -1;
 }

 pos = 0;

 while ( pos != UBRK_DONE && offset != 0 ) {

  pos = iter_op(bi);

  if ( UBRK_DONE != pos ) {
   offset += iter_incr;
  }
 }

 if ( offset != 0 ) {
  return -1;
 }

 return pos;
}

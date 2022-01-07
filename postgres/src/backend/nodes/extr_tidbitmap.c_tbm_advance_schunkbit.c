
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bitmapword ;
struct TYPE_3__ {int* words; } ;
typedef TYPE_1__ PagetableEntry ;


 int BITNUM (int) ;
 int PAGES_PER_CHUNK ;
 int WORDNUM (int) ;

__attribute__((used)) static inline void
tbm_advance_schunkbit(PagetableEntry *chunk, int *schunkbitp)
{
 int schunkbit = *schunkbitp;

 while (schunkbit < PAGES_PER_CHUNK)
 {
  int wordnum = WORDNUM(schunkbit);
  int bitnum = BITNUM(schunkbit);

  if ((chunk->words[wordnum] & ((bitmapword) 1 << bitnum)) != 0)
   break;
  schunkbit++;
 }

 *schunkbitp = schunkbit;
}

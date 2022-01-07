
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_6__ {size_t dec_index; scalar_t__ codepoint; } ;
typedef TYPE_1__ pg_unicode_decomposition ;


 scalar_t__ DECOMPOSITION_NO_COMPOSE (TYPE_1__ const*) ;
 int DECOMPOSITION_SIZE (TYPE_1__ const*) ;
 scalar_t__ LBASE ;
 scalar_t__ LCOUNT ;
 scalar_t__ SBASE ;
 scalar_t__ SCOUNT ;
 scalar_t__ TBASE ;
 scalar_t__ TCOUNT ;
 TYPE_1__* UnicodeDecompMain ;
 scalar_t__* UnicodeDecomp_codepoints ;
 scalar_t__ VBASE ;
 scalar_t__ VCOUNT ;
 int lengthof (TYPE_1__*) ;

__attribute__((used)) static bool
recompose_code(uint32 start, uint32 code, uint32 *result)
{





 if (start >= LBASE && start < LBASE + LCOUNT &&
  code >= VBASE && code < VBASE + VCOUNT)
 {

  uint32 lindex = start - LBASE;
  uint32 vindex = code - VBASE;

  *result = SBASE + (lindex * VCOUNT + vindex) * TCOUNT;
  return 1;
 }

 else if (start >= SBASE && start < (SBASE + SCOUNT) &&
    ((start - SBASE) % TCOUNT) == 0 &&
    code >= TBASE && code < (TBASE + TCOUNT))
 {

  uint32 tindex = code - TBASE;

  *result = start + tindex;
  return 1;
 }
 else
 {
  int i;







  for (i = 0; i < lengthof(UnicodeDecompMain); i++)
  {
   const pg_unicode_decomposition *entry = &UnicodeDecompMain[i];

   if (DECOMPOSITION_SIZE(entry) != 2)
    continue;

   if (DECOMPOSITION_NO_COMPOSE(entry))
    continue;

   if (start == UnicodeDecomp_codepoints[entry->dec_index] &&
    code == UnicodeDecomp_codepoints[entry->dec_index + 1])
   {
    *result = entry->codepoint;
    return 1;
   }
  }
 }

 return 0;
}

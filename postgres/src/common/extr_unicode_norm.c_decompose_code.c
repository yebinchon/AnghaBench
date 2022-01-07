
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;
typedef scalar_t__ pg_wchar ;
typedef int pg_unicode_decomposition ;


 scalar_t__ DECOMPOSITION_SIZE (int *) ;
 scalar_t__ LBASE ;
 scalar_t__ SBASE ;
 scalar_t__ SCOUNT ;
 scalar_t__ TBASE ;
 scalar_t__ TCOUNT ;
 scalar_t__ VBASE ;
 scalar_t__ VCOUNT ;
 scalar_t__* get_code_decomposition (int *,int*) ;
 int * get_code_entry (scalar_t__) ;

__attribute__((used)) static void
decompose_code(pg_wchar code, pg_wchar **result, int *current)
{
 pg_unicode_decomposition *entry;
 int i;
 const uint32 *decomp;
 int dec_size;







 if (code >= SBASE && code < SBASE + SCOUNT)
 {
  uint32 l,
     v,
     tindex,
     sindex;
  pg_wchar *res = *result;

  sindex = code - SBASE;
  l = LBASE + sindex / (VCOUNT * TCOUNT);
  v = VBASE + (sindex % (VCOUNT * TCOUNT)) / TCOUNT;
  tindex = sindex % TCOUNT;

  res[*current] = l;
  (*current)++;
  res[*current] = v;
  (*current)++;

  if (tindex != 0)
  {
   res[*current] = TBASE + tindex;
   (*current)++;
  }

  return;
 }

 entry = get_code_entry(code);







 if (entry == ((void*)0) || DECOMPOSITION_SIZE(entry) == 0)
 {
  pg_wchar *res = *result;

  res[*current] = code;
  (*current)++;
  return;
 }




 decomp = get_code_decomposition(entry, &dec_size);
 for (i = 0; i < dec_size; i++)
 {
  pg_wchar lcode = (pg_wchar) decomp[i];


  decompose_code(lcode, result, current);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;
typedef scalar_t__ pg_wchar ;
typedef int pg_unicode_decomposition ;


 scalar_t__ DECOMPOSITION_SIZE (int *) ;
 scalar_t__ SBASE ;
 scalar_t__ SCOUNT ;
 scalar_t__ TCOUNT ;
 scalar_t__* get_code_decomposition (int *,int*) ;
 int * get_code_entry (scalar_t__) ;

__attribute__((used)) static int
get_decomposed_size(pg_wchar code)
{
 pg_unicode_decomposition *entry;
 int size = 0;
 int i;
 const uint32 *decomp;
 int dec_size;







 if (code >= SBASE && code < SBASE + SCOUNT)
 {
  uint32 tindex,
     sindex;

  sindex = code - SBASE;
  tindex = sindex % TCOUNT;

  if (tindex != 0)
   return 3;
  return 2;
 }

 entry = get_code_entry(code);





 if (entry == ((void*)0) || DECOMPOSITION_SIZE(entry) == 0)
  return 1;





 decomp = get_code_decomposition(entry, &dec_size);
 for (i = 0; i < dec_size; i++)
 {
  uint32 lcode = decomp[i];

  size += get_decomposed_size(lcode);
 }

 return size;
}

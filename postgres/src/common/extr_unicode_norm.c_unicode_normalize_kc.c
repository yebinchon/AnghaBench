
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char uint32 ;
typedef char pg_wchar ;
struct TYPE_3__ {int comb_class; } ;
typedef TYPE_1__ pg_unicode_decomposition ;


 scalar_t__ ALLOC (int) ;
 int Assert (int) ;
 int FREE (char*) ;
 int decompose_code (char const,char**,int*) ;
 TYPE_1__* get_code_entry (char) ;
 scalar_t__ get_decomposed_size (char const) ;
 scalar_t__ recompose_code (char,char,char*) ;

pg_wchar *
unicode_normalize_kc(const pg_wchar *input)
{
 pg_wchar *decomp_chars;
 pg_wchar *recomp_chars;
 int decomp_size,
    current_size;
 int count;
 const pg_wchar *p;


 int last_class;
 int starter_pos;
 int target_pos;
 uint32 starter_ch;






 decomp_size = 0;
 for (p = input; *p; p++)
  decomp_size += get_decomposed_size(*p);

 decomp_chars = (pg_wchar *) ALLOC((decomp_size + 1) * sizeof(pg_wchar));
 if (decomp_chars == ((void*)0))
  return ((void*)0);





 current_size = 0;
 for (p = input; *p; p++)
  decompose_code(*p, &decomp_chars, &current_size);
 decomp_chars[decomp_size] = '\0';
 Assert(decomp_size == current_size);




 for (count = 1; count < decomp_size; count++)
 {
  pg_wchar prev = decomp_chars[count - 1];
  pg_wchar next = decomp_chars[count];
  pg_wchar tmp;
  pg_unicode_decomposition *prevEntry = get_code_entry(prev);
  pg_unicode_decomposition *nextEntry = get_code_entry(next);






  if (prevEntry == ((void*)0) || nextEntry == ((void*)0))
   continue;
  if (nextEntry->comb_class == 0x0 || prevEntry->comb_class == 0x0)
   continue;

  if (prevEntry->comb_class <= nextEntry->comb_class)
   continue;


  tmp = decomp_chars[count - 1];
  decomp_chars[count - 1] = decomp_chars[count];
  decomp_chars[count] = tmp;


  if (count > 1)
   count -= 2;
 }







 recomp_chars = (pg_wchar *) ALLOC((decomp_size + 1) * sizeof(pg_wchar));
 if (!recomp_chars)
 {
  FREE(decomp_chars);
  return ((void*)0);
 }

 last_class = -1;
 starter_pos = 0;
 target_pos = 1;
 starter_ch = recomp_chars[0] = decomp_chars[0];

 for (count = 1; count < decomp_size; count++)
 {
  pg_wchar ch = decomp_chars[count];
  pg_unicode_decomposition *ch_entry = get_code_entry(ch);
  int ch_class = (ch_entry == ((void*)0)) ? 0 : ch_entry->comb_class;
  pg_wchar composite;

  if (last_class < ch_class &&
   recompose_code(starter_ch, ch, &composite))
  {
   recomp_chars[starter_pos] = composite;
   starter_ch = composite;
  }
  else if (ch_class == 0)
  {
   starter_pos = target_pos;
   starter_ch = ch;
   last_class = -1;
   recomp_chars[target_pos++] = ch;
  }
  else
  {
   last_class = ch_class;
   recomp_chars[target_pos++] = ch;
  }
 }
 recomp_chars[target_pos] = (pg_wchar) '\0';

 FREE(decomp_chars);

 return recomp_chars;
}

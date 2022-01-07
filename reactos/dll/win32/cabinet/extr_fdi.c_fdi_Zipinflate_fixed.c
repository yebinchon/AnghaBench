
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Ziphuft {int dummy; } ;
typedef int fdi_decomp_state ;
typedef int cab_ULONG ;
typedef int cab_LONG ;


 int CAB (int ) ;
 int* ZIP (int ) ;
 int Zipcpdext ;
 int Zipcpdist ;
 int Zipcplens ;
 int Zipcplext ;
 int fdi ;
 int fdi_Ziphuft_build (int*,int,int,int ,int ,struct Ziphuft**,int*,int *) ;
 int fdi_Ziphuft_free (int ,struct Ziphuft*) ;
 int fdi_Zipinflate_codes (struct Ziphuft*,struct Ziphuft*,int,int,int *) ;
 int ll ;

__attribute__((used)) static cab_LONG fdi_Zipinflate_fixed(fdi_decomp_state *decomp_state)
{
  struct Ziphuft *fixed_tl;
  struct Ziphuft *fixed_td;
  cab_LONG fixed_bl, fixed_bd;
  cab_LONG i;
  cab_ULONG *l;

  l = ZIP(ll);


  for(i = 0; i < 144; i++)
    l[i] = 8;
  for(; i < 256; i++)
    l[i] = 9;
  for(; i < 280; i++)
    l[i] = 7;
  for(; i < 288; i++)
    l[i] = 8;
  fixed_bl = 7;
  if((i = fdi_Ziphuft_build(l, 288, 257, Zipcplens, Zipcplext, &fixed_tl, &fixed_bl, decomp_state)))
    return i;


  for(i = 0; i < 30; i++)
    l[i] = 5;
  fixed_bd = 5;
  if((i = fdi_Ziphuft_build(l, 30, 0, Zipcpdist, Zipcpdext, &fixed_td, &fixed_bd, decomp_state)) > 1)
  {
    fdi_Ziphuft_free(CAB(fdi), fixed_tl);
    return i;
  }


  i = fdi_Zipinflate_codes(fixed_tl, fixed_td, fixed_bl, fixed_bd, decomp_state);

  fdi_Ziphuft_free(CAB(fdi), fixed_td);
  fdi_Ziphuft_free(CAB(fdi), fixed_tl);
  return i;
}

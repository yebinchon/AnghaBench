
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u4byte ;
typedef size_t u1byte ;


 scalar_t__ ff_mult (int,size_t) ;
 int** fl_tab ;
 int** ft_tab ;
 int** il_tab ;
 size_t* isb_tab ;
 int** it_tab ;
 int* log_tab ;
 size_t* pow_tab ;
 size_t* rco_tab ;
 void* rotl (int,int) ;
 size_t* sbx_tab ;
 int tab_gen ;

__attribute__((used)) static void
gen_tabs(void)
{

 u4byte i,
    t;
 u1byte p,
    q;





 for (i = 0, p = 1; i < 256; ++i)
 {
  pow_tab[i] = (u1byte) p;
  log_tab[p] = (u1byte) i;

  p = p ^ (p << 1) ^ (p & 0x80 ? 0x01b : 0);
 }

 log_tab[1] = 0;
 p = 1;

 for (i = 0; i < 10; ++i)
 {
  rco_tab[i] = p;

  p = (p << 1) ^ (p & 0x80 ? 0x1b : 0);
 }







 for (i = 0; i < 256; ++i)
 {
  p = (i ? pow_tab[255 - log_tab[i]] : 0);
  q = p;
  q = (q >> 7) | (q << 1);
  p ^= q;
  q = (q >> 7) | (q << 1);
  p ^= q;
  q = (q >> 7) | (q << 1);
  p ^= q;
  q = (q >> 7) | (q << 1);
  p ^= q ^ 0x63;
  sbx_tab[i] = (u1byte) p;
  isb_tab[p] = (u1byte) i;
 }

 for (i = 0; i < 256; ++i)
 {
  p = sbx_tab[i];
  t = ((u4byte) ff_mult(2, p)) |
   ((u4byte) p << 8) |
   ((u4byte) p << 16) |
   ((u4byte) ff_mult(3, p) << 24);

  ft_tab[0][i] = t;
  ft_tab[1][i] = rotl(t, 8);
  ft_tab[2][i] = rotl(t, 16);
  ft_tab[3][i] = rotl(t, 24);

  p = isb_tab[i];
  t = ((u4byte) ff_mult(14, p)) |
   ((u4byte) ff_mult(9, p) << 8) |
   ((u4byte) ff_mult(13, p) << 16) |
   ((u4byte) ff_mult(11, p) << 24);

  it_tab[0][i] = t;
  it_tab[1][i] = rotl(t, 8);
  it_tab[2][i] = rotl(t, 16);
  it_tab[3][i] = rotl(t, 24);
 }

 tab_gen = 1;

}

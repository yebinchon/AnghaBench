
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UINT ;
typedef int BYTE ;


 int FF_MAX_LFN ;
 int LDIR_FstClusLO ;
 size_t LDIR_Ord ;
 int LLEF ;
 int* LfnOfs ;
 scalar_t__ ff_wtoupper (int const) ;
 int ld_word (int*) ;

__attribute__((used)) static int cmp_lfn (
 const WCHAR* lfnbuf,
 BYTE* dir
)
{
 UINT i, s;
 WCHAR wc, uc;


 if (ld_word(dir + LDIR_FstClusLO) != 0) return 0;

 i = ((dir[LDIR_Ord] & 0x3F) - 1) * 13;

 for (wc = 1, s = 0; s < 13; s++) {
  uc = ld_word(dir + LfnOfs[s]);
  if (wc != 0) {
   if (i >= FF_MAX_LFN || ff_wtoupper(uc) != ff_wtoupper(lfnbuf[i++])) {
    return 0;
   }
   wc = uc;
  } else {
   if (uc != 0xFFFF) return 0;
  }
 }

 if ((dir[LDIR_Ord] & LLEF) && wc && lfnbuf[i]) return 0;

 return 1;
}

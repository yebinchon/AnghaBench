
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UINT ;
typedef int BYTE ;


 int AM_LFN ;
 size_t LDIR_Attr ;
 size_t LDIR_Chksum ;
 int LDIR_FstClusLO ;
 size_t LDIR_Ord ;
 size_t LDIR_Type ;
 int LLEF ;
 int* LfnOfs ;
 int st_word (int*,int) ;

__attribute__((used)) static void put_lfn (
 const WCHAR* lfn,
 BYTE* dir,
 BYTE ord,
 BYTE sum
)
{
 UINT i, s;
 WCHAR wc;


 dir[LDIR_Chksum] = sum;
 dir[LDIR_Attr] = AM_LFN;
 dir[LDIR_Type] = 0;
 st_word(dir + LDIR_FstClusLO, 0);

 i = (ord - 1) * 13;
 s = wc = 0;
 do {
  if (wc != 0xFFFF) wc = lfn[i++];
  st_word(dir + LfnOfs[s], wc);
  if (wc == 0) wc = 0xFFFF;
 } while (++s < 13);
 if (wc == 0xFFFF || !lfn[i]) ord |= LLEF;
 dir[LDIR_Ord] = ord;
}

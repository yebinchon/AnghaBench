
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int ut16 ;
typedef int RAnal ;


 int R_META_TYPE_COMMENT ;
 int r_meta_set_string (int *,int ,int,char*) ;

void meta_gb_bankswitch_cmt(RAnal *a, ut64 addr, ut16 ldarg) {
 if(0x1fff <ldarg && ldarg < 0x4000 && addr < 0x4000)
  r_meta_set_string (a, R_META_TYPE_COMMENT, addr, "Bankswitch");
 if(0x6000 > ldarg && ldarg > 0x3fff)
  r_meta_set_string(a, R_META_TYPE_COMMENT, addr, "Ramswitch");
}

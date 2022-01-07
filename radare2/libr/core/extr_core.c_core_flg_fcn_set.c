
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int ut32 ;
typedef int RFlagItem ;
typedef int RFlag ;


 int R_FLAGS_FS_FUNCTIONS ;
 int * r_flag_set (int *,char const*,int ,int ) ;
 int r_flag_space_pop (int *) ;
 int r_flag_space_push (int *,int ) ;

__attribute__((used)) static RFlagItem *core_flg_fcn_set(RFlag *f, const char *name, ut64 addr, ut32 size) {
 r_flag_space_push (f, R_FLAGS_FS_FUNCTIONS);
 RFlagItem *res = r_flag_set (f, name, addr, size);
 r_flag_space_pop (f);
 return res;
}

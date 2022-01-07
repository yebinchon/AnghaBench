
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RFlagItem ;
typedef int RFlag ;


 int R_FLAGS_FS_CLASSES ;
 int * r_flag_get (int *,char const*) ;
 int r_flag_space_pop (int *) ;
 int r_flag_space_push (int *,int ) ;

__attribute__((used)) static RFlagItem *core_flg_class_get(RFlag *f, const char *name) {
 r_flag_space_push (f, R_FLAGS_FS_CLASSES);
 RFlagItem *res = r_flag_get (f, name);
 r_flag_space_pop (f);
 return res;
}

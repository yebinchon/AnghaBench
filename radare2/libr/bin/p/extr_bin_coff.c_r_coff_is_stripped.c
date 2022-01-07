
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int f_flags; } ;
struct r_bin_coff_obj {TYPE_1__ hdr; } ;


 int COFF_FLAGS_TI_F_LNNO ;
 int COFF_FLAGS_TI_F_LSYMS ;
 int COFF_FLAGS_TI_F_RELFLG ;

__attribute__((used)) static bool r_coff_is_stripped(struct r_bin_coff_obj *obj) {
 return !!(obj->hdr.f_flags & (COFF_FLAGS_TI_F_RELFLG | COFF_FLAGS_TI_F_LNNO | COFF_FLAGS_TI_F_LSYMS));

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
typedef int mach0_ut ;
struct TYPE_7__ {TYPE_2__* o; int buf; } ;
struct TYPE_6__ {TYPE_1__* info; } ;
struct TYPE_5__ {int big_endian; } ;
typedef TYPE_3__ RBinFile ;


 int r_buf_read_at (int ,int ,int *,size_t) ;
 int r_read_ble (int *,int ,int) ;
 int r_return_val_if_fail (int *,int) ;

__attribute__((used)) static bool read_ptr_pa(RBinFile *bf, ut64 paddr, mach0_ut *out) {
 r_return_val_if_fail (out, 0);
 r_return_val_if_fail (bf && bf->o && bf->o->info, 0);

 size_t ptr_size = sizeof (mach0_ut);
 ut8 pp[sizeof (mach0_ut)] = {0};

 int len = r_buf_read_at (bf->buf, paddr, pp, ptr_size);
 if (len != ptr_size) {
  return 0;
 }

 mach0_ut p = r_read_ble (&pp[0], bf->o->info->big_endian, 8 * ptr_size);
 *out = p;

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_3__ {int anal; scalar_t__ blocksize; } ;
typedef TYPE_1__ RCore ;


 int R_META_TYPE_DATA ;
 int r_meta_add (int ,int ,scalar_t__,scalar_t__,char*) ;
 int r_meta_cleanup (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void define_data_ntimes (RCore *core, ut64 off, int times, int type) {
 int i = 0;
 r_meta_cleanup (core->anal, off, off + core->blocksize);
 if (times < 0) {
  times = 1;
 }
 for (i = 0; i < times; i++, off += type) {
  r_meta_add (core->anal, R_META_TYPE_DATA, off, off + type, "");
 }
}

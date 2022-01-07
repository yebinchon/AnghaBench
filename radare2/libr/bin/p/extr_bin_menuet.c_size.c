
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_6__ {int buf; TYPE_1__* o; } ;
struct TYPE_5__ {scalar_t__ info; } ;
typedef TYPE_2__ RBinFile ;


 scalar_t__ info (TYPE_2__*) ;
 int r_buf_read_at (int ,int,int *,int) ;
 int r_read_ble32 (int *,int) ;

__attribute__((used)) static ut64 size(RBinFile *bf) {
 ut8 buf[4] = {0};
 if (!bf->o->info) {
  bf->o->info = info (bf);
 }
 if (!bf->o->info) {
  return 0;
 }
 r_buf_read_at (bf->buf, 16, buf, 4);
 return (ut64)r_read_ble32 (buf, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_6__ {int buf; TYPE_1__* o; } ;
struct TYPE_5__ {scalar_t__ info; } ;
typedef TYPE_2__ RBinFile ;


 scalar_t__ info (TYPE_2__*) ;
 scalar_t__ r_buf_read_le32_at (int ,int) ;
 int r_buf_size (int ) ;

__attribute__((used)) static ut64 size(RBinFile *bf) {
 ut64 text, data, syms, spsz;
 if (!bf) {
  return 0;
 }
 if (!bf->o->info) {
  bf->o->info = info (bf);
 }
 if (!bf->o->info) {
  return 0;
 }

 if (r_buf_size (bf->buf) < 28) {
  return 0;
 }
 text = r_buf_read_le32_at (bf->buf, 4);
 data = r_buf_read_le32_at (bf->buf, 8);
 syms = r_buf_read_le32_at (bf->buf, 16);
 spsz = r_buf_read_le32_at (bf->buf, 24);
 return text + data + syms + spsz + (6 * 4);
}

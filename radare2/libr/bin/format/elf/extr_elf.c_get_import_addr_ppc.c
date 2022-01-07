
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct ht_rel_t {int k; } ;
typedef int buf ;
struct TYPE_6__ {scalar_t__ endian; int b; } ;
struct TYPE_5__ {int offset; } ;
typedef TYPE_1__ RBinElfSection ;
typedef TYPE_2__ ELFOBJ ;


 int r_buf_read_at (int ,int ,int *,int) ;
 int r_read_be32 (int *) ;
 int r_read_le32 (int *) ;

__attribute__((used)) static ut64 get_import_addr_ppc(ELFOBJ *bin, struct ht_rel_t *rel, RBinElfSection *plt_section, int nrel) {
 ut8 buf[4] = { 0 };
 if (!plt_section) {
  return -1;
 }
 int len = r_buf_read_at (bin->b, plt_section->offset, buf, sizeof (buf));
 if (len < 4) {
  return -1;
 }

 if (bin->endian) {
  ut64 base = r_read_be32 (buf);
  base -= (nrel * 16);
  base += (rel->k * 16);
  return base;
 }
 ut64 base = r_read_le32 (buf);
 base -= (nrel * 12) + 20;
 base += (rel->k * 8);
 return base;
}

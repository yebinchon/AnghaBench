
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
typedef int ut16 ;
typedef int st64 ;
struct TYPE_6__ {int addend; int rva; int type; } ;
struct TYPE_5__ {int io; int (* write_at ) (int ,int,int*,int) ;int (* read_at ) (int ,int,int*,int) ;} ;
typedef TYPE_1__ RIOBind ;
typedef TYPE_2__ RBinElfReloc ;
 int r_read_le32 (int*) ;
 int r_write_le16 (int*,int) ;
 int r_write_le32 (int*,int) ;
 int r_write_le64 (int*,int) ;
 int stub1 (int ,int,int*,int) ;
 int stub10 (int ,int,int*,int) ;
 int stub2 (int ,int,int*,int) ;
 int stub3 (int ,int,int*,int) ;
 int stub4 (int ,int,int*,int) ;
 int stub5 (int ,int,int*,int) ;
 int stub6 (int ,int,int*,int) ;
 int stub7 (int ,int,int*,int) ;
 int stub8 (int ,int,int*,int) ;
 int stub9 (int ,int,int*,int) ;

__attribute__((used)) static void _patch_reloc(ut16 e_machine, RIOBind *iob, RBinElfReloc *rel, ut64 S, ut64 B, ut64 L) {
 ut64 val;
 ut64 A = rel->addend, P = rel->rva;
 ut8 buf[8];
 switch (e_machine) {
 case 147: {
  int low = 0, word = 0;
  switch (rel->type) {
  case 144:
   word = 2;
   val = (S + A - P + 0x8000) >> 16;
   break;
  case 143:
   word = 2;
   val = (S + A - P) & 0xffff;
   break;
  case 145:
   low = 14;
   val = (st64)(S + A - P) >> 2;
   break;
  case 142:
   low = 24;
   val = (st64)(S + A - P) >> 2;
   break;
  case 141:
   word = 4;
   val = S + A - P;
   break;
  default:
   break;
  }
  if (low) {

   switch (low) {
   case 14:
    val &= (1 << 14) - 1;
    iob->read_at (iob->io, rel->rva, buf, 2);
    r_write_le32 (buf, (r_read_le32 (buf) & ~((1<<16) - (1<<2))) | val << 2);
    iob->write_at (iob->io, rel->rva, buf, 2);
    break;
   case 24:
    val &= (1 << 24) - 1;
    iob->read_at (iob->io, rel->rva, buf, 4);
    r_write_le32 (buf, (r_read_le32 (buf) & ~((1<<26) - (1<<2))) | val << 2);
    iob->write_at (iob->io, rel->rva, buf, 4);
    break;
   }
  } else if (word) {

   switch (word) {
   case 2:
    r_write_le16 (buf, val);
    iob->write_at (iob->io, rel->rva, buf, 2);
    break;
   case 4:
    r_write_le32 (buf, val);
    iob->write_at (iob->io, rel->rva, buf, 4);
    break;
   }
  }
  break;
 }
 case 146: {
  int word = 0;
  switch (rel->type) {
  case 136:
   word = 1;
   val = S + A;
   break;
  case 140:
   word = 2;
   val = S + A;
   break;
  case 139:
  case 138:
   word = 4;
   val = S + A;
   break;
  case 137:
   word = 8;
   val = S + A;
   break;
  case 135:
  case 134:
   word = 4;
   val = S;
   break;
  case 130:
   word = 1;
   val = S + A - P;
   break;
  case 133:
   word = 2;
   val = S + A - P;
   break;
  case 132:
   word = 4;
   val = S + A - P;
   break;
  case 131:
   word = 8;
   val = S + A - P;
   break;
  case 129:
   word = 4;
   val = L + A - P;
   break;
  case 128:
   word = 8;
   val = B + A;
   break;
  default:

   break;
  }
  switch (word) {
  case 0:
   break;
  case 1:
   buf[0] = val;
   iob->write_at (iob->io, rel->rva, buf, 1);
   break;
  case 2:
   r_write_le16 (buf, val);
   iob->write_at (iob->io, rel->rva, buf, 2);
   break;
  case 4:
   r_write_le32 (buf, val);
   iob->write_at (iob->io, rel->rva, buf, 4);
   break;
  case 8:
   r_write_le64 (buf, val);
   iob->write_at (iob->io, rel->rva, buf, 8);
   break;
  }
  break;
 }
 }
}

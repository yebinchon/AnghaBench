
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
typedef int b ;
struct TYPE_3__ {int magic; int valid; int size; void* slotsize; void* unk1; void* unk0; int * uuid; void* version; int member_0; } ;
typedef TYPE_1__ SymbolsHeader ;
typedef int RBuffer ;


 int r_buf_read_at (int *,int ,int *,int) ;
 void* r_read_le16 (int *) ;
 void* r_read_le32 (int *) ;

__attribute__((used)) static SymbolsHeader parseHeader(RBuffer *buf) {
 ut8 b[64];
 SymbolsHeader sh = { 0 };
 (void)r_buf_read_at (buf, 0, b, sizeof (b));
 sh.magic = r_read_le32 (b);
 sh.version = r_read_le32 (b + 4);
 sh.valid = sh.magic == 0xff01ff02;
 int i;
 for (i = 0; i < 16; i++) {
  sh.uuid[i] = b[24 + i];
 }
 sh.unk0 = r_read_le16 (b + 0x28);
 sh.unk1 = r_read_le16 (b + 0x2c);
 sh.slotsize = r_read_le16 (b + 0x2e);
 sh.size = 0x40;
 return sh;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut32 ;
typedef int nm3 ;
typedef int nm2 ;
typedef int nm ;
typedef int b ;
struct TYPE_3__ {int addr; int cputype; int subtype; int n_segments; int namelen; int size; int segments; int cpu; int bits; int arch; int member_0; } ;
typedef TYPE_1__ SymbolsMetadata ;
typedef int RBuffer ;


 int parseSegments (int *,int,int) ;
 int r_buf_read_at (int *,int,int *,int) ;
 int r_read_le32 (int *) ;
 int subtypeString (int) ;
 int typeString (int,int *) ;

__attribute__((used)) static SymbolsMetadata parseMetadata(RBuffer *buf, int off) {
 SymbolsMetadata sm = { 0 };
 ut8 b[0x100] = { 0 };
 (void)r_buf_read_at (buf, off, b, sizeof (b));
 sm.addr = off;
 sm.cputype = r_read_le32 (b);
 sm.arch = typeString (sm.cputype, &sm.bits);


 sm.subtype = r_read_le32 (b + 4);
 sm.cpu = subtypeString (sm.subtype);

 sm.n_segments = r_read_le32 (b + 8);

 sm.namelen = r_read_le32 (b + 0xc);



 int delta = 16;
 sm.segments = parseSegments (buf, off + sm.namelen + delta, sm.n_segments);
 sm.size = (sm.n_segments * 32) + 120;


 ut32 nm, nm2, nm3;
 r_buf_read_at (buf, off + sm.size, (ut8*)&nm, sizeof (nm));
 r_buf_read_at (buf, off + sm.size + 4, (ut8*)&nm2, sizeof (nm2));
 r_buf_read_at (buf, off + sm.size + 8, (ut8*)&nm3, sizeof (nm3));

 if (r_read_le32 (&nm3) != 0xa1b22b1a) {
  sm.size -= 8;

 }
 return sm;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
typedef scalar_t__ ut16 ;
typedef int n ;
typedef int RBuffer ;


 int r_buf_read_at (int *,int ,int *,int) ;
 scalar_t__ r_read_le16 (scalar_t__*) ;

__attribute__((used)) static ut16 read16(RBuffer* b, ut64 addr) {
 ut16 n = 0;
 r_buf_read_at (b, addr, (ut8*)&n, sizeof (n));
 return r_read_le16 (&n);
}

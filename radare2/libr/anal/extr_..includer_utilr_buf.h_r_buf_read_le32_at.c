
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
typedef int ut32 ;
typedef int buf ;
typedef int RBuffer ;


 int UT32_MAX ;
 scalar_t__ r_buf_read_at (int *,int ,int *,int) ;
 int r_read_le32 (int *) ;

__attribute__((used)) static inline ut32 r_buf_read_le32_at(RBuffer *b, ut64 addr) {
 ut8 buf[sizeof (ut32)];
 int r = (int) r_buf_read_at (b, addr, buf, sizeof (buf));
 return r == sizeof (buf)? r_read_le32 (buf): UT32_MAX;
}

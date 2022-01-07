
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
typedef int buf ;
typedef int RBuffer ;


 int UT64_MAX ;
 scalar_t__ r_buf_read (int *,int *,int) ;
 int r_read_be64 (int *) ;

__attribute__((used)) static inline ut64 r_buf_read_be64(RBuffer *b) {
 ut8 buf[sizeof (ut64)];
 int r = (int) r_buf_read (b, buf, sizeof (buf));
 return r == sizeof (buf)? r_read_be64 (buf): UT64_MAX;
}

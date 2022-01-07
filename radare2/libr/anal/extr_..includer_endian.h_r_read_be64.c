
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int ut32 ;


 int r_read_at_be32 (void const*,int) ;
 scalar_t__ r_read_be32 (void const*) ;

__attribute__((used)) static inline ut64 r_read_be64(const void *src) {
 ut64 val = ((ut64)(r_read_be32 (src))) << 32;
 val |= r_read_at_be32 (src, sizeof (ut32));
 return val;
}

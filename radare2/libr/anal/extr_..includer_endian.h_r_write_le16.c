
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut16 ;


 int r_write_at_le8 (void*,int,int) ;
 int r_write_le8 (void*,int ) ;

__attribute__((used)) static inline void r_write_le16(void *dest, ut16 val) {
 r_write_le8 (dest, (ut8)val);
 r_write_at_le8 (dest, val >> 8, sizeof (ut8));
}

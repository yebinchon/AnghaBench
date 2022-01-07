
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
typedef int ut16 ;


 int r_write_at_le16 (void*,int,int) ;
 int r_write_le16 (void*,int) ;

__attribute__((used)) static inline void r_write_le32(void *dest, ut32 val) {
 r_write_le16 (dest, val);
 r_write_at_le16 (dest, val >> 16, sizeof (ut16));
}

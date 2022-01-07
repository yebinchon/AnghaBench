
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;


 int r_read_be32 (void const*) ;
 int r_read_le32 (void const*) ;

__attribute__((used)) static inline ut32 r_read_ble32(const void *src, bool big_endian) {
 return big_endian? r_read_be32 (src): r_read_le32 (src);
}

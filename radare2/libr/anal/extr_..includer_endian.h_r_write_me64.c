
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int ut32 ;


 int r_write_at_me32 (void*,int,int) ;
 int r_write_me32 (void*,int ) ;

__attribute__((used)) static inline void r_write_me64(void *dest, ut64 val) {
 r_write_me32 (dest, (ut32)val);
 r_write_at_me32 (dest, val >> 32, sizeof (ut32));
}

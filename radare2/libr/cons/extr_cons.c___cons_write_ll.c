
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_2__ {int fdout; scalar_t__ ansicon; } ;


 TYPE_1__ I ;
 int r_cons_w32_print (int const*,int,int) ;
 int write (int,char const*,int) ;

__attribute__((used)) static inline void __cons_write_ll(const char *buf, int len) {
 if (I.fdout < 1) {
  I.fdout = 1;
 }
 (void) write (I.fdout, buf, len);

}

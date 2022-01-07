
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ut32 ;
struct r_magic {int dummy; } ;


 int bs1 (struct r_magic*) ;

__attribute__((used)) static void byteswap(struct r_magic *magic, ut32 nmagic) {
 ut32 i;
 for (i = 0; i < nmagic; i++) {
  bs1 (&magic[i]);
 }
}

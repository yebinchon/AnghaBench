
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int user; } ;
typedef int RAnalEsil ;


 int R_FREE (int ) ;
 int i8051_is_init ;
 TYPE_1__ ocbs ;

__attribute__((used)) static int esil_i8051_fini (RAnalEsil *esil) {
 if (!i8051_is_init) {
  return 0;
 }
 R_FREE (ocbs.user);
 i8051_is_init = 0;
 return 1;
}

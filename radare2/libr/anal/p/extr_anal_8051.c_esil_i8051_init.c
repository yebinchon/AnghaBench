
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ user; } ;
struct TYPE_4__ {TYPE_2__ cb; } ;
typedef TYPE_1__ RAnalEsil ;


 int i8051_is_init ;
 TYPE_2__ ocbs ;

__attribute__((used)) static int esil_i8051_init (RAnalEsil *esil) {
 if (esil->cb.user) {
  return 1;
 }
 ocbs = esil->cb;






 i8051_is_init = 1;
 return 1;
}

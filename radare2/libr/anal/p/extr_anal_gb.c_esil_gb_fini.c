
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int user; } ;
struct TYPE_5__ {TYPE_1__ cb; } ;
typedef TYPE_2__ RAnalEsil ;


 int R_FREE (int ) ;

__attribute__((used)) static int esil_gb_fini (RAnalEsil *esil) {
 R_FREE (esil->cb.user);
 return 1;
}

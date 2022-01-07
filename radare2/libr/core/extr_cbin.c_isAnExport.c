
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bind; int name; } ;
typedef TYPE_1__ RBinSymbol ;


 int R_BIN_BIND_GLOBAL_STR ;
 int strcmp (scalar_t__,int ) ;
 int strncmp (int ,char*,int) ;

__attribute__((used)) static bool isAnExport(RBinSymbol *s) {

 if (!strncmp (s->name, "imp.", 4)) {
  return 0;
 }
 return (s->bind && !strcmp (s->bind, R_BIN_BIND_GLOBAL_STR));
}

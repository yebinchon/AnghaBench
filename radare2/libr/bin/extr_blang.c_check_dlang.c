
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
typedef TYPE_1__ RBinSymbol ;


 int strncmp (int ,char*,int) ;

__attribute__((used)) static bool check_dlang(RBinSymbol *sym) {
 if (!strncmp (sym->name, "_D2", 3)) {
  return 1;
 }
 if (!strncmp (sym->name, "_D4", 3)) {
  return 1;
 }
 return 0;
}

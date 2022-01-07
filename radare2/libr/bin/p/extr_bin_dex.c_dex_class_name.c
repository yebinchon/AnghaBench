
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int class_id; } ;
typedef int RBinDexObj ;
typedef TYPE_1__ RBinDexClass ;


 char* dex_class_name_byid (int *,int ) ;
 int r_str_cpy (char*,char*) ;
 scalar_t__ simplifiedDemangling ;
 int simplify (char*) ;

__attribute__((used)) static char *dex_class_name(RBinDexObj *bin, RBinDexClass *c) {
 char *s = dex_class_name_byid (bin, c->class_id);
 if (simplifiedDemangling) {
  simplify (s);
  if (*s == 'L') {
   r_str_cpy (s, s + 1);
  }
 }
 return s;
}

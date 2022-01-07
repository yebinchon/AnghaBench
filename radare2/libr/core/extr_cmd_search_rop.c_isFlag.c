
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
typedef TYPE_1__ RRegItem ;


 char* r_reg_get_type (int ) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static bool isFlag (RRegItem *reg) {
 const char *type = r_reg_get_type (reg->type);

 if (!strcmp (type, "flg"))
  return 1;
 return 0;
}

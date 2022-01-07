
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int bits; TYPE_1__* cur; } ;
struct TYPE_6__ {TYPE_3__* assembler; } ;
struct TYPE_5__ {scalar_t__ name; } ;
typedef TYPE_2__ RCore ;
typedef TYPE_3__ RAsm ;


 int strstr (scalar_t__,char*) ;

__attribute__((used)) static bool archIsThumbable(RCore *core) {
 RAsm *as = core ? core->assembler : ((void*)0);
 if (as && as->cur && as->bits <= 32 && as->cur->name) {
  return strstr (as->cur->name, "arm");
 }
 return 0;
}

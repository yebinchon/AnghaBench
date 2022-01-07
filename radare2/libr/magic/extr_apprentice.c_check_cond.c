
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t ut32 ;
struct TYPE_6__ {TYPE_2__* li; } ;
struct TYPE_8__ {int flags; TYPE_1__ c; } ;
struct TYPE_7__ {int last_cond; } ;
typedef TYPE_3__ RMagic ;






 int R_MAGIC_CHECK ;
 int file_magwarn (TYPE_3__*,char*) ;

__attribute__((used)) static int check_cond(RMagic *ms, int cond, ut32 cont_level) {
 int last_cond;
 last_cond = ms->c.li[cont_level].last_cond;

 switch (cond) {
 case 129:
  if (last_cond != 128 && last_cond != 131) {
   if (ms->flags & R_MAGIC_CHECK) {
    file_magwarn (ms, "syntax error: `if'");
   }
   return -1;
  }
  last_cond = 129;
  break;
 case 131:
  if (last_cond != 129 && last_cond != 131) {
   if (ms->flags & R_MAGIC_CHECK) {
    file_magwarn (ms, "syntax error: `elif'");
   }
   return -1;
  }
  last_cond = 131;
  break;
 case 130:
  if (last_cond != 129 && last_cond != 131) {
   if (ms->flags & R_MAGIC_CHECK) {
    file_magwarn (ms, "syntax error: `else'");
   }
   return -1;
  }
  last_cond = 128;
  break;
 case 128:
  last_cond = 128;
  break;
 }

 ms->c.li[cont_level].last_cond = last_cond;
 return 0;
}

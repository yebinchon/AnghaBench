
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut64 ;
typedef int ut32 ;
struct TYPE_7__ {int blocksize_max; int blocksize; int num; int flags; } ;
struct TYPE_6__ {int size; } ;
typedef TYPE_1__ RFlagItem ;
typedef TYPE_2__ RCore ;


 int eprintf (char*,...) ;
 int help_msg_b ;
 int r_cons_printf (char*,int,...) ;
 int r_core_block_size (TYPE_2__*,int) ;
 int r_core_cmd_help (TYPE_2__*,int ) ;
 TYPE_1__* r_flag_get (int ,char const*) ;
 int r_num_math (int ,char const*) ;

__attribute__((used)) static int cmd_bsize(void *data, const char *input) {
 ut64 n;
 RFlagItem *flag;
 RCore *core = (RCore *)data;
 switch (input[0]) {
 case 'm':
  n = r_num_math (core->num, input + 1);
  if (n > 1) {
   core->blocksize_max = n;
  } else {
   r_cons_printf ("0x%x\n", (ut32)core->blocksize_max);
  }
  break;
 case '+':
  n = r_num_math (core->num, input + 1);
  r_core_block_size (core, core->blocksize + n);
  break;
 case '-':
  n = r_num_math (core->num, input + 1);
  r_core_block_size (core, core->blocksize - n);
  break;
 case 'f':
  if (input[1] == ' ') {
   flag = r_flag_get (core->flags, input + 2);
   if (flag) {
    r_core_block_size (core, flag->size);
   } else {
    eprintf ("bf: cannot find flag named '%s'\n", input + 2);
   }
  } else {
   eprintf ("Usage: bf [flagname]\n");
  }
  break;
 case 'j':
  r_cons_printf ("{\"blocksize\":%d,\"blocksize_limit\":%d}\n", core->blocksize, core->blocksize_max);
  break;
 case '*':
  r_cons_printf ("b 0x%x\n", core->blocksize);
  break;
 case '\0':
  r_cons_printf ("0x%x\n", core->blocksize);
  break;
 case ' ':
  r_core_block_size (core, r_num_math (core->num, input));
  break;
 default:
 case '?':
  r_core_cmd_help (core, help_msg_b);
  break;
 }
 return 0;
}

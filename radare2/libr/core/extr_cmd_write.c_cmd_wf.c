
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef void* ut64 ;
struct TYPE_8__ {int blocksize; int offset; int num; } ;
typedef TYPE_1__ RCore ;


 int cmd_wff (TYPE_1__*,char const*) ;
 int cmd_wfs (TYPE_1__*,char const*) ;
 int eprintf (char*) ;
 int free (char*) ;
 int help_msg_wf ;
 int ioMemcpy (TYPE_1__*,int ,void*,int) ;
 int r_core_block_read (TYPE_1__*) ;
 int r_core_cmd_help (TYPE_1__*,int ) ;
 void* r_num_math (int ,char*) ;
 char* r_str_trim_dup (char const*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static bool cmd_wf(RCore *core, const char *input) {
 if (!core || !*input) {
  return 0;
 }
 if (input[1] == '?') {
  eprintf ("Usage: wf [file] ([size] ([offset]))\n");
  r_core_cmd_help (core, help_msg_wf);
  return 0;
 }
 if (input[1] == 's') {
  return cmd_wfs (core, input + 1);
 }
 if (input[1] == 'f') {
  return cmd_wff (core, input + 1);
 }
 char *args = r_str_trim_dup (input + 1);
 char *arg = strchr (args, ' ');
 int len = core->blocksize;
 if (arg) {
  *arg++ = 0;
  len = r_num_math (core->num, arg);
 }
 ut64 addr = r_num_math (core->num, args);
 ioMemcpy (core, core->offset, addr, len);
 free (args);
 r_core_block_read (core);
 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_5__ {int blocksize; int offset; int print; } ;
typedef TYPE_1__ RCore ;


 int free (int *) ;
 int help_msg_po ;
 int r_core_cmd_help (TYPE_1__*,int ) ;
 int * r_core_transform_op (TYPE_1__*,char const*,char const) ;
 int r_print_hexdump (int ,int ,int *,int ,int,int,int) ;

__attribute__((used)) static void cmd_print_op(RCore *core, const char *input) {
 ut8 *buf;
 if (!input[0])
  return;
 switch (input[1]) {
 case 'a':
 case 's':
 case 'A':
 case 'x':
 case 'r':
 case 'l':
 case 'm':
 case 'd':
 case 'o':
 case '2':
 case '4':
  if (input[2]) {
   buf = r_core_transform_op (core, input+3, input[1]);
  } else {
   buf = r_core_transform_op (core, ((void*)0), input[1]);
  }
  break;
 case 'n':
  buf = r_core_transform_op (core, "ff", 'x');
  break;
 case '\0':
 case '?':
 default:
  r_core_cmd_help (core, help_msg_po);
  return;
 }
 if (buf) {
  r_print_hexdump(core->print, core->offset, buf,
   core->blocksize, 16, 1, 1);
  free (buf);
 }
}

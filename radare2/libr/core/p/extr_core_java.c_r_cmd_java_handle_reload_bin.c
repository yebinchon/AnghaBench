
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_9__ {int io; TYPE_1__* file; } ;
struct TYPE_8__ {int fd; } ;
typedef TYPE_2__ RCore ;
typedef int RBinJavaObj ;
typedef int RAnal ;


 scalar_t__ JAVA_CMDS ;
 scalar_t__ RELOAD_BIN_IDX ;
 int free (int *) ;
 int * get_anal (TYPE_2__*) ;
 int * malloc (int) ;
 int memset (int *,int ,int) ;
 char* r_cmd_java_consumetok (char const*,char,int) ;
 scalar_t__ r_cmd_java_get_bin_obj (int *) ;
 int r_cmd_java_get_input_num_value (TYPE_2__*,char const*) ;
 scalar_t__ r_cmd_java_is_valid_input_num_value (TYPE_2__*,char const*) ;
 int r_cmd_java_print_cmd_help (scalar_t__) ;
 int r_cmd_java_reload_bin_from_buf (TYPE_2__*,int *,int *,int) ;
 int r_io_read_at (int ,int,int *,int) ;
 int r_io_size (int ) ;
 int r_io_use_fd (int ,int ) ;

__attribute__((used)) static int r_cmd_java_handle_reload_bin (RCore *core, const char *cmd) {
 RAnal *anal = get_anal (core);
 RBinJavaObj *obj = (RBinJavaObj *) r_cmd_java_get_bin_obj (anal);
 const char *p = cmd;
 ut64 addr = 0LL;
 ut64 buf_size = 0;
 ut8 * buf = ((void*)0);
 int res = 0;

 if (*cmd == ' ') {
  p = r_cmd_java_consumetok (p, ' ', -1);
 }
 if (!*cmd) {
  r_cmd_java_print_cmd_help (JAVA_CMDS+RELOAD_BIN_IDX);
  return 1;
 }

 addr = r_cmd_java_is_valid_input_num_value(core, p) ? r_cmd_java_get_input_num_value (core, p) : -1;
 if (*cmd == ' ') {
  p = r_cmd_java_consumetok (p, ' ', -1);
 }
 buf_size = r_cmd_java_is_valid_input_num_value(core, p) ? r_cmd_java_get_input_num_value (core, p) : -1;



 if (buf_size == 0) {
  res = r_io_use_fd (core->io, core->file->fd);
  buf_size = r_io_size (core->io);
  buf = malloc (buf_size);
  memset (buf, 0, buf_size);
  r_io_read_at (core->io, addr, buf, buf_size);
 }
 if (buf && obj) {
  res = r_cmd_java_reload_bin_from_buf (core, obj, buf, buf_size);
 }
 free (buf);
 return res;
}

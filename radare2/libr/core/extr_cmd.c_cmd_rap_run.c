
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int io; } ;
typedef TYPE_1__ RCore ;


 int atoi (char*) ;
 int free (char*) ;
 char* r_io_system (int ,char const*) ;

__attribute__((used)) static int cmd_rap_run(void *data, const char *input) {
 RCore *core = (RCore *)data;
 char *res = r_io_system (core->io, input);
 if (res) {
  int ret = atoi (res);
  free (res);
  return ret;
 }
 return 0;
}

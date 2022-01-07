
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int data; } ;
struct TYPE_6__ {int (* cb_printf ) (char*,int ) ;} ;
typedef int RIODesc ;
typedef TYPE_1__ RIO ;


 int bochs_cmd_stop (TYPE_2__*) ;
 int bochs_send_cmd (TYPE_2__*,char const*,int) ;
 TYPE_2__* desc ;
 int lprintf (char*,...) ;
 int strcmp (char const*,char*) ;
 int strncmp (char const*,char*,int) ;
 int stub1 (char*,int ) ;
 int stub2 (char*,int ) ;

__attribute__((used)) static char *__system(RIO *io, RIODesc *fd, const char *cmd) {
        lprintf ("system command (%s)\n", cmd);
        if (!strcmp (cmd, "help")) {
                lprintf ("Usage: =!cmd args\n"
                        " =!:<bochscmd>      - Send a bochs command.\n"
                        " =!dobreak          - pause bochs.\n");
  lprintf ("io_system: Enviando commando bochs\n");
  bochs_send_cmd (desc, &cmd[1], 1);
  io->cb_printf ("%s\n", desc->data);
 } else if (!strncmp (cmd, "dobreak", 7)) {
  bochs_cmd_stop (desc);
  io->cb_printf ("%s\n", desc->data);
 }
        return ((void*)0);
}

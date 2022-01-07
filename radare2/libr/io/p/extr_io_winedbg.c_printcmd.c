
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* cb_printf ) (char*,char*) ;} ;
typedef TYPE_1__ RIO ;


 int free (char*) ;
 char* runcmd (char const*) ;
 int stub1 (char*,char*) ;

__attribute__((used)) static void printcmd (RIO *io, const char *cmd) {
 char *res = runcmd (cmd);
 io->cb_printf ("%s\n", res);
 free (res);
}

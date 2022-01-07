
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int config; } ;
typedef TYPE_1__ RCore ;


 int SIGALRM ;
 int alarm (int) ;
 int dietime ;
 int eprintf (char*) ;
 int r_config_get_i (int ,char*) ;
 int r_sys_signal (int ,int ) ;

__attribute__((used)) static void activateDieTime (RCore *core) {
 int dt = r_config_get_i (core->config, "http.dietime");
 if (dt > 0) {




  eprintf ("http.dietime only works on *nix systems\n");

 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pool; } ;
typedef TYPE_1__ cmd_parms ;


 scalar_t__ ap_server_root_relative (int ,char const*) ;
 scalar_t__ apache2_php_ini_path_override ;

__attribute__((used)) static const char *php_apache_phpini_set(cmd_parms *cmd, void *mconfig, const char *arg)
{
 if (apache2_php_ini_path_override) {
  return "Only first PHPINIDir directive honored per configuration tree - subsequent ones ignored";
 }
 apache2_php_ini_path_override = ap_server_root_relative(cmd->pool, arg);
 return ((void*)0);
}

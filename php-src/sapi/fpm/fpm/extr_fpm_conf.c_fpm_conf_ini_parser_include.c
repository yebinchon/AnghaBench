
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t gl_pathc; char** gl_pathv; scalar_t__ gl_offs; } ;
typedef TYPE_1__ glob_t ;


 int GLOB_ERR ;
 int GLOB_MARK ;
 size_t GLOB_NOMATCH ;
 int ZLOG_ERROR ;
 int ZLOG_WARNING ;
 int efree (char*) ;
 scalar_t__ fpm_conf_load_ini_file (char*) ;
 size_t glob (char*,int,int *,TYPE_1__*) ;
 int globfree (TYPE_1__*) ;
 int ini_filename ;
 int ini_lineno ;
 int spprintf (char**,int ,char*,int ) ;
 int strlen (char*) ;
 int zlog (int ,char*,char*,...) ;

__attribute__((used)) static void fpm_conf_ini_parser_include(char *inc, void *arg)
{
 char *filename;
 int *error = (int *)arg;



 size_t i;

 if (!inc || !arg) return;
 if (*error) return;
 spprintf(&filename, 0, "%s", ini_filename);
 if (0 > fpm_conf_load_ini_file(inc)) {
  zlog(ZLOG_ERROR, "Unable to include %s from %s at line %d", inc, filename, ini_lineno);
  *error = 1;
  efree(filename);
  return;
 }


 efree(filename);
}

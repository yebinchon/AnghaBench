
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options {int dummy; } ;
struct env_set {int dummy; } ;


 int D_PUSH ;
 int msg (int ,char*,char const*) ;
 int read_config_file (struct options*,char const*,int ,char const*,int ,int,unsigned int,unsigned int*,struct env_set*) ;

void
options_server_import(struct options *o,
                      const char *filename,
                      int msglevel,
                      unsigned int permission_mask,
                      unsigned int *option_types_found,
                      struct env_set *es)
{
    msg(D_PUSH, "OPTIONS IMPORT: reading client specific options from: %s", filename);
    read_config_file(o,
                     filename,
                     0,
                     filename,
                     0,
                     msglevel,
                     permission_mask,
                     option_types_found,
                     es);
}

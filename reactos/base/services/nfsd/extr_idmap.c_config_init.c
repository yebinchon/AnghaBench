
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idmap_config {int dummy; } ;


 int ARRAYSIZE (char*) ;
 char* CONFIG_FILENAME ;
 scalar_t__ GetSystemDirectoryA (char*,int ) ;
 int MAX_PATH ;
 int StringCchCatA (char*,int ,char*) ;
 int StringCchCopyA (char*,int ,char*) ;
 int config_defaults (struct idmap_config*) ;
 int config_load (struct idmap_config*,char*) ;
 int eprintf (char*,...) ;

__attribute__((used)) static int config_init(
    struct idmap_config *config)
{
    int status;





    status = config_defaults(config);
    if (status) {
        eprintf("config_defaults() failed with %d\n", status);
        goto out;
    }
    status = config_load(config, CONFIG_FILENAME);

    if (status) {



        eprintf("config_load('%s') failed with %d\n", CONFIG_FILENAME, status);

        goto out;
    }
out:
    return status;
}

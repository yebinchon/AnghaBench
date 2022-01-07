
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config {int dummy; } ;


 int config_close (struct config*) ;
 struct config* config_open (char*) ;
 int dump (struct config*,int) ;
 int lwan_status_critical (char*,char*) ;
 int lwan_status_critical_perror (char*,char*) ;

int main(int argc, char *argv[])
{
    struct config *config;
    int indent_level = 0;

    if (argc < 2) {
        lwan_status_critical("Usage: %s /path/to/config/file.conf", argv[0]);
        return 1;
    }

    config = config_open(argv[1]);
    if (!config) {
        lwan_status_critical_perror("Could not open configuration file %s",
                                    argv[1]);
        return 1;
    }

    dump(config, indent_level);

    config_close(config);

    return 0;
}

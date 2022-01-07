
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {scalar_t__ d_type; int * d_name; } ;
typedef int DIR ;


 scalar_t__ DT_DIR ;
 int FILENAME_MAX ;
 int closedir (int *) ;
 char* config_get (char*,char*,char*) ;
 int isdigit (int ) ;
 int netdata_configured_host_prefix ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 int snprintfz (char*,int ,char*,int ,char*) ;
 scalar_t__ strncmp (int *,char*,int) ;

int get_numa_node_count(void)
{
    static int numa_node_count = -1;

    if (numa_node_count != -1)
        return numa_node_count;

    numa_node_count = 0;

    char name[FILENAME_MAX + 1];
    snprintfz(name, FILENAME_MAX, "%s%s", netdata_configured_host_prefix, "/sys/devices/system/node");
    char *dirname = config_get("plugin:proc:/sys/devices/system/node", "directory to monitor", name);

    DIR *dir = opendir(dirname);
    if(dir) {
        struct dirent *de = ((void*)0);
        while((de = readdir(dir))) {
            if(de->d_type != DT_DIR)
                continue;

            if(strncmp(de->d_name, "node", 4) != 0)
                continue;

            if(!isdigit(de->d_name[4]))
                continue;

            numa_node_count++;
        }
        closedir(dir);
    }

    return numa_node_count;
}

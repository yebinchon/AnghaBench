
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ EINVAL ;
 int FILENAME_MAX ;
 int S_IFDIR ;
 int S_IFMT ;
 scalar_t__ errno ;
 int error (char*,char*,char*,char*) ;
 int info (char*,char*) ;
 int is_virtual_filesystem (char*,char**) ;
 char* netdata_configured_host_prefix ;
 int snprintfz (char*,int ,char*,char*) ;
 int stat (char*,struct stat*) ;

int verify_netdata_host_prefix() {
    if(!netdata_configured_host_prefix)
        netdata_configured_host_prefix = "";

    if(!*netdata_configured_host_prefix)
        return 0;

    char buffer[FILENAME_MAX + 1];
    char *path = netdata_configured_host_prefix;
    char *reason = "unknown reason";
    errno = 0;

    struct stat sb;
    if (stat(path, &sb) == -1) {
        reason = "failed to stat()";
        goto failed;
    }

    if((sb.st_mode & S_IFMT) != S_IFDIR) {
        errno = EINVAL;
        reason = "is not a directory";
        goto failed;
    }

    path = buffer;
    snprintfz(path, FILENAME_MAX, "%s/proc", netdata_configured_host_prefix);
    if(is_virtual_filesystem(path, &reason) == -1)
        goto failed;

    snprintfz(path, FILENAME_MAX, "%s/sys", netdata_configured_host_prefix);
    if(is_virtual_filesystem(path, &reason) == -1)
        goto failed;

    if(netdata_configured_host_prefix && *netdata_configured_host_prefix)
        info("Using host prefix directory '%s'", netdata_configured_host_prefix);

    return 0;

failed:
    error("Ignoring host prefix '%s': path '%s' %s", netdata_configured_host_prefix, path, reason);
    netdata_configured_host_prefix = "";
    return -1;
}

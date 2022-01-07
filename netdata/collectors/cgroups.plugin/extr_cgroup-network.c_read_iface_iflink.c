
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILENAME_MAX ;
 int error (char*,char*) ;
 int read_single_number_file (char*,unsigned long long*) ;
 int snprintfz (char*,int ,char*,char const*,char const*) ;

unsigned int read_iface_iflink(const char *prefix, const char *iface) {
    if(!prefix) prefix = "";

    char filename[FILENAME_MAX + 1];
    snprintfz(filename, FILENAME_MAX, "%s/sys/class/net/%s/iflink", prefix, iface);

    unsigned long long iflink = 0;
    int ret = read_single_number_file(filename, &iflink);
    if(ret) error("Cannot read '%s'.", filename);

    return (unsigned int)iflink;
}

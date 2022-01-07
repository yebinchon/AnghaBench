
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long kernel_uint_t ;
typedef int RRDVAR ;


 int FILENAME_MAX ;
 int localhost ;
 int netdata_configured_host_prefix ;
 scalar_t__ read_single_number_file (char*,unsigned long long*) ;
 int * rrdvar_custom_host_variable_create (int ,char*) ;
 int rrdvar_custom_host_variable_set (int ,int *,unsigned long long) ;
 int snprintfz (char*,int ,char*,int ) ;
 char* strdupz (char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static kernel_uint_t read_tcp_max_orphans(void) {
    static char *filename = ((void*)0);
    static RRDVAR *tcp_max_orphans_var = ((void*)0);

    if(unlikely(!filename)) {
        char buffer[FILENAME_MAX + 1];
        snprintfz(buffer, FILENAME_MAX, "%s/proc/sys/net/ipv4/tcp_max_orphans", netdata_configured_host_prefix);
        filename = strdupz(buffer);
    }

    unsigned long long tcp_max_orphans = 0;
    if(read_single_number_file(filename, &tcp_max_orphans) == 0) {

        if(unlikely(!tcp_max_orphans_var))
            tcp_max_orphans_var = rrdvar_custom_host_variable_create(localhost, "tcp_max_orphans");

        rrdvar_custom_host_variable_set(localhost, tcp_max_orphans_var, tcp_max_orphans);
        return tcp_max_orphans;
    }

    return 0;
}

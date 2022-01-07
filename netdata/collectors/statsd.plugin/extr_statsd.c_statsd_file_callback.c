
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int statsd_readfile (char const*,int *,int *,int *) ;

__attribute__((used)) static int statsd_file_callback(const char *filename, void *data) {
    (void)data;
    return statsd_readfile(filename, ((void*)0), ((void*)0), ((void*)0));
}

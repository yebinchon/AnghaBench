
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config {int dummy; } ;


 struct config* config_init_data (struct config*,void*,size_t) ;
 struct config* config_open_path (char const*,void**,size_t*) ;

struct config *config_open(const char *path)
{
    struct config *config;
    void *data;
    size_t len;

    config = config_open_path(path, &data, &len);
    return config ? config_init_data(config, data, len) : ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config {char const* error_message; } ;



const char *config_last_error(struct config *conf)
{
    return conf->error_message;
}

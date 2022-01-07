
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_pair {int key; } ;
struct config_option {int key; } ;


 int ARRAYSIZE (struct config_option*) ;
 int ERROR_NOT_FOUND ;
 int NO_ERROR ;
 struct config_option* g_options ;
 scalar_t__ stricmp (int ,int ) ;

__attribute__((used)) static int config_find_option(
    const struct config_pair *pair,
    const struct config_option **option)
{
    int i, count = ARRAYSIZE(g_options);
    int status = ERROR_NOT_FOUND;


    for (i = 0; i < count; i++) {
        if (stricmp(pair->key, g_options[i].key) == 0) {
            *option = &g_options[i];
            status = NO_ERROR;
            break;
        }
    }
    return status;
}

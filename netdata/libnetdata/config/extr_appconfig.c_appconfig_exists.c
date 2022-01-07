
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section {int dummy; } ;
struct config_option {int dummy; } ;
struct config {int dummy; } ;


 int D_CONFIG ;
 struct config_option* appconfig_option_index_find (struct section*,char const*,int ) ;
 struct section* appconfig_section_find (struct config*,char const*) ;
 int debug (int ,char*,char const*,char const*) ;

int appconfig_exists(struct config *root, const char *section, const char *name) {
    struct config_option *cv;

    debug(D_CONFIG, "request to get config in section '%s', name '%s'", section, name);

    struct section *co = appconfig_section_find(root, section);
    if(!co) return 0;

    cv = appconfig_option_index_find(co, name, 0);
    if(!cv) return 0;

    return 1;
}

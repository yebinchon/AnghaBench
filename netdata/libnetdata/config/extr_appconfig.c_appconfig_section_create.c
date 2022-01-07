
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section {struct section* next; int name; int values_index; int mutex; int hash; } ;
struct config {struct section* sections; } ;


 int D_CONFIG ;
 struct section* appconfig_index_add (struct config*,struct section*) ;
 int appconfig_option_compare ;
 int appconfig_unlock (struct config*) ;
 int appconfig_wrlock (struct config*) ;
 int avl_init_lock (int *,int ) ;
 struct section* callocz (int,int) ;
 int debug (int ,char*,char const*) ;
 int error (char*,int ) ;
 int netdata_mutex_init (int *) ;
 int simple_hash (int ) ;
 int strdupz (char const*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline struct section *appconfig_section_create(struct config *root, const char *section) {
    debug(D_CONFIG, "Creating section '%s'.", section);

    struct section *co = callocz(1, sizeof(struct section));
    co->name = strdupz(section);
    co->hash = simple_hash(co->name);
    netdata_mutex_init(&co->mutex);

    avl_init_lock(&co->values_index, appconfig_option_compare);

    if(unlikely(appconfig_index_add(root, co) != co))
        error("INTERNAL ERROR: indexing of section '%s', already exists.", co->name);

    appconfig_wrlock(root);
    struct section *co2 = root->sections;
    if(co2) {
        while (co2->next) co2 = co2->next;
        co2->next = co;
    }
    else root->sections = co;
    appconfig_unlock(root);

    return co;
}

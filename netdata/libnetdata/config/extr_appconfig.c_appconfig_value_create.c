
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section {char* name; struct config_option* values; } ;
struct config_option {struct config_option* next; struct config_option* name; struct config_option* value; int hash; } ;


 int D_CONFIG ;
 struct config_option* appconfig_option_index_add (struct section*,struct config_option*) ;
 struct config_option* callocz (int,int) ;
 int config_section_unlock (struct section*) ;
 int config_section_wrlock (struct section*) ;
 int debug (int ,char*,char const*,char const*,char*) ;
 int error (char*,struct config_option*,char*) ;
 int freez (struct config_option*) ;
 int simple_hash (struct config_option*) ;
 void* strdupz (char const*) ;

__attribute__((used)) static inline struct config_option *appconfig_value_create(struct section *co, const char *name, const char *value) {
    debug(D_CONFIG, "Creating config entry for name '%s', value '%s', in section '%s'.", name, value, co->name);

    struct config_option *cv = callocz(1, sizeof(struct config_option));
    cv->name = strdupz(name);
    cv->hash = simple_hash(cv->name);
    cv->value = strdupz(value);

    struct config_option *found = appconfig_option_index_add(co, cv);
    if(found != cv) {
        error("indexing of config '%s' in section '%s': already exists - using the existing one.", cv->name, co->name);
        freez(cv->value);
        freez(cv->name);
        freez(cv);
        return found;
    }

    config_section_wrlock(co);
    struct config_option *cv2 = co->values;
    if(cv2) {
        while (cv2->next) cv2 = cv2->next;
        cv2->next = cv;
    }
    else co->values = cv;
    config_section_unlock(co);

    return cv;
}

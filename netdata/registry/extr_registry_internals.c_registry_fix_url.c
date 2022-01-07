
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t max_url_length; } ;


 TYPE_1__ registry ;
 char* registry_fix_machine_name (char*,size_t*) ;

__attribute__((used)) static inline char *registry_fix_url(char *url, size_t *len) {
    size_t l = 0;
    char *s = registry_fix_machine_name(url, &l);


    if(l > registry.max_url_length) {
        l = registry.max_url_length;
        s[l] = '\0';
    }

    if(len) *len = l;
    return s;
}

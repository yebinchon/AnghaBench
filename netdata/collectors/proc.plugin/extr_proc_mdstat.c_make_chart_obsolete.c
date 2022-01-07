
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RRDSET ;


 scalar_t__ likely (int) ;
 int * rrdset_find_byname_localhost (char*) ;
 int rrdset_is_obsolete (int *) ;
 int snprintfz (char*,int,char*,char*,char const*) ;

__attribute__((used)) static inline void make_chart_obsolete(char *name, const char *id_modifier) {
    char id[50 + 1];
    RRDSET *st = ((void*)0);

    if(likely(name && id_modifier)) {
        snprintfz(id, 50, "mdstat.%s_%s", name, id_modifier);
        st = rrdset_find_byname_localhost(id);
        if(likely(st)) rrdset_is_obsolete(st);
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RRDSET ;
typedef int RRDHOST ;


 int D_RRD_CALLS ;
 int debug (int ,char*,char const*) ;
 int * rrdset_find (int *,char const*) ;
 int rrdset_isnot_obsolete (int *) ;
 scalar_t__ unlikely (int *) ;

__attribute__((used)) static inline RRDSET *rrdset_find_on_create(RRDHOST *host, const char *fullid) {
    RRDSET *st = rrdset_find(host, fullid);
    if(unlikely(st)) {
        rrdset_isnot_obsolete(st);
        debug(D_RRD_CALLS, "RRDSET '%s', already exists.", fullid);
        return st;
    }

    return ((void*)0);
}

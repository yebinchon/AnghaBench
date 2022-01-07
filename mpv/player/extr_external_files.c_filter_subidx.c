
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subfn {char* fname; int priority; } ;


 int MP_TARRAY_REMOVE_AT (struct subfn*,int,int) ;
 scalar_t__ case_endswith (char const*,char*) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,scalar_t__) ;

__attribute__((used)) static void filter_subidx(struct subfn **slist, int *nsub)
{
    const char *prev = ((void*)0);
    for (int n = 0; n < *nsub; n++) {
        const char *fname = (*slist)[n].fname;
        if (case_endswith(fname, ".idx")) {
            prev = fname;
        } else if (case_endswith(fname, ".sub")) {
            if (prev && strncmp(prev, fname, strlen(fname) - 4) == 0)
                (*slist)[n].priority = -1;
        }
    }
    for (int n = *nsub - 1; n >= 0; n--) {
        if ((*slist)[n].priority < 0)
            MP_TARRAY_REMOVE_AT(*slist, *nsub, n);
    }
}

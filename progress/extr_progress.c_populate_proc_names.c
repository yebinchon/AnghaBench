
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 scalar_t__* default_proc_names ;
 scalar_t__* proc_names ;
 int proc_names_cnt ;
 scalar_t__* realloc (scalar_t__*,int) ;

void populate_proc_names() {
    int i;
    for(i = 0 ; default_proc_names[i] ; i++) {
        proc_names_cnt++;
        proc_names = realloc(proc_names, proc_names_cnt * sizeof(char *));
        assert(proc_names != ((void*)0));
        proc_names[proc_names_cnt - 1] = default_proc_names[i];
    }
}

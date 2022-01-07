
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;
 int r_flist_rewind (void**) ;

__attribute__((used)) static inline void r_flist_delete(void **it, int idx) {
 r_flist_rewind (it);
 free (it[idx]);
 for(it += idx; *it; it++) *it = *(it+1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int r_flist_rewind (void**) ;

__attribute__((used)) static inline void r_flist_set(void **it, int idx, void *data) {
 r_flist_rewind (it);
 it[idx] = data;
}

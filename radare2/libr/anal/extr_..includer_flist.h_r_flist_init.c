
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (void**,int ,int) ;

__attribute__((used)) static inline void **r_flist_init(void **it, int n) {
 *it = it;
 memset (++it, 0, (n+1) * sizeof (void*));
 return it;
}

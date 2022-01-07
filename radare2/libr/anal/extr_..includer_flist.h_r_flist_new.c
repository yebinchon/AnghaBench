
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ calloc (int,int) ;
 void** r_flist_init (void**,int) ;

__attribute__((used)) static inline void **r_flist_new(int n) {
 void **it;
 if (((n + 2) * sizeof(void*)) < sizeof(void*)) return ((void*)0);
 if (!(it = (void **)calloc ((n + 2), sizeof (void*)))) {
  return ((void*)0);
 }
 return r_flist_init (it, n);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void **r_flist_prev(void **it) {
 void **p = it--;
 return (it==*it)?p:it;
}

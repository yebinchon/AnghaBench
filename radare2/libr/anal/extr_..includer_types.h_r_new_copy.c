
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (int) ;
 int memcpy (void*,void*,int) ;

__attribute__((used)) static inline void *r_new_copy(int size, void *data) {
 void *a = malloc(size);
 if (a) {
  memcpy (a, data, size);
 }
 return a;
}

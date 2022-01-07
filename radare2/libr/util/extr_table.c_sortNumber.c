
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int r_num_get (int *,void const*) ;

__attribute__((used)) static int sortNumber(const void *a, const void *b) {
 return r_num_get (((void*)0), a) - r_num_get (((void*)0), b);
}

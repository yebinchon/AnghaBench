
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int r_str_cmp (void const*,void const*,int) ;

__attribute__((used)) static int srclineCmp(const void *a, const void *b) {
 return r_str_cmp (a, b, -1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;

__attribute__((used)) static int yajl_found_number(void* ctx, const char* v, unsigned int l) {
    assert(l > 0);
    return 1;
}

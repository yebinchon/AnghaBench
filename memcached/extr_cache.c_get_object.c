
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void uint64_t ;



__attribute__((used)) static inline void* get_object(void *ptr) {

    uint64_t *pre = ptr;
    return pre + 1;



}

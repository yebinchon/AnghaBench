
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* destruct_data ;

__attribute__((used)) static void cache_destructor(void *buffer, void *notused) {
    destruct_data = buffer;
}

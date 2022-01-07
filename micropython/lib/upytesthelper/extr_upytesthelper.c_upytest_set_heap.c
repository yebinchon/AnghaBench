
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* heap_end ;
 void* heap_start ;

void upytest_set_heap(void *start, void *end) {
    heap_start = start;
    heap_end = end;
}

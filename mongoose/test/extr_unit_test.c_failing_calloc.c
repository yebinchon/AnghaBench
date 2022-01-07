
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void *failing_calloc(size_t count, size_t size) {
  (void) count;
  (void) size;
  return ((void*)0);
}

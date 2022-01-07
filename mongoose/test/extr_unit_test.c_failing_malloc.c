
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void *failing_malloc(size_t size) {
  (void) size;
  return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MyFree (void*) ;

__attribute__((used)) static void SzFree(void *p, void *address) { p = p; MyFree(address); }


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int my_free (void*) ;

void XMLRPC_Free(void* mem) {
   my_free(mem);
}

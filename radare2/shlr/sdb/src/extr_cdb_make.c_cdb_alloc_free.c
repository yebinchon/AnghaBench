
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _aligned_free (void*) ;
 int free (void*) ;

void cdb_alloc_free(void *x) {



 free (x);

}

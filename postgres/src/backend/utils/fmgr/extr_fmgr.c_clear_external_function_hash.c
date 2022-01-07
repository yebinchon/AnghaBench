
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * CFuncHash ;
 int hash_destroy (int *) ;

void
clear_external_function_hash(void *filehandle)
{
 if (CFuncHash)
  hash_destroy(CFuncHash);
 CFuncHash = ((void*)0);
}

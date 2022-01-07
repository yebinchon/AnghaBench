
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int E_ERROR ;
 int zend_error (int ,char*) ;

void bc_out_of_memory (void)
{
  zend_error(E_ERROR, "bcmath: out of memory!");
}

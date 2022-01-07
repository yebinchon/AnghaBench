
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __rseq_handled ;
 int rseq_ownership ;

void __attribute__((constructor)) rseq_init(void)
{

 if (__rseq_handled)
  return;
 __rseq_handled = 1;
 rseq_ownership = 1;
}

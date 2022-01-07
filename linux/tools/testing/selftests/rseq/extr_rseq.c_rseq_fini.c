
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __rseq_handled ;
 scalar_t__ rseq_ownership ;

void __attribute__((destructor)) rseq_fini(void)
{
 if (!rseq_ownership)
  return;
 __rseq_handled = 0;
 rseq_ownership = 0;
}

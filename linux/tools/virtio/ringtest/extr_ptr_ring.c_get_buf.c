
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __ptr_ring_full (int *) ;
 int array ;
 scalar_t__ headcnt ;
 scalar_t__ tailcnt ;

void *get_buf(unsigned *lenp, void **bufp)
{
 void *datap;

 if (tailcnt == headcnt || __ptr_ring_full(&array))
  datap = ((void*)0);
 else {
  datap = "Buffer\n";
  ++tailcnt;
 }

 return datap;
}

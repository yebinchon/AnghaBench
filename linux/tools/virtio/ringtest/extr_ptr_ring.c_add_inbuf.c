
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __ptr_ring_produce (int *,void*) ;
 int array ;
 int headcnt ;

int add_inbuf(unsigned len, void *buf, void *datap)
{
 int ret;

 ret = __ptr_ring_produce(&array, buf);
 if (ret >= 0) {
  ret = 0;
  headcnt++;
 }

 return ret;
}

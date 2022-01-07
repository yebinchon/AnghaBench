
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bzero_p (void*,size_t) ;

void
explicit_bzero(void *buf, size_t len)
{
 bzero_p(buf, len);
}

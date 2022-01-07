
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crc32_init ;
 int mythread_once (int ) ;

extern void
lzma_crc32_init(void)
{
 mythread_once(crc32_init);
 return;
}

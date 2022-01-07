
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (void*,int ,size_t) ;

__attribute__((used)) static void
bzero2(void *buf, size_t len)
{
 memset(buf, 0, len);
}

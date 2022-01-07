
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ os_malloc (size_t) ;
 int os_memset (void*,int ,size_t) ;

void *espconn_memzalloc(size_t size, char* file, int line)
{
 void *mp = ((void*)0);
 if ((mp = (void*)os_malloc(size)) == ((void*)0)){

 } else{

  os_memset(mp, 0, size);
 }
 return mp;
}

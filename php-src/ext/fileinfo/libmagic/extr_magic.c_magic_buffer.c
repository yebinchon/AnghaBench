
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct magic_set {int dummy; } ;


 int file_buffer (struct magic_set*,int *,int *,int *,void const*,size_t) ;
 char const* file_getbuffer (struct magic_set*) ;
 int file_reset (struct magic_set*,int) ;

const char *
magic_buffer(struct magic_set *ms, const void *buf, size_t nb)
{
 if (ms == ((void*)0))
  return ((void*)0);
 if (file_reset(ms, 1) == -1)
  return ((void*)0);




 if (file_buffer(ms, ((void*)0), ((void*)0), ((void*)0), buf, nb) == -1) {
  return ((void*)0);
 }
 return file_getbuffer(ms);
}

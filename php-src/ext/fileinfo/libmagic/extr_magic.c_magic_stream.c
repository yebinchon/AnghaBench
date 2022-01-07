
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct magic_set {int dummy; } ;
typedef int php_stream ;


 char const* file_or_stream (struct magic_set*,int *,int *) ;

const char *
magic_stream(struct magic_set *ms, php_stream *stream)
{
 if (ms == ((void*)0))
  return ((void*)0);
 return file_or_stream(ms, ((void*)0), stream);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct magic_set {int dummy; } ;


 int file_ms_free (struct magic_set*) ;

void
magic_close(struct magic_set *ms)
{
 if (ms == ((void*)0))
  return;
 file_ms_free(ms);
}

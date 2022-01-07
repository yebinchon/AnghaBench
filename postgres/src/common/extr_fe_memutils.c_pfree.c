
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pg_free (void*) ;

void
pfree(void *pointer)
{
 pg_free(pointer);
}

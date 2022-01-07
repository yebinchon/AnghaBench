
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;
 int free_called ;

__attribute__((used)) static void oom_free(void *ptr)
{
    free_called++;
    free(ptr);
}

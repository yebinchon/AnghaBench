
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int heap_free (void*) ;

__attribute__((used)) static void shader_sm1_free(void *data)
{
    heap_free(data);
}

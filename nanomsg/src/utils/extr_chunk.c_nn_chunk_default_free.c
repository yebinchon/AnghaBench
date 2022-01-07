
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nn_free (void*) ;

__attribute__((used)) static void nn_chunk_default_free (void *p)
{
    nn_free (p);
}

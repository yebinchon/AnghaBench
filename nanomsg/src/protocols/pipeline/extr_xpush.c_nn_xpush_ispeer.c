
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NN_PULL ;

int nn_xpush_ispeer (int socktype)
{
    return socktype == NN_PULL ? 1 : 0;
}

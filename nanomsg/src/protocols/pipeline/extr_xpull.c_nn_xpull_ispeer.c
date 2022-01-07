
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NN_PUSH ;

int nn_xpull_ispeer (int socktype)
{
    return socktype == NN_PUSH ? 1 : 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NN_REQ ;

int nn_xrep_ispeer (int socktype)
{
    return socktype == NN_REQ ? 1 : 0;
}

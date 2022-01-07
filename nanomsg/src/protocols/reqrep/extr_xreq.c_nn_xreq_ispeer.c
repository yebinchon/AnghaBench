
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NN_REP ;

int nn_xreq_ispeer (int socktype)
{
    return socktype == NN_REP ? 1 : 0;
}

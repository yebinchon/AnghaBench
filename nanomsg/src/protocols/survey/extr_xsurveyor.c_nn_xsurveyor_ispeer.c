
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NN_RESPONDENT ;

int nn_xsurveyor_ispeer (int socktype)
{
    return socktype == NN_RESPONDENT ? 1 : 0;
}

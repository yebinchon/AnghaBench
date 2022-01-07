
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_GENCB ;



__attribute__((used)) static int cb(int p, int n, BN_GENCB *arg)
{
    return 1;
}

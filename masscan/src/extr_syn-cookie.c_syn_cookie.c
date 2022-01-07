
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int data ;


 int siphash24 (unsigned int*,int,int *) ;

uint64_t
syn_cookie( unsigned ip_them, unsigned port_them,
            unsigned ip_me, unsigned port_me,
            uint64_t entropy)
{
    unsigned data[4];
    uint64_t x[2];

    x[0] = entropy;
    x[1] = entropy;

    data[0] = ip_them;
    data[1] = port_them;
    data[2] = ip_me;
    data[3] = port_me;
    return siphash24(data, sizeof(data), x);
}

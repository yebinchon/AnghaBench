
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ syn_cookie (unsigned int,unsigned int,unsigned int,unsigned int,int ) ;

__attribute__((used)) static unsigned
tcb_hash( unsigned ip_me, unsigned port_me,
            unsigned ip_them, unsigned port_them,
            uint64_t entropy)
{
    unsigned index;



    index = (unsigned)syn_cookie( ip_me ^ ip_them,
                                    port_me ^ port_them,
                                    ip_me ^ ip_them,
                                    port_me ^ port_them,
                                    entropy
                                    );
    return index;
}

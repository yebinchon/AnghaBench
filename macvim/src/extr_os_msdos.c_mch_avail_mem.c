
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int long_u ;


 int _go32_dpmi_remaining_virtual_memory () ;
 int coreleft () ;

long_u
mch_avail_mem(int special)
{



    return coreleft() >> 10;

}

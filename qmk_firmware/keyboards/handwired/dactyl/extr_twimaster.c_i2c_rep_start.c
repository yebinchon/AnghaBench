
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char i2c_start (unsigned char) ;

unsigned char i2c_rep_start(unsigned char address)
{
    return i2c_start( address );

}

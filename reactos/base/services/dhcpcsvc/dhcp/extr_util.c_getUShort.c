
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;


 int ntohs (int ) ;

u_int16_t getUShort( unsigned char *data ) {
    return (u_int16_t) ntohs(*(u_int16_t*) data);
}

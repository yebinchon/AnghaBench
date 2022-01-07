
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int ntohs (int ) ;

int16_t getShort( unsigned char *data ) {
    return (int16_t) ntohs(*(int16_t*) data);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int int32_t ;


 int ntohl (int ) ;

int32_t getLong( unsigned char *data ) {
       return (int32_t) ntohl(*(u_int32_t*) data);
}

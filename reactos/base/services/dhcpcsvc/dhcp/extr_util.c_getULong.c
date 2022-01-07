
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int ntohl (int ) ;

u_int32_t getULong( unsigned char *data ) {
       return ntohl(*(u_int32_t*)data);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int hex2int (char) ;

char hex2char(char *hex) {
 uint8_t result = hex2int ((int) hex[0]);
 result <<= 4;
 result |= hex2int (hex[1]);
 return (char) result;
}

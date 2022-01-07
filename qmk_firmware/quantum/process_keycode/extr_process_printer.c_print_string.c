
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int print_char (char) ;
 size_t strlen (char*) ;

void print_string(char c[]) {
    for (uint8_t i = 0; i < strlen(c); i++) print_char(c[i]);
}

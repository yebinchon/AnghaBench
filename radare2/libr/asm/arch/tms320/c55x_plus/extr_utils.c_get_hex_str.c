
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;


 char* hex_str ;
 char* strdup (char*) ;

char *get_hex_str(ut32 hex_num) {
    char aux[3];

    aux[2] = '\0';
    aux[1] = hex_str[hex_num & 0xF];
    aux[0] = hex_str[(hex_num >> 4) & 0xF];

    return strdup(aux);
}

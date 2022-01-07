
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void strreverse(char *begin, char *end) {
    while (end > begin) {

        char aux = *end;
        *end-- = *begin;
        *begin++ = aux;
    }
}

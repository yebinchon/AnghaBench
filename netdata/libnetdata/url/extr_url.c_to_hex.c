
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char to_hex(char code) {
    static char hex[] = "0123456789abcdef";
    return hex[code & 15];
}

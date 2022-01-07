
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ unichar_toupper (int) ;

__attribute__((used)) static void stoupper (char *str) {
    while (str && *str != '\0') {
        *str = (char)unichar_toupper((int)(*str));
        str++;
    }
}

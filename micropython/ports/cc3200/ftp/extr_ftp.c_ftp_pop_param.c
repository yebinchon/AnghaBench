
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void ftp_pop_param (char **str, char *param) {
    while (**str != ' ' && **str != '\r' && **str != '\n' && **str != '\0') {
        *param++ = **str;
        (*str)++;
    }
    *param = '\0';
}

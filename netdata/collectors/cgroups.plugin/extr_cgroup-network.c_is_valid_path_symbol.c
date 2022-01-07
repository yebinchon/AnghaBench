
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int is_valid_path_symbol(char c) {
    switch(c) {
        case '/':
        case '\\':
        case ' ':
        case '-':
        case '_':
        case '.':
        case ',':
            return 1;

        default:
            return 0;
    }
}

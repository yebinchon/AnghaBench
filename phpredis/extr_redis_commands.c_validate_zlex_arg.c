
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int validate_zlex_arg(const char *arg, size_t len) {
    return (len > 1 && (*arg == '[' || *arg == '(')) ||
           (len == 1 && (*arg == '+' || *arg == '-'));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int is_simple_char(unsigned c) {
    return !(c < 0x14 || c == '"' || c == '\\');
}

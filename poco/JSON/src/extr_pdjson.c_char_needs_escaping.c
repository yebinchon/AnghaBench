
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
char_needs_escaping(int c)
{
    if ((c >= 0) && (c < 0x20 || c == 0x22 || c == 0x5c)) {
        return 1;
    }

    return 0;
}

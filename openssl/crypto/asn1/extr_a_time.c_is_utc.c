
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int is_utc(const int year)
{
    if (50 <= year && year <= 149)
        return 1;
    return 0;
}

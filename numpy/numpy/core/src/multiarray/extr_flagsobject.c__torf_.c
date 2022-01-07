
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
_torf_(int flags, int val)
{
    if ((flags & val) == val) {
        return "True";
    }
    else {
        return "False";
    }
}

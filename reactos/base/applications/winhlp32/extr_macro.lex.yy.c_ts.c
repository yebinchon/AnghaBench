
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* ts(int t)
{
    static char c[2] = {0,0};

    switch (t)
    {
    case 132: return "EMPTY";
    case 128: return "VOID_FUNCTION";
    case 133: return "BOOL_FUNCTION";
    case 130: return "INTEGER";
    case 129: return "STRING";
    case 131: return "IDENTIFIER";
    default: c[0] = (char)t; return c;
    }
}

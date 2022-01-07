
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
print_nsCertType(int type)
{
    switch (type)
    {
        case 128:
            return "SERVER";

        case 129:
            return "CLIENT";

        default:
            return "?";
    }
}

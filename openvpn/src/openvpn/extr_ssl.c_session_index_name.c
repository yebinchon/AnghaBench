
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
session_index_name(int index)
{
    switch (index)
    {
        case 130:
            return "TM_ACTIVE";

        case 128:
            return "TM_UNTRUSTED";

        case 129:
            return "TM_LAME_DUCK";

        default:
            return "TM_???";
    }
}

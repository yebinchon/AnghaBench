
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
state_name(int state)
{
    switch (state)
    {
        case 128:
            return "S_UNDEF";

        case 133:
            return "S_INITIAL";

        case 131:
            return "S_PRE_START";

        case 129:
            return "S_START";

        case 130:
            return "S_SENT_KEY";

        case 134:
            return "S_GOT_KEY";

        case 136:
            return "S_ACTIVE";

        case 132:
            return "S_NORMAL_OP";

        case 135:
            return "S_ERROR";

        default:
            return "S_???";
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
packet_opcode_name(int op)
{
    switch (op)
    {
        case 136:
            return "P_CONTROL_HARD_RESET_CLIENT_V1";

        case 133:
            return "P_CONTROL_HARD_RESET_SERVER_V1";

        case 135:
            return "P_CONTROL_HARD_RESET_CLIENT_V2";

        case 132:
            return "P_CONTROL_HARD_RESET_SERVER_V2";

        case 134:
            return "P_CONTROL_HARD_RESET_CLIENT_V3";

        case 131:
            return "P_CONTROL_SOFT_RESET_V1";

        case 130:
            return "P_CONTROL_V1";

        case 137:
            return "P_ACK_V1";

        case 129:
            return "P_DATA_V1";

        case 128:
            return "P_DATA_V2";

        default:
            return "P_???";
    }
}

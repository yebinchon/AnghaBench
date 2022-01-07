
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *
print_topology(const int topology)
{
    switch (topology)
    {
        case 128:
            return "undef";

        case 131:
            return "net30";

        case 130:
            return "p2p";

        case 129:
            return "subnet";

        default:
            return "unknown";
    }
}

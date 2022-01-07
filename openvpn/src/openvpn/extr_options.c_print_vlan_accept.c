
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum vlan_acceptable_frames { ____Placeholder_vlan_acceptable_frames } vlan_acceptable_frames ;






__attribute__((used)) static const char *
print_vlan_accept(enum vlan_acceptable_frames mode)
{
    switch (mode)
    {
        case 129:
            return "tagged";
        case 128:
            return "untagged";
        case 130:
            return "all";
    }
    return ((void*)0);
}

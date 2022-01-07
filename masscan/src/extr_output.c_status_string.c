
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum PortStatus { ____Placeholder_PortStatus } PortStatus ;






const char *
status_string(enum PortStatus status)
{
    switch (status) {
        case 128: return "open";
        case 129: return "closed";
        case 130: return "up";
        default: return "unknown";
    }
}

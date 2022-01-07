
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static const char *ethertype_str(uint16_t type) {

    switch (type) {
        case 0x0800: return "IPv4";
        case 0x0806: return "ARP";
        case 0x86dd: return "IPv6";
        default: return ((void*)0);
    }
}

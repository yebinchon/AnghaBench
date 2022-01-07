
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned PCAP16(unsigned byte_order, const unsigned char *buf)
{
    switch (byte_order) {
    case 129: return buf[0]*256 + buf[1];
    case 128: return buf[1]*256 + buf[0];
    default: return (unsigned)0xa3a3;
    }
}

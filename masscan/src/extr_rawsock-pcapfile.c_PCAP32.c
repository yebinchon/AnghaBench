
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned PCAP32(unsigned byte_order, const unsigned char *buf)
{
    switch (byte_order) {
    case 129: return buf[0]<<24 | buf[1]<<16 | buf[2] << 8 | buf[3];
    case 128: return buf[3]<<24 | buf[2]<<16 | buf[1] << 8 | buf[0];
    default: return (unsigned)0xa3a3;
    }
}

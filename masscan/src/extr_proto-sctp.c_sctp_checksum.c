
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRC32C (unsigned int,unsigned char const) ;

unsigned
sctp_checksum(const void *vbuffer, size_t length)
{
    const unsigned char *buffer = (const unsigned char *)vbuffer;
    unsigned i;
    unsigned crc32 = (unsigned)~0;
    unsigned result;
    unsigned char byte0,byte1,byte2,byte3;

    for (i = 0; i < 8; i++) {
        CRC32C(crc32, buffer[i]);
    }

    CRC32C(crc32, 0);
    CRC32C(crc32, 0);
    CRC32C(crc32, 0);
    CRC32C(crc32, 0);

    for (i = 12; i < length; i++) {
        CRC32C(crc32, buffer[i]);
    }
    result = ~crc32;
    byte0 = result & 0xff;
    byte1 = (result>>8) & 0xff;
    byte2 = (result>>16) & 0xff;
    byte3 = (result>>24) & 0xff;

    crc32 = ((byte0 << 24) |
            (byte1 << 16) |
            (byte2 << 8) |
            byte3);
    return ( crc32 );
}

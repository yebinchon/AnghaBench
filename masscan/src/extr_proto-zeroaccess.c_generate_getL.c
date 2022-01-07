
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int crc_calc (unsigned char*,int) ;
 int memcpy (unsigned char*,char*,int) ;
 int memset (unsigned char*,int ,int) ;
 int zadecrypt (unsigned char*,int,unsigned char*,int) ;

__attribute__((used)) static unsigned
generate_getL(unsigned char *out_buf, size_t out_buf_len, unsigned xrand)
{
    unsigned char buf[16];
    unsigned crc;

    if (out_buf_len < 16)
        return 0;
    memset(buf, 0, 16);

    memcpy(&buf[4], "Lteg", 4);

    buf[12] = (unsigned char)(xrand>>24);
    buf[13] = (unsigned char)(xrand>>16);
    buf[14] = (unsigned char)(xrand>> 8);
    buf[15] = (unsigned char)(xrand>> 0);

    crc = crc_calc(buf, 16);
    buf[3] = (unsigned char)(crc>>24);
    buf[2] = (unsigned char)(crc>>16);
    buf[1] = (unsigned char)(crc>> 8);
    buf[0] = (unsigned char)(crc>> 0);

    zadecrypt(buf, 16, out_buf, 16);

    return 16;
}

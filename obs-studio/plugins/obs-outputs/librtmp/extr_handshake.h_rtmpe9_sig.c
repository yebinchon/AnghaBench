
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int bf_key ;


 int KEYBYTES ;
 int bf_enc (int*,int *) ;
 int bf_setkey (int ,int ,int *) ;
 int * rtmpe9_keys ;

__attribute__((used)) static void rtmpe9_sig(uint8_t *in, uint8_t *out, int keyid)
{
    uint32_t d[2];
    bf_key key;

    bf_setkey(rtmpe9_keys[keyid], KEYBYTES, &key);


    d[0] = in[0] | (in[1] << 8) | (in[2] << 16) | (in[3] << 24);
    d[1] = in[4] | (in[5] << 8) | (in[6] << 16) | (in[7] << 24);
    bf_enc(d, &key);
    out[0] = d[0] & 0xff;
    out[1] = (d[0] >> 8) & 0xff;
    out[2] = (d[0] >> 16) & 0xff;
    out[3] = (d[0] >> 24) & 0xff;
    out[4] = d[1] & 0xff;
    out[5] = (d[1] >> 8) & 0xff;
    out[6] = (d[1] >> 16) & 0xff;
    out[7] = (d[1] >> 24) & 0xff;
}

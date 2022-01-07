
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KMAC_MAX_ENCODED_HEADER_LEN ;
 int KMAC_MAX_KEY ;
 int bytepad (unsigned char*,int*,unsigned char*,int,int *,int ,int) ;
 int encode_string (unsigned char*,int*,unsigned char const*,int) ;

__attribute__((used)) static int kmac_bytepad_encode_key(unsigned char *out, int *out_len,
                                   const unsigned char *in, int in_len,
                                   int w)
{
    unsigned char tmp[KMAC_MAX_KEY + KMAC_MAX_ENCODED_HEADER_LEN];
    int tmp_len;

    if (!encode_string(tmp, &tmp_len, in, in_len))
        return 0;

    return bytepad(out, out_len, tmp, tmp_len, ((void*)0), 0, w);
}

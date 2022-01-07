
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* base64_decode_table ;
 int free (unsigned char*) ;
 unsigned char* malloc (size_t) ;

unsigned char *
base64_decode(const unsigned char *src, size_t len, size_t *out_len)
{
    unsigned char *out, *pos, block[4];
    size_t i, count, olen;
    int pad = 0;

    count = 0;
    for (i = 0; i < len; i++) {
        if (base64_decode_table[src[i]] != 0x80)
            count++;
    }

    if (count == 0 || count % 4)
        return ((void*)0);

    olen = (count / 4 * 3) + 1;
    pos = out = malloc(olen);
    if (out == ((void*)0))
        return ((void*)0);

    count = 0;
    for (i = 0; i < len; i++) {
        unsigned char tmp = base64_decode_table[src[i]];
        if (tmp == 0x80)
            continue;

        if (src[i] == '=')
            pad++;
        block[count] = tmp;
        count++;
        if (count == 4) {
            *pos++ = (unsigned char)((block[0] << 2) | (block[1] >> 4));
            *pos++ = (unsigned char)((block[1] << 4) | (block[2] >> 2));
            *pos++ = (unsigned char)((block[2] << 6) | block[3]);
            count = 0;
            if (pad) {
                if (pad == 1)
                    pos--;
                else if (pad == 2)
                    pos -= 2;
                else {

                    free(out);
                    return ((void*)0);
                }
                break;
            }
        }
    }
    *pos = '\0';

    *out_len = (size_t)(pos - out);
    return out;
}

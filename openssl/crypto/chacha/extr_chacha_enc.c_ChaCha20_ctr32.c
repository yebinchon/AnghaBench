
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {unsigned char const* c; } ;
typedef TYPE_1__ chacha_buf ;
typedef int buf ;


 int chacha20_core (TYPE_1__*,int*) ;
 scalar_t__ ossl_toascii (char) ;

void ChaCha20_ctr32(unsigned char *out, const unsigned char *inp,
                    size_t len, const unsigned int key[8],
                    const unsigned int counter[4])
{
    u32 input[16];
    chacha_buf buf;
    size_t todo, i;


    input[0] = ((u32)ossl_toascii('e')) | ((u32)ossl_toascii('x') << 8)
               | ((u32)ossl_toascii('p') << 16)
               | ((u32)ossl_toascii('a') << 24);
    input[1] = ((u32)ossl_toascii('n')) | ((u32)ossl_toascii('d') << 8)
               | ((u32)ossl_toascii(' ') << 16)
               | ((u32)ossl_toascii('3') << 24);
    input[2] = ((u32)ossl_toascii('2')) | ((u32)ossl_toascii('-') << 8)
               | ((u32)ossl_toascii('b') << 16)
               | ((u32)ossl_toascii('y') << 24);
    input[3] = ((u32)ossl_toascii('t')) | ((u32)ossl_toascii('e') << 8)
               | ((u32)ossl_toascii(' ') << 16)
               | ((u32)ossl_toascii('k') << 24);

    input[4] = key[0];
    input[5] = key[1];
    input[6] = key[2];
    input[7] = key[3];
    input[8] = key[4];
    input[9] = key[5];
    input[10] = key[6];
    input[11] = key[7];

    input[12] = counter[0];
    input[13] = counter[1];
    input[14] = counter[2];
    input[15] = counter[3];

    while (len > 0) {
        todo = sizeof(buf);
        if (len < todo)
            todo = len;

        chacha20_core(&buf, input);

        for (i = 0; i < todo; i++)
            out[i] = inp[i] ^ buf.c[i];
        out += todo;
        inp += todo;
        len -= todo;







        input[12]++;
    }
}

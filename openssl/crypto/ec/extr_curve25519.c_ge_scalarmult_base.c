
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ge_precomp ;
typedef int ge_p3 ;
typedef int ge_p2 ;
typedef int ge_p1p1 ;
typedef int e ;


 int OPENSSL_cleanse (char*,int) ;
 int ge_madd (int *,int *,int *) ;
 int ge_p1p1_to_p2 (int *,int *) ;
 int ge_p1p1_to_p3 (int *,int *) ;
 int ge_p2_dbl (int *,int *) ;
 int ge_p3_0 (int *) ;
 int ge_p3_dbl (int *,int *) ;
 int table_select (int *,int,char) ;

__attribute__((used)) static void ge_scalarmult_base(ge_p3 *h, const uint8_t *a)
{
    signed char e[64];
    signed char carry;
    ge_p1p1 r;
    ge_p2 s;
    ge_precomp t;
    int i;

    for (i = 0; i < 32; ++i) {
        e[2 * i + 0] = (a[i] >> 0) & 15;
        e[2 * i + 1] = (a[i] >> 4) & 15;
    }



    carry = 0;
    for (i = 0; i < 63; ++i) {
        e[i] += carry;
        carry = e[i] + 8;
        carry >>= 4;
        e[i] -= carry << 4;
    }
    e[63] += carry;


    ge_p3_0(h);
    for (i = 1; i < 64; i += 2) {
        table_select(&t, i / 2, e[i]);
        ge_madd(&r, h, &t);
        ge_p1p1_to_p3(h, &r);
    }

    ge_p3_dbl(&r, h);
    ge_p1p1_to_p2(&s, &r);
    ge_p2_dbl(&r, &s);
    ge_p1p1_to_p2(&s, &r);
    ge_p2_dbl(&r, &s);
    ge_p1p1_to_p2(&s, &r);
    ge_p2_dbl(&r, &s);
    ge_p1p1_to_p3(h, &r);

    for (i = 0; i < 64; i += 2) {
        table_select(&t, i / 2, e[i]);
        ge_madd(&r, h, &t);
        ge_p1p1_to_p3(h, &r);
    }

    OPENSSL_cleanse(e, sizeof(e));
}

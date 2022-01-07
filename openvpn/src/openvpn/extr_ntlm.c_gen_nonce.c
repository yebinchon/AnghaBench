
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ get_random () ;

__attribute__((used)) static void
gen_nonce(unsigned char *nonce)
{

    int i;

    for (i = 0; i<8; i++)
    {
        nonce[i] = (unsigned char)get_random();
    }
}

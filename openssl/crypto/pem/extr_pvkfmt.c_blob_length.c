
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int blob_length(unsigned bitlen, int isdss, int ispub)
{
    unsigned int nbyte, hnbyte;
    nbyte = (bitlen + 7) >> 3;
    hnbyte = (bitlen + 15) >> 4;
    if (isdss) {





        if (ispub)
            return 44 + 3 * nbyte;




        else
            return 64 + 2 * nbyte;
    } else {

        if (ispub)
            return 4 + nbyte;
        else




            return 4 + 2 * nbyte + 5 * hnbyte;
    }

}

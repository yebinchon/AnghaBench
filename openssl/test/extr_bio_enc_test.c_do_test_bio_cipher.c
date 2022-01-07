
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER ;


 int * IV ;
 int KEY ;
 int do_bio_cipher (int const*,int ,int *) ;

__attribute__((used)) static int do_test_bio_cipher(const EVP_CIPHER* cipher, int idx)
{
    switch(idx)
    {
        case 0:
            return do_bio_cipher(cipher, KEY, ((void*)0));
        case 1:
            return do_bio_cipher(cipher, KEY, IV);
    }
    return 0;
}

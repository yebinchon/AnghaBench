
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;






__attribute__((used)) static void setupbio(BIO **res, BIO *bio1, BIO *bio2, int type)
{
    switch (type) {
    case 128:
        *res = ((void*)0);
        break;
    case 130:
        *res = bio1;
        break;
    case 129:
        *res = bio2;
        break;
    }
}

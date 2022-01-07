
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RSA ;


 int * RSA_new () ;
 int key1 (int *,unsigned char*) ;
 int key2 (int *,unsigned char*) ;
 int key3 (int *,unsigned char*) ;

__attribute__((used)) static int rsa_setkey(RSA** key, unsigned char* ctext, int idx)
{
    int clen = 0;
    *key = RSA_new();
    switch (idx) {
    case 0:
        clen = key1(*key, ctext);
        break;
    case 1:
        clen = key2(*key, ctext);
        break;
    case 2:
        clen = key3(*key, ctext);
        break;
    }
    return clen;
}

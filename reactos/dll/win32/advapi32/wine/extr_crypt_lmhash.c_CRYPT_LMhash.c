
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPT_DEShash (unsigned char*,unsigned char*,int ) ;
 int CRYPT_LMhash_Magic ;

__attribute__((used)) static void CRYPT_LMhash( unsigned char *dst, const unsigned char *pwd, const int len )
{
    int i, max = 14;
    unsigned char tmp_pwd[14] = { 0,0,0,0,0,0,0,0,0,0,0,0,0,0 };

    max = len > max ? max : len;

    for (i = 0; i < max; i++)
        tmp_pwd[i] = pwd[i];

    CRYPT_DEShash( dst, tmp_pwd, CRYPT_LMhash_Magic );
    CRYPT_DEShash( &dst[8], &tmp_pwd[7], CRYPT_LMhash_Magic );
}

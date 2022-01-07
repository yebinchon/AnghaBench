
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int rdssl_md5_clear (void*) ;
 int rdssl_md5_complete (void*,char*) ;
 void* rdssl_md5_info_create () ;
 int rdssl_md5_info_delete (void*) ;
 int rdssl_md5_transform (void*,char*,int) ;

void
sec_hash_16(uint8 * out, uint8 * in, uint8 * salt1, uint8 * salt2)
{
 void * md5;

 md5 = rdssl_md5_info_create();
 rdssl_md5_clear(md5);
 rdssl_md5_transform(md5, (char *)in, 16);
 rdssl_md5_transform(md5, (char *)salt1, 32);
 rdssl_md5_transform(md5, (char *)salt2, 32);
    rdssl_md5_complete(md5, (char *)out);
 rdssl_md5_info_delete(md5);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int rdssl_sha1_clear (void*) ;
 int rdssl_sha1_complete (void**,char*) ;
 void* rdssl_sha1_info_create () ;
 int rdssl_sha1_info_delete (void*) ;
 int rdssl_sha1_transform (void**,char*,int) ;

void
sec_hash_sha1_16(uint8 * out, uint8 * in, uint8 * salt1)
{
 void * sha;
 sha = rdssl_sha1_info_create();
 rdssl_sha1_clear(sha);
 rdssl_sha1_transform(&sha, (char *)in, 16);
 rdssl_sha1_transform(&sha, (char *)salt1, 16);
 rdssl_sha1_complete(&sha, (char *)out);
 rdssl_sha1_info_delete(sha);
}

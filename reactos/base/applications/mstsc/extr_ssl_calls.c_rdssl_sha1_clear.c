
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CALG_SHA1 ;
 int rdssl_hash_clear (void*,int ) ;

void
rdssl_sha1_clear(void* sha1_info)
{
    rdssl_hash_clear(sha1_info, CALG_SHA1);
}

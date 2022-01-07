
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CALG_MD5 ;
 int rdssl_hash_clear (void*,int ) ;

void
rdssl_md5_clear(void* md5_info)
{
    rdssl_hash_clear(md5_info, CALG_MD5);
}

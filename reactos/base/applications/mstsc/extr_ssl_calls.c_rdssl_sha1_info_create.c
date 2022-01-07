
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CALG_SHA1 ;
 void* rdssl_hash_info_create (int ) ;

void*
rdssl_sha1_info_create(void)
{
    return rdssl_hash_info_create(CALG_SHA1);
}

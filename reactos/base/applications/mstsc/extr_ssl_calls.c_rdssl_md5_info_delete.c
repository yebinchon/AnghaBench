
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rdssl_hash_info_delete (void*) ;

void
rdssl_md5_info_delete(void* md5_info)
{
    rdssl_hash_info_delete(md5_info);
}

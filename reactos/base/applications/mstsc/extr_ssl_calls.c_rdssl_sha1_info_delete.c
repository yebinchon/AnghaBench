
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rdssl_hash_info_delete (void*) ;

void
rdssl_sha1_info_delete(void* sha1_info)
{
    rdssl_hash_info_delete(sha1_info);
}

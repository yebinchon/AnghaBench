
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rdssl_hash_complete (void*,char*) ;

void
rdssl_sha1_complete(void* sha1_info, char* data)
{
    rdssl_hash_complete(sha1_info, data);
}

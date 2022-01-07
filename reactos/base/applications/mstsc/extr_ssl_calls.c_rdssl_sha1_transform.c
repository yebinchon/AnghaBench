
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rdssl_hash_transform (void*,char*,int) ;

void
rdssl_sha1_transform(void* sha1_info, char* data, int len)
{
    rdssl_hash_transform(sha1_info, data, len);
}

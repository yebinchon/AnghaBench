
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rdssl_hash_transform (void*,char*,int) ;

void
rdssl_md5_transform(void* md5_info, char* data, int len)
{
    rdssl_hash_transform(md5_info, data, len);
}

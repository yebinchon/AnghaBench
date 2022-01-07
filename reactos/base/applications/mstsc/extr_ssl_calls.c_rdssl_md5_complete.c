
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rdssl_hash_complete (void*,char*) ;

void
rdssl_md5_complete(void* md5_info, char* data)
{
    rdssl_hash_complete(md5_info, data);
}

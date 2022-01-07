
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* ext_nids ;

int *X509_REQ_get_extension_nids(void)
{
    return ext_nids;
}

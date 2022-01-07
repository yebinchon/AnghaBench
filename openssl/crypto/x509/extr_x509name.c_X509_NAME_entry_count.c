
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entries; } ;
typedef TYPE_1__ X509_NAME ;


 int sk_X509_NAME_ENTRY_num (int ) ;

int X509_NAME_entry_count(const X509_NAME *name)
{
    if (name == ((void*)0))
        return 0;
    return sk_X509_NAME_ENTRY_num(name->entries);
}

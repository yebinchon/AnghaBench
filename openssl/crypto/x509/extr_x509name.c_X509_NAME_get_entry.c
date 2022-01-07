
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_NAME_ENTRY ;
struct TYPE_3__ {int entries; } ;
typedef TYPE_1__ X509_NAME ;


 int sk_X509_NAME_ENTRY_num (int ) ;
 int * sk_X509_NAME_ENTRY_value (int ,int) ;

X509_NAME_ENTRY *X509_NAME_get_entry(const X509_NAME *name, int loc)
{
    if (name == ((void*)0) || sk_X509_NAME_ENTRY_num(name->entries) <= loc
        || loc < 0)
        return ((void*)0);

    return sk_X509_NAME_ENTRY_value(name->entries, loc);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_TIME ;


 scalar_t__ ASN1_STRING_get0_data (int const*) ;

__attribute__((used)) static const char *print_time(const ASN1_TIME *t)
{
    return t == ((void*)0) ? "<null>" : (const char *)ASN1_STRING_get0_data(t);
}

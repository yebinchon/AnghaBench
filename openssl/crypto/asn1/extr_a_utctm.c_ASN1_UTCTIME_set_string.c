
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned char* data; scalar_t__ flags; int length; int type; } ;
typedef TYPE_1__ ASN1_UTCTIME ;


 int ASN1_STRING_copy (TYPE_1__*,TYPE_1__*) ;
 int ASN1_UTCTIME_check (TYPE_1__*) ;
 int V_ASN1_UTCTIME ;
 int strlen (char const*) ;

int ASN1_UTCTIME_set_string(ASN1_UTCTIME *s, const char *str)
{
    ASN1_UTCTIME t;

    t.type = V_ASN1_UTCTIME;
    t.length = strlen(str);
    t.data = (unsigned char *)str;
    t.flags = 0;

    if (!ASN1_UTCTIME_check(&t))
        return 0;

    if (s != ((void*)0) && !ASN1_STRING_copy(s, &t))
        return 0;

    return 1;
}

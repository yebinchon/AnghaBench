
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_string {scalar_t__ length; int raw; } ;


 scalar_t__ memcmp (int ,int ,scalar_t__) ;

int
_zip_string_equal(const struct zip_string *a, const struct zip_string *b)
{
    if (a == ((void*)0) || b == ((void*)0))
 return a == b;

    if (a->length != b->length)
 return 0;



    return (memcmp(a->raw, b->raw, a->length) == 0);
}

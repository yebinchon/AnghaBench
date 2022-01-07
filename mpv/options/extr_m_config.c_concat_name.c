
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;
 char const* talloc_asprintf (void*,char*,char const*,char const*) ;

__attribute__((used)) static const char *concat_name(void *ta_parent, const char *a, const char *b)
{
    assert(a);
    assert(b);
    if (!a[0])
        return b;
    if (!b[0])
        return a;
    return talloc_asprintf(ta_parent, "%s-%s", a, b);
}

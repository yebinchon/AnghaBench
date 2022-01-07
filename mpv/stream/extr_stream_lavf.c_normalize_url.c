
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bstr ;


 int bstr0 (char const*) ;
 scalar_t__ bstr_equals0 (int ,scalar_t__) ;
 scalar_t__* http_like ;
 int mp_split_proto (int ,int *) ;
 char* mp_url_escape (void*,char const*,char*) ;

__attribute__((used)) static char *normalize_url(void *ta_parent, const char *filename)
{
    bstr proto = mp_split_proto(bstr0(filename), ((void*)0));
    for (int n = 0; http_like[n]; n++) {
        if (bstr_equals0(proto, http_like[n]))


            return mp_url_escape(ta_parent, filename, ":/?#[]@!$&'()*+,;=%");
    }
    return (char *)filename;
}

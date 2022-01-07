
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstr {scalar_t__ len; char* start; } ;


 struct bstr bstr_lstrip (struct bstr) ;
 scalar_t__ bstrtoll (struct bstr,struct bstr*,int) ;

__attribute__((used)) static int read_int(struct bstr *data, bool two_digit)
{
    *data = bstr_lstrip(*data);
    if (data->len && data->start[0] == '-')
        return -1;
    struct bstr s = *data;
    int res = (int)bstrtoll(s, &s, 10);
    if (data->len == s.len || (two_digit && data->len - s.len > 2))
        return -1;
    *data = s;
    return res;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstr {scalar_t__ len; } ;


 scalar_t__ bstr_endswith0 (struct bstr,char*) ;
 struct bstr bstr_splice (struct bstr,int ,scalar_t__) ;

struct bstr bstr_strip_linebreaks(struct bstr str)
{
    if (bstr_endswith0(str, "\r\n")) {
        str = bstr_splice(str, 0, str.len - 2);
    } else if (bstr_endswith0(str, "\n")) {
        str = bstr_splice(str, 0, str.len - 1);
    }
    return str;
}

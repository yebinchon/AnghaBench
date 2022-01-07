
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstr {int dummy; } ;


 struct bstr bstr_cut (struct bstr,int) ;
 scalar_t__ bstr_startswith0 (struct bstr,char*) ;

__attribute__((used)) static struct bstr skip_utf8_bom(struct bstr data)
{
    return bstr_startswith0(data, "\xEF\xBB\xBF") ? bstr_cut(data, 3) : data;
}

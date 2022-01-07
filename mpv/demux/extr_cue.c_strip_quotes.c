
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstr {int dummy; } ;
typedef struct bstr bstr ;


 scalar_t__ bstr_eatend0 (struct bstr*,char*) ;
 scalar_t__ bstr_eatstart0 (struct bstr*,char*) ;

__attribute__((used)) static struct bstr strip_quotes(struct bstr data)
{
    bstr s = data;
    if (bstr_eatstart0(&s, "\"") && bstr_eatend0(&s, "\""))
        return s;
    return data;
}

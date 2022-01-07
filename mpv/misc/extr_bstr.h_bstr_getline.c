
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstr {int dummy; } ;


 struct bstr bstr_splitchar (struct bstr,struct bstr*,char) ;

__attribute__((used)) static inline struct bstr bstr_getline(struct bstr str, struct bstr *rest)
{
    return bstr_splitchar(str, rest, '\n');
}

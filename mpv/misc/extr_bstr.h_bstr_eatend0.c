
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstr {int dummy; } ;


 int bstr0 (char const*) ;
 int bstr_eatend (struct bstr*,int ) ;

__attribute__((used)) static inline bool bstr_eatend0(struct bstr *s, const char *prefix)
{
    return bstr_eatend(s, bstr0(prefix));
}

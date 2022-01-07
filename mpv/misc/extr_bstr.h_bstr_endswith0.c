
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstr {int dummy; } ;


 int bstr0 (char const*) ;
 int bstr_endswith (struct bstr,int ) ;

__attribute__((used)) static inline bool bstr_endswith0(struct bstr str, const char *suffix)
{
    return bstr_endswith(str, bstr0(suffix));
}

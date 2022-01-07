
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pg_wchar ;
typedef int pg_unicode_decomposition ;


 int UnicodeDecompMain ;
 int * bsearch (int *,int ,int ,int,int ) ;
 int conv_compare ;
 int lengthof (int ) ;

__attribute__((used)) static pg_unicode_decomposition *
get_code_entry(pg_wchar code)
{
 return bsearch(&(code),
       UnicodeDecompMain,
       lengthof(UnicodeDecompMain),
       sizeof(pg_unicode_decomposition),
       conv_compare);
}

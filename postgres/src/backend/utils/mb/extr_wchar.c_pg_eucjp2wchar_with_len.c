
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pg_wchar ;


 int pg_euc2wchar_with_len (unsigned char const*,int *,int) ;

__attribute__((used)) static int
pg_eucjp2wchar_with_len(const unsigned char *from, pg_wchar *to, int len)
{
 return pg_euc2wchar_with_len(from, to, len);
}

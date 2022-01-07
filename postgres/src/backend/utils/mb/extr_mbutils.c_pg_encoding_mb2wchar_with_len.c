
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pg_wchar ;
struct TYPE_2__ {int (* mb2wchar_with_len ) (unsigned char const*,int *,int) ;} ;


 TYPE_1__* pg_wchar_table ;
 int stub1 (unsigned char const*,int *,int) ;

int
pg_encoding_mb2wchar_with_len(int encoding,
         const char *from, pg_wchar *to, int len)
{
 return pg_wchar_table[encoding].mb2wchar_with_len((const unsigned char *) from, to, len);
}

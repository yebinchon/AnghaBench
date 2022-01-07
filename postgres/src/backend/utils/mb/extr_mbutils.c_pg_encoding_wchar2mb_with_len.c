
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pg_wchar ;
struct TYPE_2__ {int (* wchar2mb_with_len ) (int const*,unsigned char*,int) ;} ;


 TYPE_1__* pg_wchar_table ;
 int stub1 (int const*,unsigned char*,int) ;

int
pg_encoding_wchar2mb_with_len(int encoding,
         const pg_wchar *from, char *to, int len)
{
 return pg_wchar_table[encoding].wchar2mb_with_len(from, (unsigned char *) to, len);
}

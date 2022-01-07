
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int pg_wchar ;
struct TYPE_4__ {size_t encoding; } ;
struct TYPE_3__ {int (* wchar2mb_with_len ) (int const*,unsigned char*,int ) ;} ;


 TYPE_2__* DatabaseEncoding ;
 int pg_wchar_strlen (int const*) ;
 TYPE_1__* pg_wchar_table ;
 int stub1 (int const*,unsigned char*,int ) ;

int
pg_wchar2mb(const pg_wchar *from, char *to)
{
 return pg_wchar_table[DatabaseEncoding->encoding].wchar2mb_with_len(from, (unsigned char *) to, pg_wchar_strlen(from));
}

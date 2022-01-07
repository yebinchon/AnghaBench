
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int pg_wchar ;
struct TYPE_4__ {size_t encoding; } ;
struct TYPE_3__ {int (* mb2wchar_with_len ) (unsigned char const*,int *,int ) ;} ;


 TYPE_2__* DatabaseEncoding ;
 TYPE_1__* pg_wchar_table ;
 int strlen (char const*) ;
 int stub1 (unsigned char const*,int *,int ) ;

int
pg_mb2wchar(const char *from, pg_wchar *to)
{
 return pg_wchar_table[DatabaseEncoding->encoding].mb2wchar_with_len((const unsigned char *) from, to, strlen(from));
}

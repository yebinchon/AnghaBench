
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t encoding; } ;
struct TYPE_3__ {int (* dsplen ) (unsigned char const*) ;} ;


 TYPE_2__* DatabaseEncoding ;
 TYPE_1__* pg_wchar_table ;
 int stub1 (unsigned char const*) ;

int
pg_dsplen(const char *mbstr)
{
 return pg_wchar_table[DatabaseEncoding->encoding].dsplen((const unsigned char *) mbstr);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int encoding; } ;


 TYPE_1__* DatabaseEncoding ;
 int pg_encoding_mbcliplen (int ,char const*,int,int) ;

int
pg_mbcliplen(const char *mbstr, int len, int limit)
{
 return pg_encoding_mbcliplen(DatabaseEncoding->encoding, mbstr,
         len, limit);
}

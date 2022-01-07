
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int encoding; } ;


 TYPE_1__* ClientEncoding ;
 char* pg_server_to_any (char const*,int,int ) ;

char *
pg_server_to_client(const char *s, int len)
{
 return pg_server_to_any(s, len, ClientEncoding->encoding);
}

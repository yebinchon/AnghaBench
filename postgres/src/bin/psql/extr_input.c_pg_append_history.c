
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PQExpBuffer ;


 int appendPQExpBufferChar (int ,char) ;
 int appendPQExpBufferStr (int ,char const*) ;
 int strlen (char const*) ;
 scalar_t__ useHistory ;

void
pg_append_history(const char *s, PQExpBuffer history_buf)
{
}

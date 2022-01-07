
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char PGUNSIXBIT (int) ;

char *
unpack_sql_state(int sql_state)
{
 static char buf[12];
 int i;

 for (i = 0; i < 5; i++)
 {
  buf[i] = PGUNSIXBIT(sql_state);
  sql_state >>= 6;
 }

 buf[i] = '\0';
 return buf;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
bool
pg_isblank(const char c)
{
 return c == ' ' || c == '\t' || c == '\r';
}

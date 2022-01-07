
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PG_VERSION_NUM ;

int
PQlibVersion(void)
{
 return PG_VERSION_NUM;
}

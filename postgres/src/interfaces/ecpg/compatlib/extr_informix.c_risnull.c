
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ECPGis_noind_null (int,char const*) ;

int
risnull(int t, const char *ptr)
{
 return ECPGis_noind_null(t, ptr);
}

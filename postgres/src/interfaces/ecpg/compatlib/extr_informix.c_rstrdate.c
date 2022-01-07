
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int date ;


 int rdefmtdate (int *,char*,char const*) ;

int
rstrdate(const char *str, date * d)
{
 return rdefmtdate(d, "mm/dd/yyyy", str);
}

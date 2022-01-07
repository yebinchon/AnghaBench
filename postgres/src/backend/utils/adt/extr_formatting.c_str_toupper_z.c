
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 char* str_toupper (char const*,int ,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static char *
str_toupper_z(const char *buff, Oid collid)
{
 return str_toupper(buff, strlen(buff), collid);
}

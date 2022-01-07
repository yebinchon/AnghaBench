
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int get_am_type_oid (char const*,char,int) ;

Oid
get_am_oid(const char *amname, bool missing_ok)
{
 return get_am_type_oid(amname, '\0', missing_ok);
}

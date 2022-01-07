
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pg_uuid_t ;
typedef int FmgrInfo ;


 scalar_t__ uuid_internal_cmp (int const*,int const*) ;

__attribute__((used)) static bool
gbt_uuideq(const void *a, const void *b, FmgrInfo *flinfo)
{
 return uuid_internal_cmp((const pg_uuid_t *) a, (const pg_uuid_t *) b) == 0;
}

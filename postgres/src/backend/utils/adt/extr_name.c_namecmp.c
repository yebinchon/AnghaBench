
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;
typedef int * Name ;


 scalar_t__ C_COLLATION_OID ;
 int NAMEDATALEN ;
 int NameStr (int ) ;
 int strlen (int ) ;
 int strncmp (int ,int ,int ) ;
 int varstr_cmp (int ,int ,int ,int ,scalar_t__) ;

__attribute__((used)) static int
namecmp(Name arg1, Name arg2, Oid collid)
{

 if (collid == C_COLLATION_OID)
  return strncmp(NameStr(*arg1), NameStr(*arg2), NAMEDATALEN);


 return varstr_cmp(NameStr(*arg1), strlen(NameStr(*arg1)),
       NameStr(*arg2), strlen(NameStr(*arg2)),
       collid);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbcharacter_incrementer ;


 int GetDatabaseEncoding () ;


 int pg_eucjp_increment ;
 int pg_generic_charinc ;
 int pg_utf8_increment ;

mbcharacter_incrementer
pg_database_encoding_character_incrementer(void)
{




 switch (GetDatabaseEncoding())
 {
  case 128:
   return pg_utf8_increment;

  case 129:
   return pg_eucjp_increment;

  default:
   return pg_generic_charinc;
 }
}

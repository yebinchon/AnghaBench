
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int (* mbverifier ) (unsigned char*,int) ;
struct TYPE_2__ {int (* mbverify ) (unsigned char*,int) ;} ;


 size_t GetDatabaseEncoding () ;
 TYPE_1__* pg_wchar_table ;
 int stub1 (unsigned char*,int) ;

__attribute__((used)) static bool
pg_generic_charinc(unsigned char *charptr, int len)
{
 unsigned char *lastbyte = charptr + len - 1;
 mbverifier mbverify;


 mbverify = pg_wchar_table[GetDatabaseEncoding()].mbverify;

 while (*lastbyte < (unsigned char) 255)
 {
  (*lastbyte)++;
  if ((*mbverify) (charptr, len) == len)
   return 1;
 }

 return 0;
}

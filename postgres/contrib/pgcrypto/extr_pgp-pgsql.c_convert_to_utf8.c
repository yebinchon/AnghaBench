
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;


 int GetDatabaseEncoding () ;
 int PG_UTF8 ;
 int * convert_charset (int *,int ,int ) ;

__attribute__((used)) static text *
convert_to_utf8(text *src)
{
 return convert_charset(src, GetDatabaseEncoding(), PG_UTF8);
}

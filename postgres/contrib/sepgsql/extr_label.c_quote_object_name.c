
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* data; } ;
typedef TYPE_1__ StringInfoData ;


 int appendStringInfo (TYPE_1__*,char*,char const*) ;
 int appendStringInfoString (TYPE_1__*,char const*) ;
 int initStringInfo (TYPE_1__*) ;
 int pfree (void*) ;
 char* quote_identifier (char const*) ;

__attribute__((used)) static char *
quote_object_name(const char *src1, const char *src2,
      const char *src3, const char *src4)
{
 StringInfoData result;
 const char *temp;

 initStringInfo(&result);

 if (src1)
 {
  temp = quote_identifier(src1);
  appendStringInfoString(&result, temp);
  if (src1 != temp)
   pfree((void *) temp);
 }
 if (src2)
 {
  temp = quote_identifier(src2);
  appendStringInfo(&result, ".%s", temp);
  if (src2 != temp)
   pfree((void *) temp);
 }
 if (src3)
 {
  temp = quote_identifier(src3);
  appendStringInfo(&result, ".%s", temp);
  if (src3 != temp)
   pfree((void *) temp);
 }
 if (src4)
 {
  temp = quote_identifier(src4);
  appendStringInfo(&result, ".%s", temp);
  if (src4 != temp)
   pfree((void *) temp);
 }
 return result.data;
}

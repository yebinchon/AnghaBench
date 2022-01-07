
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_3__ {int maxlen; int len; char* data; } ;
typedef TYPE_1__* StringInfo ;


 int Assert (int ) ;
 size_t pvsnprintf (char*,size_t,char const*,int ) ;

int
appendStringInfoVA(StringInfo str, const char *fmt, va_list args)
{
 int avail;
 size_t nprinted;

 Assert(str != ((void*)0));






 avail = str->maxlen - str->len;
 if (avail < 16)
  return 32;

 nprinted = pvsnprintf(str->data + str->len, (size_t) avail, fmt, args);

 if (nprinted < (size_t) avail)
 {

  str->len += (int) nprinted;
  return 0;
 }


 str->data[str->len] = '\0';






 return (int) nprinted;
}

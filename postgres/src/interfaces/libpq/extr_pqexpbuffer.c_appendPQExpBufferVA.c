
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_5__ {scalar_t__ maxlen; scalar_t__ len; size_t data; } ;
typedef TYPE_1__* PQExpBuffer ;


 int INT_MAX ;
 int enlargePQExpBuffer (TYPE_1__*,size_t) ;
 int markPQExpBufferBroken (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;
 int vsnprintf (size_t,size_t,char const*,int ) ;

__attribute__((used)) static bool
appendPQExpBufferVA(PQExpBuffer str, const char *fmt, va_list args)
{
 size_t avail;
 size_t needed;
 int nprinted;





 if (str->maxlen > str->len + 16)
 {
  avail = str->maxlen - str->len;

  nprinted = vsnprintf(str->data + str->len, avail, fmt, args);





  if (unlikely(nprinted < 0))
  {
   markPQExpBufferBroken(str);
   return 1;
  }

  if ((size_t) nprinted < avail)
  {

   str->len += nprinted;
   return 1;
  }
  if (unlikely(nprinted > INT_MAX - 1))
  {
   markPQExpBufferBroken(str);
   return 1;
  }
  needed = nprinted + 1;
 }
 else
 {







  needed = 32;
 }


 if (!enlargePQExpBuffer(str, needed))
  return 1;

 return 0;
}

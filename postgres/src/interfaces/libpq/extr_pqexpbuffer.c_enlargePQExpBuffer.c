
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t len; size_t maxlen; char* data; } ;
typedef TYPE_1__* PQExpBuffer ;


 scalar_t__ INT_MAX ;
 scalar_t__ PQExpBufferBroken (TYPE_1__*) ;
 int markPQExpBufferBroken (TYPE_1__*) ;
 scalar_t__ realloc (char*,size_t) ;

int
enlargePQExpBuffer(PQExpBuffer str, size_t needed)
{
 size_t newlen;
 char *newdata;

 if (PQExpBufferBroken(str))
  return 0;






 if (needed >= ((size_t) INT_MAX - str->len))
 {
  markPQExpBufferBroken(str);
  return 0;
 }

 needed += str->len + 1;



 if (needed <= str->maxlen)
  return 1;






 newlen = (str->maxlen > 0) ? (2 * str->maxlen) : 64;
 while (needed > newlen)
  newlen = 2 * newlen;






 if (newlen > (size_t) INT_MAX)
  newlen = (size_t) INT_MAX;

 newdata = (char *) realloc(str->data, newlen);
 if (newdata != ((void*)0))
 {
  str->data = newdata;
  str->maxlen = newlen;
  return 1;
 }

 markPQExpBufferBroken(str);
 return 0;
}

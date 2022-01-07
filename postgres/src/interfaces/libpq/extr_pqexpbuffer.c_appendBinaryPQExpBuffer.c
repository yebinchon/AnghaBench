
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; int len; } ;
typedef TYPE_1__* PQExpBuffer ;


 int enlargePQExpBuffer (TYPE_1__*,size_t) ;
 int memcpy (char*,char const*,size_t) ;

void
appendBinaryPQExpBuffer(PQExpBuffer str, const char *data, size_t datalen)
{

 if (!enlargePQExpBuffer(str, datalen))
  return;


 memcpy(str->data + str->len, data, datalen);
 str->len += datalen;





 str->data[str->len] = '\0';
}

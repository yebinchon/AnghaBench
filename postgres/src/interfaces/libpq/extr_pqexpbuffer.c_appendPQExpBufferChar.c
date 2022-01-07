
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; size_t len; } ;
typedef TYPE_1__* PQExpBuffer ;


 int enlargePQExpBuffer (TYPE_1__*,int) ;

void
appendPQExpBufferChar(PQExpBuffer str, char ch)
{

 if (!enlargePQExpBuffer(str, 1))
  return;


 str->data[str->len] = ch;
 str->len++;
 str->data[str->len] = '\0';
}

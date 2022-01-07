
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; scalar_t__ len; } ;
typedef TYPE_1__* PQExpBuffer ;


 int initPQExpBuffer (TYPE_1__*) ;
 char* oom_buffer ;

void
resetPQExpBuffer(PQExpBuffer str)
{
 if (str)
 {
  if (str->data != oom_buffer)
  {
   str->len = 0;
   str->data[0] = '\0';
  }
  else
  {

   initPQExpBuffer(str);
  }
 }
}

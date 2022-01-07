
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ len; int data; } ;
typedef TYPE_1__* PQExpBuffer ;


 int appendPQExpBufferStr (TYPE_1__*,int ) ;

__attribute__((used)) static void
copy_previous_query(PQExpBuffer query_buf, PQExpBuffer previous_buf)
{
 if (query_buf && query_buf->len == 0)
  appendPQExpBufferStr(query_buf, previous_buf->data);
}

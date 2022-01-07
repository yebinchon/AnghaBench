
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ len; } ;
typedef TYPE_1__* PQExpBuffer ;


 int appendPQExpBufferStr (TYPE_1__*,char const* const) ;

__attribute__((used)) static void
add_role_attribute(PQExpBuffer buf, const char *const str)
{
 if (buf->len > 0)
  appendPQExpBufferStr(buf, ", ");

 appendPQExpBufferStr(buf, str);
}

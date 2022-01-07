
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ len; } ;
typedef TYPE_1__* PQExpBuffer ;


 int appendPQExpBuffer (TYPE_1__*,char*,char const*) ;
 int appendPQExpBufferChar (TYPE_1__*,char) ;
 int appendPQExpBufferStr (TYPE_1__*,char const*) ;

__attribute__((used)) static void
AddAcl(PQExpBuffer aclbuf, const char *keyword, const char *subname)
{
 if (aclbuf->len > 0)
  appendPQExpBufferChar(aclbuf, ',');
 appendPQExpBufferStr(aclbuf, keyword);
 if (subname)
  appendPQExpBuffer(aclbuf, "(%s)", subname);
}

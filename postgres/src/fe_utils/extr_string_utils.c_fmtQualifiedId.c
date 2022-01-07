
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char const* data; } ;
typedef TYPE_1__* PQExpBuffer ;


 int appendPQExpBuffer (TYPE_1__*,char*,char const*) ;
 int appendPQExpBufferStr (TYPE_1__*,char const*) ;
 TYPE_1__* createPQExpBuffer () ;
 int destroyPQExpBuffer (TYPE_1__*) ;
 char const* fmtId (char const*) ;
 TYPE_1__* getLocalPQExpBuffer () ;

const char *
fmtQualifiedId(const char *schema, const char *id)
{
 PQExpBuffer id_return;
 PQExpBuffer lcl_pqexp = createPQExpBuffer();


 if (schema && *schema)
 {
  appendPQExpBuffer(lcl_pqexp, "%s.", fmtId(schema));
 }
 appendPQExpBufferStr(lcl_pqexp, fmtId(id));

 id_return = getLocalPQExpBuffer();

 appendPQExpBufferStr(id_return, lcl_pqexp->data);
 destroyPQExpBuffer(lcl_pqexp);

 return id_return->data;
}

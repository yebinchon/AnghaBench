
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PQExpBuffer ;


 int appendBinaryPQExpBuffer (int ,char const*,int ) ;
 int strlen (char const*) ;

void
appendPQExpBufferStr(PQExpBuffer str, const char *data)
{
 appendBinaryPQExpBuffer(str, data, strlen(data));
}

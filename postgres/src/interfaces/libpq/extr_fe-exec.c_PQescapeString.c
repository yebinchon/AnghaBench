
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t PQescapeStringInternal (int *,char*,char const*,size_t,int *,int ,int ) ;
 int static_client_encoding ;
 int static_std_strings ;

size_t
PQescapeString(char *to, const char *from, size_t length)
{
 return PQescapeStringInternal(((void*)0), to, from, length, ((void*)0),
          static_client_encoding,
          static_std_strings);
}

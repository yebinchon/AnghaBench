
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strchr (char const*,char) ;
 scalar_t__ uri_prefix_length (char const*) ;

bool
recognized_connection_string(const char *connstr)
{
 return uri_prefix_length(connstr) != 0 || strchr(connstr, '=') != ((void*)0);
}

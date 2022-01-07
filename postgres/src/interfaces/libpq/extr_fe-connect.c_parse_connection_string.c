
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PQconninfoOption ;
typedef int PQExpBuffer ;


 int * conninfo_parse (char const*,int ,int) ;
 int * conninfo_uri_parse (char const*,int ,int) ;
 scalar_t__ uri_prefix_length (char const*) ;

__attribute__((used)) static PQconninfoOption *
parse_connection_string(const char *connstr, PQExpBuffer errorMessage,
      bool use_defaults)
{

 if (uri_prefix_length(connstr) != 0)
  return conninfo_uri_parse(connstr, errorMessage, use_defaults);


 return conninfo_parse(connstr, errorMessage, use_defaults);
}

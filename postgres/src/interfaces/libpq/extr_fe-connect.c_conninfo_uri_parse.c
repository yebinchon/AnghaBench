
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PQconninfoOption ;
typedef int PQExpBuffer ;


 int PQconninfoFree (int *) ;
 int conninfo_add_defaults (int *,int ) ;
 int * conninfo_init (int ) ;
 int conninfo_uri_parse_options (int *,char const*,int ) ;

__attribute__((used)) static PQconninfoOption *
conninfo_uri_parse(const char *uri, PQExpBuffer errorMessage,
       bool use_defaults)
{
 PQconninfoOption *options;


 options = conninfo_init(errorMessage);
 if (options == ((void*)0))
  return ((void*)0);

 if (!conninfo_uri_parse_options(options, uri, errorMessage))
 {
  PQconninfoFree(options);
  return ((void*)0);
 }




 if (use_defaults)
 {
  if (!conninfo_add_defaults(options, errorMessage))
  {
   PQconninfoFree(options);
   return ((void*)0);
  }
 }

 return options;
}

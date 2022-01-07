
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char const* data; } ;
typedef int PQconninfoOption ;
typedef TYPE_1__ PQExpBufferData ;
typedef int PQExpBuffer ;


 scalar_t__ PQExpBufferDataBroken (TYPE_1__) ;
 int appendPQExpBufferChar (TYPE_1__*,char) ;
 int appendPQExpBufferStr (TYPE_1__*,char const*) ;
 int conninfo_storeval (int *,char*,char const*,int ,int,int) ;
 int conninfo_uri_parse_params (char*,int *,int ) ;
 int free (char*) ;
 int initPQExpBuffer (TYPE_1__*) ;
 int libpq_gettext (char*) ;
 int printfPQExpBuffer (int ,int ,...) ;
 char* strdup (char const*) ;
 int termPQExpBuffer (TYPE_1__*) ;
 int uri_prefix_length (char const*) ;

__attribute__((used)) static bool
conninfo_uri_parse_options(PQconninfoOption *options, const char *uri,
         PQExpBuffer errorMessage)
{
 int prefix_len;
 char *p;
 char *buf = ((void*)0);
 char *start;
 char prevchar = '\0';
 char *user = ((void*)0);
 char *host = ((void*)0);
 bool retval = 0;
 PQExpBufferData hostbuf;
 PQExpBufferData portbuf;

 initPQExpBuffer(&hostbuf);
 initPQExpBuffer(&portbuf);
 if (PQExpBufferDataBroken(hostbuf) || PQExpBufferDataBroken(portbuf))
 {
  printfPQExpBuffer(errorMessage,
        libpq_gettext("out of memory\n"));
  goto cleanup;
 }


 buf = strdup(uri);
 if (buf == ((void*)0))
 {
  printfPQExpBuffer(errorMessage,
        libpq_gettext("out of memory\n"));
  goto cleanup;
 }
 start = buf;


 prefix_len = uri_prefix_length(uri);
 if (prefix_len == 0)
 {

  printfPQExpBuffer(errorMessage,
        libpq_gettext("invalid URI propagated to internal parser routine: \"%s\"\n"),
        uri);
  goto cleanup;
 }
 start += prefix_len;
 p = start;


 while (*p && *p != '@' && *p != '/')
  ++p;
 if (*p == '@')
 {




  user = start;

  p = user;
  while (*p != ':' && *p != '@')
   ++p;


  prevchar = *p;
  *p = '\0';

  if (*user &&
   !conninfo_storeval(options, "user", user,
          errorMessage, 0, 1))
   goto cleanup;

  if (prevchar == ':')
  {
   const char *password = p + 1;

   while (*p != '@')
    ++p;
   *p = '\0';

   if (*password &&
    !conninfo_storeval(options, "password", password,
           errorMessage, 0, 1))
    goto cleanup;
  }


  ++p;
 }
 else
 {



  p = start;
 }
 for (;;)
 {



  if (*p == '[')
  {
   host = ++p;
   while (*p && *p != ']')
    ++p;
   if (!*p)
   {
    printfPQExpBuffer(errorMessage,
          libpq_gettext("end of string reached when looking for matching \"]\" in IPv6 host address in URI: \"%s\"\n"),
          uri);
    goto cleanup;
   }
   if (p == host)
   {
    printfPQExpBuffer(errorMessage,
          libpq_gettext("IPv6 host address may not be empty in URI: \"%s\"\n"),
          uri);
    goto cleanup;
   }


   *(p++) = '\0';





   if (*p && *p != ':' && *p != '/' && *p != '?' && *p != ',')
   {
    printfPQExpBuffer(errorMessage,
          libpq_gettext("unexpected character \"%c\" at position %d in URI (expected \":\" or \"/\"): \"%s\"\n"),
          *p, (int) (p - buf + 1), uri);
    goto cleanup;
   }
  }
  else
  {

   host = p;





   while (*p && *p != ':' && *p != '/' && *p != '?' && *p != ',')
    ++p;
  }


  prevchar = *p;
  *p = '\0';

  appendPQExpBufferStr(&hostbuf, host);

  if (prevchar == ':')
  {
   const char *port = ++p;

   while (*p && *p != '/' && *p != '?' && *p != ',')
    ++p;

   prevchar = *p;
   *p = '\0';

   appendPQExpBufferStr(&portbuf, port);
  }

  if (prevchar != ',')
   break;
  ++p;
  appendPQExpBufferChar(&hostbuf, ',');
  appendPQExpBufferChar(&portbuf, ',');
 }


 if (PQExpBufferDataBroken(hostbuf) || PQExpBufferDataBroken(portbuf))
  goto cleanup;
 if (hostbuf.data[0] &&
  !conninfo_storeval(options, "host", hostbuf.data,
         errorMessage, 0, 1))
  goto cleanup;
 if (portbuf.data[0] &&
  !conninfo_storeval(options, "port", portbuf.data,
         errorMessage, 0, 1))
  goto cleanup;

 if (prevchar && prevchar != '?')
 {
  const char *dbname = ++p;


  while (*p && *p != '?')
   ++p;

  prevchar = *p;
  *p = '\0';






  if (*dbname &&
   !conninfo_storeval(options, "dbname", dbname,
          errorMessage, 0, 1))
   goto cleanup;
 }

 if (prevchar)
 {
  ++p;

  if (!conninfo_uri_parse_params(p, options, errorMessage))
   goto cleanup;
 }


 retval = 1;

cleanup:
 termPQExpBuffer(&hostbuf);
 termPQExpBuffer(&portbuf);
 if (buf)
  free(buf);
 return retval;
}

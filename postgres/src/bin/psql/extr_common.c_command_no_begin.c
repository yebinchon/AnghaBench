
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int encoding; } ;


 scalar_t__ PQmblen (char const*,int ) ;
 scalar_t__ isalpha (unsigned char) ;
 scalar_t__ pg_strncasecmp (char const*,char*,int) ;
 TYPE_1__ pset ;
 char* skip_white_space (char const*) ;

__attribute__((used)) static bool
command_no_begin(const char *query)
{
 int wordlen;




 query = skip_white_space(query);




 wordlen = 0;
 while (isalpha((unsigned char) query[wordlen]))
  wordlen += PQmblen(&query[wordlen], pset.encoding);
 if (wordlen == 5 && pg_strncasecmp(query, "abort", 5) == 0)
  return 1;
 if (wordlen == 5 && pg_strncasecmp(query, "begin", 5) == 0)
  return 1;
 if (wordlen == 5 && pg_strncasecmp(query, "start", 5) == 0)
  return 1;
 if (wordlen == 6 && pg_strncasecmp(query, "commit", 6) == 0)
  return 1;
 if (wordlen == 3 && pg_strncasecmp(query, "end", 3) == 0)
  return 1;
 if (wordlen == 8 && pg_strncasecmp(query, "rollback", 8) == 0)
  return 1;
 if (wordlen == 7 && pg_strncasecmp(query, "prepare", 7) == 0)
 {

  query += wordlen;

  query = skip_white_space(query);

  wordlen = 0;
  while (isalpha((unsigned char) query[wordlen]))
   wordlen += PQmblen(&query[wordlen], pset.encoding);

  if (wordlen == 11 && pg_strncasecmp(query, "transaction", 11) == 0)
   return 1;
  return 0;
 }






 if (wordlen == 6 && pg_strncasecmp(query, "vacuum", 6) == 0)
  return 1;
 if (wordlen == 7 && pg_strncasecmp(query, "cluster", 7) == 0)
 {

  query += wordlen;

  query = skip_white_space(query);

  if (isalpha((unsigned char) query[0]))
   return 0;
  return 1;
 }

 if (wordlen == 6 && pg_strncasecmp(query, "create", 6) == 0)
 {
  query += wordlen;

  query = skip_white_space(query);

  wordlen = 0;
  while (isalpha((unsigned char) query[wordlen]))
   wordlen += PQmblen(&query[wordlen], pset.encoding);

  if (wordlen == 8 && pg_strncasecmp(query, "database", 8) == 0)
   return 1;
  if (wordlen == 10 && pg_strncasecmp(query, "tablespace", 10) == 0)
   return 1;


  if (wordlen == 6 && pg_strncasecmp(query, "unique", 6) == 0)
  {
   query += wordlen;

   query = skip_white_space(query);

   wordlen = 0;
   while (isalpha((unsigned char) query[wordlen]))
    wordlen += PQmblen(&query[wordlen], pset.encoding);
  }

  if (wordlen == 5 && pg_strncasecmp(query, "index", 5) == 0)
  {
   query += wordlen;

   query = skip_white_space(query);

   wordlen = 0;
   while (isalpha((unsigned char) query[wordlen]))
    wordlen += PQmblen(&query[wordlen], pset.encoding);

   if (wordlen == 12 && pg_strncasecmp(query, "concurrently", 12) == 0)
    return 1;
  }

  return 0;
 }

 if (wordlen == 5 && pg_strncasecmp(query, "alter", 5) == 0)
 {
  query += wordlen;

  query = skip_white_space(query);

  wordlen = 0;
  while (isalpha((unsigned char) query[wordlen]))
   wordlen += PQmblen(&query[wordlen], pset.encoding);


  if (wordlen == 6 && pg_strncasecmp(query, "system", 6) == 0)
   return 1;

  return 0;
 }






 if ((wordlen == 4 && pg_strncasecmp(query, "drop", 4) == 0) ||
  (wordlen == 7 && pg_strncasecmp(query, "reindex", 7) == 0))
 {
  query += wordlen;

  query = skip_white_space(query);

  wordlen = 0;
  while (isalpha((unsigned char) query[wordlen]))
   wordlen += PQmblen(&query[wordlen], pset.encoding);

  if (wordlen == 8 && pg_strncasecmp(query, "database", 8) == 0)
   return 1;
  if (wordlen == 6 && pg_strncasecmp(query, "system", 6) == 0)
   return 1;
  if (wordlen == 10 && pg_strncasecmp(query, "tablespace", 10) == 0)
   return 1;
  if (wordlen == 5 && (pg_strncasecmp(query, "index", 5) == 0 ||
        pg_strncasecmp(query, "table", 5) == 0))
  {
   query += wordlen;
   query = skip_white_space(query);
   wordlen = 0;
   while (isalpha((unsigned char) query[wordlen]))
    wordlen += PQmblen(&query[wordlen], pset.encoding);





   if (wordlen == 12 && pg_strncasecmp(query, "concurrently", 12) == 0)
    return 1;
  }


  if (wordlen == 5 && pg_strncasecmp(query, "index", 5) == 0)
  {
   query += wordlen;

   query = skip_white_space(query);

   wordlen = 0;
   while (isalpha((unsigned char) query[wordlen]))
    wordlen += PQmblen(&query[wordlen], pset.encoding);

   if (wordlen == 12 && pg_strncasecmp(query, "concurrently", 12) == 0)
    return 1;

   return 0;
  }

  return 0;
 }


 if (wordlen == 7 && pg_strncasecmp(query, "discard", 7) == 0)
 {
  query += wordlen;

  query = skip_white_space(query);

  wordlen = 0;
  while (isalpha((unsigned char) query[wordlen]))
   wordlen += PQmblen(&query[wordlen], pset.encoding);

  if (wordlen == 3 && pg_strncasecmp(query, "all", 3) == 0)
   return 1;
  return 0;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PQmblen (char const*,int) ;
 char* pg_strdup (char const*) ;

void
splitTableColumnsSpec(const char *spec, int encoding,
       char **table, const char **columns)
{
 bool inquotes = 0;
 const char *cp = spec;





 while (*cp && (*cp != '(' || inquotes))
 {
  if (*cp == '"')
  {
   if (inquotes && cp[1] == '"')
    cp++;
   else
    inquotes = !inquotes;
   cp++;
  }
  else
   cp += PQmblen(cp, encoding);
 }
 *table = pg_strdup(spec);
 (*table)[cp - spec] = '\0';
 *columns = cp;
}

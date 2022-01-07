
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int text ;
struct TYPE_3__ {scalar_t__ name; int value; } ;
typedef TYPE_1__ priv_map ;
typedef int AclMode ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 scalar_t__ isspace (unsigned char) ;
 int pfree (char*) ;
 scalar_t__ pg_strcasecmp (scalar_t__,char*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 char* text_to_cstring (int *) ;

__attribute__((used)) static AclMode
convert_any_priv_string(text *priv_type_text,
      const priv_map *privileges)
{
 AclMode result = 0;
 char *priv_type = text_to_cstring(priv_type_text);
 char *chunk;
 char *next_chunk;


 for (chunk = priv_type; chunk; chunk = next_chunk)
 {
  int chunk_len;
  const priv_map *this_priv;


  next_chunk = strchr(chunk, ',');
  if (next_chunk)
   *next_chunk++ = '\0';


  while (*chunk && isspace((unsigned char) *chunk))
   chunk++;
  chunk_len = strlen(chunk);
  while (chunk_len > 0 && isspace((unsigned char) chunk[chunk_len - 1]))
   chunk_len--;
  chunk[chunk_len] = '\0';


  for (this_priv = privileges; this_priv->name; this_priv++)
  {
   if (pg_strcasecmp(this_priv->name, chunk) == 0)
   {
    result |= this_priv->value;
    break;
   }
  }
  if (!this_priv->name)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("unrecognized privilege type: \"%s\"", chunk)));
 }

 pfree(priv_type);
 return result;
}

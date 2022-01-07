
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* name; int encoding; } ;
typedef TYPE_1__ pg_encname ;


 int ERRCODE_NAME_TOO_LONG ;
 int ERROR ;
 int NAMEDATALEN ;
 char* clean_encoding_name (char const*,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int fprintf (int ,char*) ;
 unsigned int lengthof (TYPE_1__*) ;
 TYPE_1__* pg_encname_tbl ;
 int stderr ;
 int strcmp (char*,char*) ;
 int strlen (char const*) ;

int
pg_char_to_encoding(const char *name)
{
 unsigned int nel = lengthof(pg_encname_tbl);
 const pg_encname *base = pg_encname_tbl,
      *last = base + nel - 1,
      *position;
 int result;
 char buff[NAMEDATALEN],
      *key;

 if (name == ((void*)0) || *name == '\0')
  return -1;

 if (strlen(name) >= NAMEDATALEN)
 {




  ereport(ERROR,
    (errcode(ERRCODE_NAME_TOO_LONG),
     errmsg("encoding name too long")));

 }
 key = clean_encoding_name(name, buff);

 while (last >= base)
 {
  position = base + ((last - base) >> 1);
  result = key[0] - position->name[0];

  if (result == 0)
  {
   result = strcmp(key, position->name);
   if (result == 0)
    return position->encoding;
  }
  if (result < 0)
   last = position - 1;
  else
   base = position + 1;
 }
 return -1;
}

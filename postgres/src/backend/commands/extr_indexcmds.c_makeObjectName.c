
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 int NAMEDATALEN ;
 int memcpy (char*,char const*,int) ;
 char* palloc (int) ;
 int pg_mbcliplen (char const*,int,int) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

char *
makeObjectName(const char *name1, const char *name2, const char *label)
{
 char *name;
 int overhead = 0;
 int availchars;
 int name1chars;
 int name2chars;
 int ndx;

 name1chars = strlen(name1);
 if (name2)
 {
  name2chars = strlen(name2);
  overhead++;
 }
 else
  name2chars = 0;
 if (label)
  overhead += strlen(label) + 1;

 availchars = NAMEDATALEN - 1 - overhead;
 Assert(availchars > 0);






 while (name1chars + name2chars > availchars)
 {
  if (name1chars > name2chars)
   name1chars--;
  else
   name2chars--;
 }

 name1chars = pg_mbcliplen(name1, name1chars, name1chars);
 if (name2)
  name2chars = pg_mbcliplen(name2, name2chars, name2chars);


 name = palloc(name1chars + name2chars + overhead + 1);
 memcpy(name, name1, name1chars);
 ndx = name1chars;
 if (name2)
 {
  name[ndx++] = '_';
  memcpy(name + ndx, name2, name2chars);
  ndx += name2chars;
 }
 if (label)
 {
  name[ndx++] = '_';
  strcpy(name + ndx, label);
 }
 else
  name[ndx] = '\0';

 return name;
}

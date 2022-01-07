
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* path; void* oid; } ;
typedef TYPE_1__ tablespaceinfo ;
typedef int List ;
typedef int FILE ;


 int * AllocateFile (int ,char*) ;
 scalar_t__ ENOENT ;
 int EOF ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int FATAL ;
 scalar_t__ FreeFile (int *) ;
 int MAXPGPATH ;
 int TABLESPACE_MAP ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,int ) ;
 scalar_t__ errno ;
 scalar_t__ ferror (int *) ;
 int fgetc (int *) ;
 int * lappend (int *,TYPE_1__*) ;
 TYPE_1__* palloc (int) ;
 void* pstrdup (char*) ;
 int sscanf (char*,char*,char*,int*) ;

__attribute__((used)) static bool
read_tablespace_map(List **tablespaces)
{
 tablespaceinfo *ti;
 FILE *lfp;
 char tbsoid[MAXPGPATH];
 char *tbslinkpath;
 char str[MAXPGPATH];
 int ch,
    prev_ch = -1,
    i = 0,
    n;




 lfp = AllocateFile(TABLESPACE_MAP, "r");
 if (!lfp)
 {
  if (errno != ENOENT)
   ereport(FATAL,
     (errcode_for_file_access(),
      errmsg("could not read file \"%s\": %m",
       TABLESPACE_MAP)));
  return 0;
 }
 while ((ch = fgetc(lfp)) != EOF)
 {
  if ((ch == '\n' || ch == '\r') && prev_ch != '\\')
  {
   str[i] = '\0';
   if (sscanf(str, "%s %n", tbsoid, &n) != 1)
    ereport(FATAL,
      (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
       errmsg("invalid data in file \"%s\"", TABLESPACE_MAP)));
   tbslinkpath = str + n;
   i = 0;

   ti = palloc(sizeof(tablespaceinfo));
   ti->oid = pstrdup(tbsoid);
   ti->path = pstrdup(tbslinkpath);

   *tablespaces = lappend(*tablespaces, ti);
   continue;
  }
  else if ((ch == '\n' || ch == '\r') && prev_ch == '\\')
   str[i - 1] = ch;
  else
   str[i++] = ch;
  prev_ch = ch;
 }

 if (ferror(lfp) || FreeFile(lfp))
  ereport(FATAL,
    (errcode_for_file_access(),
     errmsg("could not read file \"%s\": %m",
      TABLESPACE_MAP)));

 return 1;
}

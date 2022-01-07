
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int name; int value; struct TYPE_9__* next; } ;
struct TYPE_8__ {int * schema; int relocatable; int requires; int encoding; int superuser; void* comment; void* module_pathname; void* default_version; void* directory; int name; } ;
typedef int FILE ;
typedef TYPE_1__ ExtensionControlFile ;
typedef TYPE_2__ ConfigVariable ;


 int * AllocateFile (char*,char*) ;
 scalar_t__ ENOENT ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERRCODE_SYNTAX_ERROR ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int FreeConfigVariables (TYPE_2__*) ;
 int FreeFile (int *) ;
 int ParseConfigFp (int *,char*,int ,int ,TYPE_2__**,TYPE_2__**) ;
 int SplitIdentifierString (char*,char,int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,...) ;
 scalar_t__ errno ;
 char* get_extension_aux_control_filename (TYPE_1__*,char const*) ;
 char* get_extension_control_filename (int ) ;
 int parse_bool (int ,int *) ;
 int pfree (char*) ;
 int pg_valid_server_encoding (int ) ;
 void* pstrdup (int ) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void
parse_extension_control_file(ExtensionControlFile *control,
        const char *version)
{
 char *filename;
 FILE *file;
 ConfigVariable *item,
      *head = ((void*)0),
      *tail = ((void*)0);




 if (version)
  filename = get_extension_aux_control_filename(control, version);
 else
  filename = get_extension_control_filename(control->name);

 if ((file = AllocateFile(filename, "r")) == ((void*)0))
 {
  if (version && errno == ENOENT)
  {

   pfree(filename);
   return;
  }
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not open extension control file \"%s\": %m",
      filename)));
 }





 (void) ParseConfigFp(file, filename, 0, ERROR, &head, &tail);

 FreeFile(file);




 for (item = head; item != ((void*)0); item = item->next)
 {
  if (strcmp(item->name, "directory") == 0)
  {
   if (version)
    ereport(ERROR,
      (errcode(ERRCODE_SYNTAX_ERROR),
       errmsg("parameter \"%s\" cannot be set in a secondary extension control file",
        item->name)));

   control->directory = pstrdup(item->value);
  }
  else if (strcmp(item->name, "default_version") == 0)
  {
   if (version)
    ereport(ERROR,
      (errcode(ERRCODE_SYNTAX_ERROR),
       errmsg("parameter \"%s\" cannot be set in a secondary extension control file",
        item->name)));

   control->default_version = pstrdup(item->value);
  }
  else if (strcmp(item->name, "module_pathname") == 0)
  {
   control->module_pathname = pstrdup(item->value);
  }
  else if (strcmp(item->name, "comment") == 0)
  {
   control->comment = pstrdup(item->value);
  }
  else if (strcmp(item->name, "schema") == 0)
  {
   control->schema = pstrdup(item->value);
  }
  else if (strcmp(item->name, "relocatable") == 0)
  {
   if (!parse_bool(item->value, &control->relocatable))
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
       errmsg("parameter \"%s\" requires a Boolean value",
        item->name)));
  }
  else if (strcmp(item->name, "superuser") == 0)
  {
   if (!parse_bool(item->value, &control->superuser))
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
       errmsg("parameter \"%s\" requires a Boolean value",
        item->name)));
  }
  else if (strcmp(item->name, "encoding") == 0)
  {
   control->encoding = pg_valid_server_encoding(item->value);
   if (control->encoding < 0)
    ereport(ERROR,
      (errcode(ERRCODE_UNDEFINED_OBJECT),
       errmsg("\"%s\" is not a valid encoding name",
        item->value)));
  }
  else if (strcmp(item->name, "requires") == 0)
  {

   char *rawnames = pstrdup(item->value);


   if (!SplitIdentifierString(rawnames, ',', &control->requires))
   {

    ereport(ERROR,
      (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
       errmsg("parameter \"%s\" must be a list of extension names",
        item->name)));
   }
  }
  else
   ereport(ERROR,
     (errcode(ERRCODE_SYNTAX_ERROR),
      errmsg("unrecognized parameter \"%s\" in file \"%s\"",
       item->name, filename)));
 }

 FreeConfigVariables(head);

 if (control->relocatable && control->schema != ((void*)0))
  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),
     errmsg("parameter \"schema\" cannot be specified when \"relocatable\" is true")));

 pfree(filename);
}

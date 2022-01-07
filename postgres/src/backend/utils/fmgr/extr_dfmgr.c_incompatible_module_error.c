
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int library_version ;
struct TYPE_11__ {int version; scalar_t__ funcmaxargs; scalar_t__ indexmaxkeys; scalar_t__ namedatalen; scalar_t__ float4byval; scalar_t__ float8byval; } ;
struct TYPE_10__ {int version; scalar_t__ funcmaxargs; scalar_t__ indexmaxkeys; scalar_t__ namedatalen; scalar_t__ float4byval; scalar_t__ float8byval; } ;
struct TYPE_9__ {scalar_t__ len; int data; } ;
typedef TYPE_1__ StringInfoData ;
typedef TYPE_2__ Pg_magic_struct ;


 int ERROR ;
 int _ (char*) ;
 int appendStringInfo (TYPE_1__*,int ,char*,char*) ;
 int appendStringInfoChar (TYPE_1__*,char) ;
 int appendStringInfoString (TYPE_1__*,int ) ;
 int ereport (int ,int ) ;
 int errdetail (char*,int,char*) ;
 int errdetail_internal (char*,int ) ;
 int errmsg (char*,char const*) ;
 int initStringInfo (TYPE_1__*) ;
 TYPE_3__ magic_data ;
 int snprintf (char*,int,char*,int,...) ;

__attribute__((used)) static void
incompatible_module_error(const char *libname,
        const Pg_magic_struct *module_magic_data)
{
 StringInfoData details;





 if (magic_data.version != module_magic_data->version)
 {
  char library_version[32];

  if (module_magic_data->version >= 1000)
   snprintf(library_version, sizeof(library_version), "%d",
      module_magic_data->version / 100);
  else
   snprintf(library_version, sizeof(library_version), "%d.%d",
      module_magic_data->version / 100,
      module_magic_data->version % 100);
  ereport(ERROR,
    (errmsg("incompatible library \"%s\": version mismatch",
      libname),
     errdetail("Server is version %d, library is version %s.",
         magic_data.version / 100, library_version)));
 }







 initStringInfo(&details);

 if (module_magic_data->funcmaxargs != magic_data.funcmaxargs)
 {
  if (details.len)
   appendStringInfoChar(&details, '\n');
  appendStringInfo(&details,
       _("Server has FUNC_MAX_ARGS = %d, library has %d."),
       magic_data.funcmaxargs,
       module_magic_data->funcmaxargs);
 }
 if (module_magic_data->indexmaxkeys != magic_data.indexmaxkeys)
 {
  if (details.len)
   appendStringInfoChar(&details, '\n');
  appendStringInfo(&details,
       _("Server has INDEX_MAX_KEYS = %d, library has %d."),
       magic_data.indexmaxkeys,
       module_magic_data->indexmaxkeys);
 }
 if (module_magic_data->namedatalen != magic_data.namedatalen)
 {
  if (details.len)
   appendStringInfoChar(&details, '\n');
  appendStringInfo(&details,
       _("Server has NAMEDATALEN = %d, library has %d."),
       magic_data.namedatalen,
       module_magic_data->namedatalen);
 }
 if (module_magic_data->float4byval != magic_data.float4byval)
 {
  if (details.len)
   appendStringInfoChar(&details, '\n');
  appendStringInfo(&details,
       _("Server has FLOAT4PASSBYVAL = %s, library has %s."),
       magic_data.float4byval ? "true" : "false",
       module_magic_data->float4byval ? "true" : "false");
 }
 if (module_magic_data->float8byval != magic_data.float8byval)
 {
  if (details.len)
   appendStringInfoChar(&details, '\n');
  appendStringInfo(&details,
       _("Server has FLOAT8PASSBYVAL = %s, library has %s."),
       magic_data.float8byval ? "true" : "false",
       module_magic_data->float8byval ? "true" : "false");
 }

 if (details.len == 0)
  appendStringInfoString(&details,
          _("Magic block has unexpected length or padding difference."));

 ereport(ERROR,
   (errmsg("incompatible library \"%s\": magic block mismatch",
     libname),
    errdetail_internal("%s", details.data)));
}

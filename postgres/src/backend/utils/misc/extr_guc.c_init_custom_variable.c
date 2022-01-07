
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_generic {char const* short_desc; char const* long_desc; int flags; int vartype; int group; scalar_t__ context; int name; } ;
typedef enum config_type { ____Placeholder_config_type } config_type ;
typedef scalar_t__ GucContext ;


 int CUSTOM_OPTIONS ;
 int ERROR ;
 int FATAL ;
 int GUC_LIST_QUOTE ;
 scalar_t__ PGC_POSTMASTER ;
 scalar_t__ PGC_SUSET ;
 scalar_t__ PGC_USERSET ;
 int elog (int ,char*) ;
 scalar_t__ guc_malloc (int ,size_t) ;
 int guc_strdup (int ,char const*) ;
 int memset (struct config_generic*,int ,size_t) ;
 int process_shared_preload_libraries_in_progress ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static struct config_generic *
init_custom_variable(const char *name,
      const char *short_desc,
      const char *long_desc,
      GucContext context,
      int flags,
      enum config_type type,
      size_t sz)
{
 struct config_generic *gen;
 if (context == PGC_POSTMASTER &&
  !process_shared_preload_libraries_in_progress)
  elog(FATAL, "cannot create PGC_POSTMASTER variables after startup");







 if (flags & GUC_LIST_QUOTE)
  elog(FATAL, "extensions cannot define GUC_LIST_QUOTE variables");







 if (context == PGC_USERSET &&
  (strcmp(name, "pljava.classpath") == 0 ||
   strcmp(name, "pljava.vmoptions") == 0))
  context = PGC_SUSET;

 gen = (struct config_generic *) guc_malloc(ERROR, sz);
 memset(gen, 0, sz);

 gen->name = guc_strdup(ERROR, name);
 gen->context = context;
 gen->group = CUSTOM_OPTIONS;
 gen->short_desc = short_desc;
 gen->long_desc = long_desc;
 gen->flags = flags;
 gen->vartype = type;

 return gen;
}

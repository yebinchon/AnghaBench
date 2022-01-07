
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_string {char** variable; } ;
struct config_real {int * variable; } ;
struct config_int {char** variable; } ;
struct config_generic {char* name; int vartype; char* sourcefile; int scontext; int source; int sourceline; } ;
struct config_enum {int * variable; } ;
struct config_bool {int * variable; } ;
typedef int Size ;







 int REALTYPE_PRECISION ;
 scalar_t__ can_skip_gucvar (struct config_generic*) ;
 char* config_enum_lookup_by_value (struct config_enum*,int ) ;
 int do_serialize (char**,int *,char*,...) ;
 int do_serialize_binary (char**,int *,int *,int) ;

__attribute__((used)) static void
serialize_variable(char **destptr, Size *maxbytes,
       struct config_generic *gconf)
{
 if (can_skip_gucvar(gconf))
  return;

 do_serialize(destptr, maxbytes, "%s", gconf->name);

 switch (gconf->vartype)
 {
  case 132:
   {
    struct config_bool *conf = (struct config_bool *) gconf;

    do_serialize(destptr, maxbytes,
        (*conf->variable ? "true" : "false"));
   }
   break;

  case 130:
   {
    struct config_int *conf = (struct config_int *) gconf;

    do_serialize(destptr, maxbytes, "%d", *conf->variable);
   }
   break;

  case 129:
   {
    struct config_real *conf = (struct config_real *) gconf;

    do_serialize(destptr, maxbytes, "%.*e",
        REALTYPE_PRECISION, *conf->variable);
   }
   break;

  case 128:
   {
    struct config_string *conf = (struct config_string *) gconf;


    do_serialize(destptr, maxbytes, "%s",
        *conf->variable ? *conf->variable : "");
   }
   break;

  case 131:
   {
    struct config_enum *conf = (struct config_enum *) gconf;

    do_serialize(destptr, maxbytes, "%s",
        config_enum_lookup_by_value(conf, *conf->variable));
   }
   break;
 }

 do_serialize(destptr, maxbytes, "%s",
     (gconf->sourcefile ? gconf->sourcefile : ""));

 if (gconf->sourcefile && gconf->sourcefile[0])
  do_serialize_binary(destptr, maxbytes, &gconf->sourceline,
       sizeof(gconf->sourceline));

 do_serialize_binary(destptr, maxbytes, &gconf->source,
      sizeof(gconf->source));
 do_serialize_binary(destptr, maxbytes, &gconf->scontext,
      sizeof(gconf->scontext));
}

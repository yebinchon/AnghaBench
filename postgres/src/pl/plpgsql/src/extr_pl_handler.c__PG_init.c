
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PLpgSQL_plugin ;


 int DefineCustomBoolVariable (char*,int ,int *,int *,int,int ,int ,int *,int *,int *) ;
 int DefineCustomEnumVariable (char*,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int DefineCustomStringVariable (char*,int ,int *,int *,char*,int ,int ,int ,int ,int *) ;
 int EmitWarningsOnPlaceholders (char*) ;
 int GUC_LIST_INPUT ;
 int PGC_SUSET ;
 int PGC_USERSET ;
 int PLPGSQL_RESOLVE_ERROR ;
 int RegisterSubXactCallback (int ,int *) ;
 int RegisterXactCallback (int ,int *) ;
 int TEXTDOMAIN ;
 scalar_t__ find_rendezvous_variable (char*) ;
 int gettext_noop (char*) ;
 int pg_bindtextdomain (int ) ;
 int plpgsql_HashTableInit () ;
 int plpgsql_check_asserts ;
 int plpgsql_extra_checks_check_hook ;
 int plpgsql_extra_errors_assign_hook ;
 int plpgsql_extra_errors_string ;
 int plpgsql_extra_warnings_assign_hook ;
 int plpgsql_extra_warnings_string ;
 int ** plpgsql_plugin_ptr ;
 int plpgsql_print_strict_params ;
 int plpgsql_subxact_cb ;
 int plpgsql_variable_conflict ;
 int plpgsql_xact_cb ;
 int variable_conflict_options ;

void
_PG_init(void)
{

 static bool inited = 0;

 if (inited)
  return;

 pg_bindtextdomain(TEXTDOMAIN);

 DefineCustomEnumVariable("plpgsql.variable_conflict",
        gettext_noop("Sets handling of conflicts between PL/pgSQL variable names and table column names."),
        ((void*)0),
        &plpgsql_variable_conflict,
        PLPGSQL_RESOLVE_ERROR,
        variable_conflict_options,
        PGC_SUSET, 0,
        ((void*)0), ((void*)0), ((void*)0));

 DefineCustomBoolVariable("plpgsql.print_strict_params",
        gettext_noop("Print information about parameters in the DETAIL part of the error messages generated on INTO ... STRICT failures."),
        ((void*)0),
        &plpgsql_print_strict_params,
        0,
        PGC_USERSET, 0,
        ((void*)0), ((void*)0), ((void*)0));

 DefineCustomBoolVariable("plpgsql.check_asserts",
        gettext_noop("Perform checks given in ASSERT statements."),
        ((void*)0),
        &plpgsql_check_asserts,
        1,
        PGC_USERSET, 0,
        ((void*)0), ((void*)0), ((void*)0));

 DefineCustomStringVariable("plpgsql.extra_warnings",
          gettext_noop("List of programming constructs that should produce a warning."),
          ((void*)0),
          &plpgsql_extra_warnings_string,
          "none",
          PGC_USERSET, GUC_LIST_INPUT,
          plpgsql_extra_checks_check_hook,
          plpgsql_extra_warnings_assign_hook,
          ((void*)0));

 DefineCustomStringVariable("plpgsql.extra_errors",
          gettext_noop("List of programming constructs that should produce an error."),
          ((void*)0),
          &plpgsql_extra_errors_string,
          "none",
          PGC_USERSET, GUC_LIST_INPUT,
          plpgsql_extra_checks_check_hook,
          plpgsql_extra_errors_assign_hook,
          ((void*)0));

 EmitWarningsOnPlaceholders("plpgsql");

 plpgsql_HashTableInit();
 RegisterXactCallback(plpgsql_xact_cb, ((void*)0));
 RegisterSubXactCallback(plpgsql_subxact_cb, ((void*)0));


 plpgsql_plugin_ptr = (PLpgSQL_plugin **) find_rendezvous_variable("PLpgSQL_plugin");

 inited = 1;
}

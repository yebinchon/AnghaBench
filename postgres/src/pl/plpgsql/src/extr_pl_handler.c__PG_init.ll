; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_handler.c__PG_init.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_handler.c__PG_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PG_init.inited = internal global i32 0, align 4
@TEXTDOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"plpgsql.variable_conflict\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"Sets handling of conflicts between PL/pgSQL variable names and table column names.\00", align 1
@plpgsql_variable_conflict = common dso_local global i32 0, align 4
@PLPGSQL_RESOLVE_ERROR = common dso_local global i32 0, align 4
@variable_conflict_options = common dso_local global i32 0, align 4
@PGC_SUSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"plpgsql.print_strict_params\00", align 1
@.str.3 = private unnamed_addr constant [115 x i8] c"Print information about parameters in the DETAIL part of the error messages generated on INTO ... STRICT failures.\00", align 1
@plpgsql_print_strict_params = common dso_local global i32 0, align 4
@PGC_USERSET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"plpgsql.check_asserts\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Perform checks given in ASSERT statements.\00", align 1
@plpgsql_check_asserts = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"plpgsql.extra_warnings\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"List of programming constructs that should produce a warning.\00", align 1
@plpgsql_extra_warnings_string = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@GUC_LIST_INPUT = common dso_local global i32 0, align 4
@plpgsql_extra_checks_check_hook = common dso_local global i32 0, align 4
@plpgsql_extra_warnings_assign_hook = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"plpgsql.extra_errors\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"List of programming constructs that should produce an error.\00", align 1
@plpgsql_extra_errors_string = common dso_local global i32 0, align 4
@plpgsql_extra_errors_assign_hook = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"plpgsql\00", align 1
@plpgsql_xact_cb = common dso_local global i32 0, align 4
@plpgsql_subxact_cb = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"PLpgSQL_plugin\00", align 1
@plpgsql_plugin_ptr = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_PG_init() #0 {
  %1 = load i32, i32* @_PG_init.inited, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %38

4:                                                ; preds = %0
  %5 = load i32, i32* @TEXTDOMAIN, align 4
  %6 = call i32 @pg_bindtextdomain(i32 %5)
  %7 = call i32 @gettext_noop(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* @PLPGSQL_RESOLVE_ERROR, align 4
  %9 = load i32, i32* @variable_conflict_options, align 4
  %10 = load i32, i32* @PGC_SUSET, align 4
  %11 = call i32 @DefineCustomEnumVariable(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %7, i32* null, i32* @plpgsql_variable_conflict, i32 %8, i32 %9, i32 %10, i32 0, i32* null, i32* null, i32* null)
  %12 = call i32 @gettext_noop(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.3, i64 0, i64 0))
  %13 = load i32, i32* @PGC_USERSET, align 4
  %14 = call i32 @DefineCustomBoolVariable(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %12, i32* null, i32* @plpgsql_print_strict_params, i32 0, i32 %13, i32 0, i32* null, i32* null, i32* null)
  %15 = call i32 @gettext_noop(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %16 = load i32, i32* @PGC_USERSET, align 4
  %17 = call i32 @DefineCustomBoolVariable(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %15, i32* null, i32* @plpgsql_check_asserts, i32 1, i32 %16, i32 0, i32* null, i32* null, i32* null)
  %18 = call i32 @gettext_noop(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0))
  %19 = load i32, i32* @PGC_USERSET, align 4
  %20 = load i32, i32* @GUC_LIST_INPUT, align 4
  %21 = load i32, i32* @plpgsql_extra_checks_check_hook, align 4
  %22 = load i32, i32* @plpgsql_extra_warnings_assign_hook, align 4
  %23 = call i32 @DefineCustomStringVariable(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %18, i32* null, i32* @plpgsql_extra_warnings_string, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %19, i32 %20, i32 %21, i32 %22, i32* null)
  %24 = call i32 @gettext_noop(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0))
  %25 = load i32, i32* @PGC_USERSET, align 4
  %26 = load i32, i32* @GUC_LIST_INPUT, align 4
  %27 = load i32, i32* @plpgsql_extra_checks_check_hook, align 4
  %28 = load i32, i32* @plpgsql_extra_errors_assign_hook, align 4
  %29 = call i32 @DefineCustomStringVariable(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %24, i32* null, i32* @plpgsql_extra_errors_string, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %25, i32 %26, i32 %27, i32 %28, i32* null)
  %30 = call i32 @EmitWarningsOnPlaceholders(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %31 = call i32 (...) @plpgsql_HashTableInit()
  %32 = load i32, i32* @plpgsql_xact_cb, align 4
  %33 = call i32 @RegisterXactCallback(i32 %32, i32* null)
  %34 = load i32, i32* @plpgsql_subxact_cb, align 4
  %35 = call i32 @RegisterSubXactCallback(i32 %34, i32* null)
  %36 = call i64 @find_rendezvous_variable(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %37 = inttoptr i64 %36 to i32**
  store i32** %37, i32*** @plpgsql_plugin_ptr, align 8
  store i32 1, i32* @_PG_init.inited, align 4
  br label %38

38:                                               ; preds = %4, %3
  ret void
}

declare dso_local i32 @pg_bindtextdomain(i32) #1

declare dso_local i32 @DefineCustomEnumVariable(i8*, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @gettext_noop(i8*) #1

declare dso_local i32 @DefineCustomBoolVariable(i8*, i32, i32*, i32*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @DefineCustomStringVariable(i8*, i32, i32*, i32*, i8*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @EmitWarningsOnPlaceholders(i8*) #1

declare dso_local i32 @plpgsql_HashTableInit(...) #1

declare dso_local i32 @RegisterXactCallback(i32, i32*) #1

declare dso_local i32 @RegisterSubXactCallback(i32, i32*) #1

declare dso_local i64 @find_rendezvous_variable(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

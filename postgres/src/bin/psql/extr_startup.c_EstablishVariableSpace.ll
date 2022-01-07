; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_startup.c_EstablishVariableSpace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_startup.c_EstablishVariableSpace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@pset = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [11 x i8] c"AUTOCOMMIT\00", align 1
@bool_substitute_hook = common dso_local global i32* null, align 8
@autocommit_hook = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"ON_ERROR_STOP\00", align 1
@on_error_stop_hook = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"QUIET\00", align 1
@quiet_hook = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"SINGLELINE\00", align 1
@singleline_hook = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"SINGLESTEP\00", align 1
@singlestep_hook = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"FETCH_COUNT\00", align 1
@fetch_count_substitute_hook = common dso_local global i32* null, align 8
@fetch_count_hook = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"HISTFILE\00", align 1
@histfile_hook = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"HISTSIZE\00", align 1
@histsize_substitute_hook = common dso_local global i32* null, align 8
@histsize_hook = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"IGNOREEOF\00", align 1
@ignoreeof_substitute_hook = common dso_local global i32* null, align 8
@ignoreeof_hook = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"ECHO\00", align 1
@echo_substitute_hook = common dso_local global i32* null, align 8
@echo_hook = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"ECHO_HIDDEN\00", align 1
@echo_hidden_hook = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"ON_ERROR_ROLLBACK\00", align 1
@on_error_rollback_hook = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [18 x i8] c"COMP_KEYWORD_CASE\00", align 1
@comp_keyword_case_substitute_hook = common dso_local global i32* null, align 8
@comp_keyword_case_hook = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"HISTCONTROL\00", align 1
@histcontrol_substitute_hook = common dso_local global i32* null, align 8
@histcontrol_hook = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"PROMPT1\00", align 1
@prompt1_hook = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"PROMPT2\00", align 1
@prompt2_hook = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"PROMPT3\00", align 1
@prompt3_hook = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [10 x i8] c"VERBOSITY\00", align 1
@verbosity_substitute_hook = common dso_local global i32* null, align 8
@verbosity_hook = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [13 x i8] c"SHOW_CONTEXT\00", align 1
@show_context_substitute_hook = common dso_local global i32* null, align 8
@show_context_hook = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [13 x i8] c"HIDE_TABLEAM\00", align 1
@hide_tableam_hook = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @EstablishVariableSpace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EstablishVariableSpace() #0 {
  %1 = call i32 (...) @CreateVariableSpace()
  store i32 %1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %3 = load i32*, i32** @bool_substitute_hook, align 8
  %4 = load i32, i32* @autocommit_hook, align 4
  %5 = call i32 @SetVariableHooks(i32 %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %3, i32 %4)
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %7 = load i32*, i32** @bool_substitute_hook, align 8
  %8 = load i32, i32* @on_error_stop_hook, align 4
  %9 = call i32 @SetVariableHooks(i32 %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %7, i32 %8)
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %11 = load i32*, i32** @bool_substitute_hook, align 8
  %12 = load i32, i32* @quiet_hook, align 4
  %13 = call i32 @SetVariableHooks(i32 %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %11, i32 %12)
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %15 = load i32*, i32** @bool_substitute_hook, align 8
  %16 = load i32, i32* @singleline_hook, align 4
  %17 = call i32 @SetVariableHooks(i32 %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %15, i32 %16)
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %19 = load i32*, i32** @bool_substitute_hook, align 8
  %20 = load i32, i32* @singlestep_hook, align 4
  %21 = call i32 @SetVariableHooks(i32 %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* %19, i32 %20)
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %23 = load i32*, i32** @fetch_count_substitute_hook, align 8
  %24 = load i32, i32* @fetch_count_hook, align 4
  %25 = call i32 @SetVariableHooks(i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* %23, i32 %24)
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %27 = load i32, i32* @histfile_hook, align 4
  %28 = call i32 @SetVariableHooks(i32 %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32* null, i32 %27)
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %30 = load i32*, i32** @histsize_substitute_hook, align 8
  %31 = load i32, i32* @histsize_hook, align 4
  %32 = call i32 @SetVariableHooks(i32 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32* %30, i32 %31)
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %34 = load i32*, i32** @ignoreeof_substitute_hook, align 8
  %35 = load i32, i32* @ignoreeof_hook, align 4
  %36 = call i32 @SetVariableHooks(i32 %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32* %34, i32 %35)
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %38 = load i32*, i32** @echo_substitute_hook, align 8
  %39 = load i32, i32* @echo_hook, align 4
  %40 = call i32 @SetVariableHooks(i32 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32* %38, i32 %39)
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %42 = load i32*, i32** @bool_substitute_hook, align 8
  %43 = load i32, i32* @echo_hidden_hook, align 4
  %44 = call i32 @SetVariableHooks(i32 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32* %42, i32 %43)
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %46 = load i32*, i32** @bool_substitute_hook, align 8
  %47 = load i32, i32* @on_error_rollback_hook, align 4
  %48 = call i32 @SetVariableHooks(i32 %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32* %46, i32 %47)
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %50 = load i32*, i32** @comp_keyword_case_substitute_hook, align 8
  %51 = load i32, i32* @comp_keyword_case_hook, align 4
  %52 = call i32 @SetVariableHooks(i32 %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32* %50, i32 %51)
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %54 = load i32*, i32** @histcontrol_substitute_hook, align 8
  %55 = load i32, i32* @histcontrol_hook, align 4
  %56 = call i32 @SetVariableHooks(i32 %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32* %54, i32 %55)
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %58 = load i32, i32* @prompt1_hook, align 4
  %59 = call i32 @SetVariableHooks(i32 %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32* null, i32 %58)
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %61 = load i32, i32* @prompt2_hook, align 4
  %62 = call i32 @SetVariableHooks(i32 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32* null, i32 %61)
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %64 = load i32, i32* @prompt3_hook, align 4
  %65 = call i32 @SetVariableHooks(i32 %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32* null, i32 %64)
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %67 = load i32*, i32** @verbosity_substitute_hook, align 8
  %68 = load i32, i32* @verbosity_hook, align 4
  %69 = call i32 @SetVariableHooks(i32 %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32* %67, i32 %68)
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %71 = load i32*, i32** @show_context_substitute_hook, align 8
  %72 = load i32, i32* @show_context_hook, align 4
  %73 = call i32 @SetVariableHooks(i32 %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32* %71, i32 %72)
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %75 = load i32*, i32** @bool_substitute_hook, align 8
  %76 = load i32, i32* @hide_tableam_hook, align 4
  %77 = call i32 @SetVariableHooks(i32 %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i32* %75, i32 %76)
  ret void
}

declare dso_local i32 @CreateVariableSpace(...) #1

declare dso_local i32 @SetVariableHooks(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-win-crash-handler.c_get_dbghelp_imports.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-win-crash-handler.c_get_dbghelp_imports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exception_handler_data = type { i32 }

@.str = private unnamed_addr constant [8 x i32] [i32 68, i32 98, i32 103, i32 72, i32 101, i32 108, i32 112, i32 0], align 4
@sym_initialize = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"SymInitialize\00", align 1
@sym_cleanup = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"SymCleanup\00", align 1
@sym_set_options = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"SymSetOptions\00", align 1
@sym_function_table_access64 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"SymFunctionTableAccess64\00", align 1
@sym_get_module_base64 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"SymGetModuleBase64\00", align 1
@sym_from_addr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"SymFromAddrW\00", align 1
@sym_get_module_info64 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"SymGetModuleInfo64\00", align 1
@sym_refresh_module_list = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"SymRefreshModuleList\00", align 1
@stack_walk64 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"StackWalk64\00", align 1
@enumerate_loaded_modules64 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"EnumerateLoadedModulesW64\00", align 1
@minidump_write_dump = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"MiniDumpWriteDump\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exception_handler_data*)* @get_dbghelp_imports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dbghelp_imports(%struct.exception_handler_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.exception_handler_data*, align 8
  store %struct.exception_handler_data* %0, %struct.exception_handler_data** %3, align 8
  %4 = call i32 @LoadLibraryW(i8* bitcast ([8 x i32]* @.str to i8*))
  %5 = load %struct.exception_handler_data*, %struct.exception_handler_data** %3, align 8
  %6 = getelementptr inbounds %struct.exception_handler_data, %struct.exception_handler_data* %5, i32 0, i32 0
  store i32 %4, i32* %6, align 4
  %7 = load %struct.exception_handler_data*, %struct.exception_handler_data** %3, align 8
  %8 = getelementptr inbounds %struct.exception_handler_data, %struct.exception_handler_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

12:                                               ; preds = %1
  %13 = load i32, i32* @sym_initialize, align 4
  %14 = call i32 @GET_DBGHELP_IMPORT(i32 %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @sym_cleanup, align 4
  %16 = call i32 @GET_DBGHELP_IMPORT(i32 %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %17 = load i32, i32* @sym_set_options, align 4
  %18 = call i32 @GET_DBGHELP_IMPORT(i32 %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %19 = load i32, i32* @sym_function_table_access64, align 4
  %20 = call i32 @GET_DBGHELP_IMPORT(i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %21 = load i32, i32* @sym_get_module_base64, align 4
  %22 = call i32 @GET_DBGHELP_IMPORT(i32 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %23 = load i32, i32* @sym_from_addr, align 4
  %24 = call i32 @GET_DBGHELP_IMPORT(i32 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %25 = load i32, i32* @sym_get_module_info64, align 4
  %26 = call i32 @GET_DBGHELP_IMPORT(i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %27 = load i32, i32* @sym_refresh_module_list, align 4
  %28 = call i32 @GET_DBGHELP_IMPORT(i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %29 = load i32, i32* @stack_walk64, align 4
  %30 = call i32 @GET_DBGHELP_IMPORT(i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %31 = load i32, i32* @enumerate_loaded_modules64, align 4
  %32 = call i32 @GET_DBGHELP_IMPORT(i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %33 = load i32, i32* @minidump_write_dump, align 4
  %34 = call i32 @GET_DBGHELP_IMPORT(i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %35

35:                                               ; preds = %12, %11
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @LoadLibraryW(i8*) #1

declare dso_local i32 @GET_DBGHELP_IMPORT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

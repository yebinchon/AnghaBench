; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_comp.c_plpgsql_compile_inline.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_comp.c_plpgsql_compile_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, %struct.TYPE_12__*, i32 }
%struct.TYPE_11__ = type { i32, i64, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"inline_code_block\00", align 1
@plpgsql_error_funcname = common dso_local global i8* null, align 8
@plpgsql_compile_error_callback = common dso_local global i32 0, align 4
@error_context_stack = common dso_local global %struct.TYPE_12__* null, align 8
@check_function_bodies = common dso_local global i32 0, align 4
@plpgsql_check_syntax = common dso_local global i32 0, align 4
@plpgsql_curr_compile = common dso_local global %struct.TYPE_11__* null, align 8
@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"PL/pgSQL inline code context\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@plpgsql_compile_tmp_cxt = common dso_local global i32* null, align 8
@PLPGSQL_NOT_TRIGGER = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@plpgsql_variable_conflict = common dso_local global i32 0, align 4
@plpgsql_print_strict_params = common dso_local global i32 0, align 4
@PLPGSQL_LABEL_BLOCK = common dso_local global i32 0, align 4
@plpgsql_DumpExecTree = common dso_local global i32 0, align 4
@VOIDOID = common dso_local global i64 0, align 8
@PROKIND_FUNCTION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"found\00", align 1
@BOOLOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"plpgsql parser returned %d\00", align 1
@plpgsql_parse_result = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @plpgsql_compile_inline(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @plpgsql_scanner_init(i8* %9)
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** @plpgsql_error_funcname, align 8
  %12 = load i32, i32* @plpgsql_compile_error_callback, align 4
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  store i32 %12, i32* %13, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  store i8* %14, i8** %15, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** @error_context_stack, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %17, align 8
  store %struct.TYPE_12__* %5, %struct.TYPE_12__** @error_context_stack, align 8
  %18 = load i32, i32* @check_function_bodies, align 4
  store i32 %18, i32* @plpgsql_check_syntax, align 4
  %19 = call i64 @palloc0(i32 120)
  %20 = inttoptr i64 %19 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %4, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** @plpgsql_curr_compile, align 8
  %22 = load i32, i32* @CurrentMemoryContext, align 4
  %23 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %24 = call i32* @AllocSetContextCreate(i32 %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32* @MemoryContextSwitchTo(i32* %25)
  store i32* %26, i32** @plpgsql_compile_tmp_cxt, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @pstrdup(i8* %27)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 20
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @PLPGSQL_NOT_TRIGGER, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 19
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @InvalidOid, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 18
  store i32 %34, i32* %36, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 17
  store i32* %37, i32** %39, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  store i32 -1, i32* %41, align 8
  %42 = load i32, i32* @plpgsql_variable_conflict, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 16
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @plpgsql_print_strict_params, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 15
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 14
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 13
  store i64 0, i64* %51, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 12
  store i64 0, i64* %53, align 8
  %54 = call i32 (...) @plpgsql_ns_init()
  %55 = load i8*, i8** %3, align 8
  %56 = load i32, i32* @PLPGSQL_LABEL_BLOCK, align 4
  %57 = call i32 @plpgsql_ns_push(i8* %55, i32 %56)
  store i32 0, i32* @plpgsql_DumpExecTree, align 4
  %58 = call i32 (...) @plpgsql_start_datums()
  %59 = load i64, i64* @VOIDOID, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  store i32 0, i32* %63, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 3
  store i32 0, i32* %65, align 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 4
  store i32 0, i32* %67, align 8
  %68 = load i32, i32* @PROKIND_FUNCTION, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 11
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 5
  store i32 1, i32* %72, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 6
  store i32 4, i32* %74, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 7
  store i32 0, i32* %76, align 4
  %77 = load i32, i32* @BOOLOID, align 4
  %78 = load i32, i32* @InvalidOid, align 4
  %79 = call i32 @plpgsql_build_datatype(i32 %77, i32 -1, i32 %78, i32* null)
  %80 = call %struct.TYPE_10__* @plpgsql_build_variable(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 %79, i32 1)
  store %struct.TYPE_10__* %80, %struct.TYPE_10__** %6, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 10
  store i32 %83, i32* %85, align 4
  %86 = call i32 (...) @plpgsql_yyparse()
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %1
  %90 = load i32, i32* @ERROR, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @elog(i32 %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %89, %1
  %94 = load i32, i32* @plpgsql_parse_result, align 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 9
  store i32 %94, i32* %96, align 8
  %97 = call i32 (...) @plpgsql_scanner_finish()
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @VOIDOID, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %93
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %105 = call i32 @add_dummy_return(%struct.TYPE_11__* %104)
  br label %106

106:                                              ; preds = %103, %93
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 8
  store i64 0, i64* %108, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %110 = call i32 @plpgsql_finish_datums(%struct.TYPE_11__* %109)
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  store %struct.TYPE_12__* %112, %struct.TYPE_12__** @error_context_stack, align 8
  store i8* null, i8** @plpgsql_error_funcname, align 8
  store i32 0, i32* @plpgsql_check_syntax, align 4
  %113 = load i32*, i32** @plpgsql_compile_tmp_cxt, align 8
  %114 = call i32* @MemoryContextSwitchTo(i32* %113)
  store i32* null, i32** @plpgsql_compile_tmp_cxt, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  ret %struct.TYPE_11__* %115
}

declare dso_local i32 @plpgsql_scanner_init(i8*) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32* @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32* @MemoryContextSwitchTo(i32*) #1

declare dso_local i32 @pstrdup(i8*) #1

declare dso_local i32 @plpgsql_ns_init(...) #1

declare dso_local i32 @plpgsql_ns_push(i8*, i32) #1

declare dso_local i32 @plpgsql_start_datums(...) #1

declare dso_local %struct.TYPE_10__* @plpgsql_build_variable(i8*, i32, i32, i32) #1

declare dso_local i32 @plpgsql_build_datatype(i32, i32, i32, i32*) #1

declare dso_local i32 @plpgsql_yyparse(...) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @plpgsql_scanner_finish(...) #1

declare dso_local i32 @add_dummy_return(%struct.TYPE_11__*) #1

declare dso_local i32 @plpgsql_finish_datums(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

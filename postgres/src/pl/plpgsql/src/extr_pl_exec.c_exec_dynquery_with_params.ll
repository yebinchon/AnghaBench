; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_dynquery_with_params.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_dynquery_with_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32*, i32*, i32*, i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_NULL_VALUE_NOT_ALLOWED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"query string argument of EXECUTE is null\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"could not open implicit cursor for query \22%s\22: %s\00", align 1
@SPI_result = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*, i32*, i32*, i8*, i32)* @exec_dynquery_with_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @exec_dynquery_with_params(%struct.TYPE_11__* %0, i32* %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = call i32 @get_stmt_mcontext(%struct.TYPE_11__* %19)
  store i32 %20, i32* %17, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @exec_eval_expr(%struct.TYPE_11__* %21, i32* %22, i32* %13, i32* %14, i32* %15)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %5
  %27 = load i32, i32* @ERROR, align 4
  %28 = load i32, i32* @ERRCODE_NULL_VALUE_NOT_ALLOWED, align 4
  %29 = call i32 @errcode(i32 %28)
  %30 = call i32 @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @ereport(i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %26, %5
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %14, align 4
  %36 = call i8* @convert_value_to_string(%struct.TYPE_11__* %33, i32 %34, i32 %35)
  store i8* %36, i8** %16, align 8
  %37 = load i32, i32* %17, align 4
  %38 = load i8*, i8** %16, align 8
  %39 = call i8* @MemoryContextStrdup(i32 %37, i8* %38)
  store i8* %39, i8** %16, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = call i32 @exec_eval_cleanup(%struct.TYPE_11__* %40)
  %42 = load i32*, i32** %8, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %67

44:                                               ; preds = %32
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call %struct.TYPE_10__* @exec_eval_using_params(%struct.TYPE_11__* %45, i32* %46)
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %18, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i8*, i8** %16, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32* @SPI_cursor_open_with_args(i8* %48, i8* %49, i32 %52, i32* %55, i32* %58, i32* %61, i32 %64, i32 %65)
  store i32* %66, i32** %11, align 8
  br label %75

67:                                               ; preds = %32
  %68 = load i8*, i8** %9, align 8
  %69 = load i8*, i8** %16, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32* @SPI_cursor_open_with_args(i8* %68, i8* %69, i32 0, i32* null, i32* null, i32* null, i32 %72, i32 %73)
  store i32* %74, i32** %11, align 8
  br label %75

75:                                               ; preds = %67, %44
  %76 = load i32*, i32** %11, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i32, i32* @ERROR, align 4
  %80 = load i8*, i8** %16, align 8
  %81 = load i32, i32* @SPI_result, align 4
  %82 = call i32 @SPI_result_code_string(i32 %81)
  %83 = call i32 @elog(i32 %79, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %80, i32 %82)
  br label %84

84:                                               ; preds = %78, %75
  %85 = load i32, i32* %17, align 4
  %86 = call i32 @MemoryContextReset(i32 %85)
  %87 = load i32*, i32** %11, align 8
  ret i32* %87
}

declare dso_local i32 @get_stmt_mcontext(%struct.TYPE_11__*) #1

declare dso_local i32 @exec_eval_expr(%struct.TYPE_11__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i8* @convert_value_to_string(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i8* @MemoryContextStrdup(i32, i8*) #1

declare dso_local i32 @exec_eval_cleanup(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_10__* @exec_eval_using_params(%struct.TYPE_11__*, i32*) #1

declare dso_local i32* @SPI_cursor_open_with_args(i8*, i8*, i32, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i8*, i32) #1

declare dso_local i32 @SPI_result_code_string(i32) #1

declare dso_local i32 @MemoryContextReset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

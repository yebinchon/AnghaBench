; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_run_select.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_run_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32*, i32 }
%struct.TYPE_10__ = type { i32, i32* }

@CURSOR_OPT_PARALLEL_OK = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"could not open implicit cursor for query \22%s\22: %s\00", align 1
@SPI_result = common dso_local global i32 0, align 4
@SPI_OK_CURSOR = common dso_local global i32 0, align 4
@SPI_OK_SELECT = common dso_local global i32 0, align 4
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"query \22%s\22 is not a SELECT\00", align 1
@SPI_tuptable = common dso_local global i32* null, align 8
@SPI_processed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i64, i32**)* @exec_run_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_run_select(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i64 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32** %3, i32*** %9, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %19 = load i32**, i32*** %9, align 8
  %20 = icmp eq i32** %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @CURSOR_OPT_PARALLEL_OK, align 4
  br label %24

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 0, %23 ]
  %26 = call i32 @exec_prepare_plan(%struct.TYPE_11__* %17, %struct.TYPE_10__* %18, i32 %25, i32 1)
  br label %27

27:                                               ; preds = %24, %4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %30 = call i32 @setup_param_list(%struct.TYPE_11__* %28, %struct.TYPE_10__* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32**, i32*** %9, align 8
  %32 = icmp ne i32** %31, null
  br i1 %32, label %33, label %58

33:                                               ; preds = %27
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32* @SPI_cursor_open_with_paramlist(i32* null, i32* %36, i32 %37, i32 %40)
  %42 = load i32**, i32*** %9, align 8
  store i32* %41, i32** %42, align 8
  %43 = load i32**, i32*** %9, align 8
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %33
  %47 = load i32, i32* @ERROR, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SPI_result, align 4
  %52 = call i32 @SPI_result_code_string(i32 %51)
  %53 = call i32 @elog(i32 %47, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %52)
  br label %54

54:                                               ; preds = %46, %33
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %56 = call i32 @exec_eval_cleanup(%struct.TYPE_11__* %55)
  %57 = load i32, i32* @SPI_OK_CURSOR, align 4
  store i32 %57, i32* %5, align 4
  br label %94

58:                                               ; preds = %27
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @SPI_execute_plan_with_paramlist(i32* %61, i32 %62, i32 %65, i64 %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @SPI_OK_SELECT, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %58
  %72 = load i32, i32* @ERROR, align 4
  %73 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %74 = call i32 @errcode(i32 %73)
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = call i32 @ereport(i32 %72, i32 %78)
  br label %80

80:                                               ; preds = %71, %58
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  %85 = zext i1 %84 to i32
  %86 = call i32 @Assert(i32 %85)
  %87 = load i32*, i32** @SPI_tuptable, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  store i32* %87, i32** %89, align 8
  %90 = load i32, i32* @SPI_processed, align 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %80, %54
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @exec_prepare_plan(%struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @setup_param_list(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i32* @SPI_cursor_open_with_paramlist(i32*, i32*, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32, i32) #1

declare dso_local i32 @SPI_result_code_string(i32) #1

declare dso_local i32 @exec_eval_cleanup(%struct.TYPE_11__*) #1

declare dso_local i32 @SPI_execute_plan_with_paramlist(i32*, i32, i32, i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

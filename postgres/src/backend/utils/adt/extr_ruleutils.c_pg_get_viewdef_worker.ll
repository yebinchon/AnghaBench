; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_pg_get_viewdef_worker.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_pg_get_viewdef_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i64, i8* }

@SPI_OK_CONNECT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"SPI_connect failed\00", align 1
@plan_getviewrule = common dso_local global i32* null, align 8
@OIDOID = common dso_local global i32 0, align 4
@NAMEOID = common dso_local global i32 0, align 4
@query_getviewrule = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"SPI_prepare failed for \22%s\22\00", align 1
@namein = common dso_local global i32 0, align 4
@ViewSelectRuleName = common dso_local global i32 0, align 4
@SPI_OK_SELECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"failed to get pg_rewrite tuple for view %u\00", align 1
@SPI_processed = common dso_local global i32 0, align 4
@SPI_tuptable = common dso_local global %struct.TYPE_6__* null, align 8
@SPI_OK_FINISH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"SPI_finish failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i32)* @pg_get_viewdef_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pg_get_viewdef_worker(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca [2 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__, align 8
  %14 = alloca [2 x i32], align 4
  %15 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = call i32 @initStringInfo(%struct.TYPE_5__* %13)
  %17 = call i64 (...) @SPI_connect()
  %18 = load i64, i64* @SPI_OK_CONNECT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @ERROR, align 4
  %22 = call i32 (i32, i8*, ...) @elog(i32 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %3
  %24 = load i32*, i32** @plan_getviewrule, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = load i32, i32* @OIDOID, align 4
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @NAMEOID, align 4
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @query_getviewrule, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %33 = call i32* @SPI_prepare(i32 %31, i32 2, i32* %32)
  store i32* %33, i32** %15, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = load i32, i32* @ERROR, align 4
  %38 = load i32, i32* @query_getviewrule, align 4
  %39 = call i32 (i32, i8*, ...) @elog(i32 %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %36, %26
  %41 = load i32*, i32** %15, align 8
  %42 = call i32 @SPI_keepplan(i32* %41)
  %43 = load i32*, i32** %15, align 8
  store i32* %43, i32** @plan_getviewrule, align 8
  br label %44

44:                                               ; preds = %40, %23
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @ObjectIdGetDatum(i32 %45)
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @namein, align 4
  %49 = load i32, i32* @ViewSelectRuleName, align 4
  %50 = call i32 @CStringGetDatum(i32 %49)
  %51 = call i32 @DirectFunctionCall1(i32 %48, i32 %50)
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  store i8 32, i8* %53, align 1
  %54 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 1
  store i8 32, i8* %54, align 1
  %55 = load i32*, i32** @plan_getviewrule, align 8
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %57 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %58 = call i32 @SPI_execute_plan(i32* %55, i32* %56, i8* %57, i32 1, i32 0)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @SPI_OK_SELECT, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %44
  %63 = load i32, i32* @ERROR, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 (i32, i8*, ...) @elog(i32 %63, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %62, %44
  %67 = load i32, i32* @SPI_processed, align 4
  %68 = icmp ne i32 %67, 1
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %84

70:                                               ; preds = %66
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SPI_tuptable, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %11, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SPI_tuptable, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @make_viewdef(%struct.TYPE_5__* %13, i32 %79, i32 %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %70, %69
  %85 = call i64 (...) @SPI_finish()
  %86 = load i64, i64* @SPI_OK_FINISH, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32, i32* @ERROR, align 4
  %90 = call i32 (i32, i8*, ...) @elog(i32 %89, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %84
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i8* null, i8** %4, align 8
  br label %99

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %4, align 8
  br label %99

99:                                               ; preds = %96, %95
  %100 = load i8*, i8** %4, align 8
  ret i8* %100
}

declare dso_local i32 @initStringInfo(%struct.TYPE_5__*) #1

declare dso_local i64 @SPI_connect(...) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32* @SPI_prepare(i32, i32, i32*) #1

declare dso_local i32 @SPI_keepplan(i32*) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @DirectFunctionCall1(i32, i32) #1

declare dso_local i32 @CStringGetDatum(i32) #1

declare dso_local i32 @SPI_execute_plan(i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @make_viewdef(%struct.TYPE_5__*, i32, i32, i32, i32) #1

declare dso_local i64 @SPI_finish(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

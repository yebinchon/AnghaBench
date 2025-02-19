; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_stmt_set.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_stmt_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@SPI_OK_UTILITY = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"SPI_execute_plan failed executing query \22%s\22: %s\00", align 1
@PLPGSQL_RC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_9__*)* @exec_stmt_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_stmt_set(%struct.TYPE_11__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %5, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = icmp eq %struct.TYPE_12__* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = call i32 @exec_prepare_plan(%struct.TYPE_11__* %15, %struct.TYPE_10__* %16, i32 0, i32 1)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  br label %22

22:                                               ; preds = %14, %2
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @SPI_execute_plan(%struct.TYPE_12__* %25, i32* null, i32* null, i32 %28, i32 0)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @SPI_OK_UTILITY, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %22
  %34 = load i32, i32* @ERROR, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @SPI_result_code_string(i32 %38)
  %40 = call i32 @elog(i32 %34, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %33, %22
  %42 = load i32, i32* @PLPGSQL_RC_OK, align 4
  ret i32 %42
}

declare dso_local i32 @exec_prepare_plan(%struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @SPI_execute_plan(%struct.TYPE_12__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32, i32) #1

declare dso_local i32 @SPI_result_code_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

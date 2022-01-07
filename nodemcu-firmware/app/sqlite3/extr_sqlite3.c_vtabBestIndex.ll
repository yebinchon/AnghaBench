; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_vtabBestIndex.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_vtabBestIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_21__*, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_22__*, %struct.TYPE_23__*)* }
%struct.TYPE_18__ = type { %struct.TYPE_22__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@i = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_23__*)* @vtabBestIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtabBestIndex(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1, %struct.TYPE_23__* %2) #0 {
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %6, align 8
  %9 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %13 = call %struct.TYPE_18__* @sqlite3GetVTable(i32 %11, %struct.TYPE_24__* %12)
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  store %struct.TYPE_22__* %15, %struct.TYPE_22__** %7, align 8
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %17 = call i32 @TRACE_IDX_INPUTS(%struct.TYPE_23__* %16)
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_22__*, %struct.TYPE_23__*)*, i32 (%struct.TYPE_22__*, %struct.TYPE_23__*)** %21, align 8
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %25 = call i32 %22(%struct.TYPE_22__* %23, %struct.TYPE_23__* %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %27 = call i32 @TRACE_IDX_OUTPUTS(%struct.TYPE_23__* %26)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @SQLITE_OK, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %58

31:                                               ; preds = %3
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @SQLITE_NOMEM, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @sqlite3OomFault(i32 %38)
  br label %57

40:                                               ; preds = %31
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @sqlite3ErrStr(i32 %47)
  %49 = call i32 @sqlite3ErrorMsg(%struct.TYPE_25__* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %48)
  br label %56

50:                                               ; preds = %40
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @sqlite3ErrorMsg(%struct.TYPE_25__* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %54)
  br label %56

56:                                               ; preds = %50, %45
  br label %57

57:                                               ; preds = %56, %35
  br label %58

58:                                               ; preds = %57, %3
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @sqlite3_free(i64 %61)
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  ret i32 %67
}

declare dso_local %struct.TYPE_18__* @sqlite3GetVTable(i32, %struct.TYPE_24__*) #1

declare dso_local i32 @TRACE_IDX_INPUTS(%struct.TYPE_23__*) #1

declare dso_local i32 @TRACE_IDX_OUTPUTS(%struct.TYPE_23__*) #1

declare dso_local i32 @sqlite3OomFault(i32) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_25__*, i8*, i64) #1

declare dso_local i64 @sqlite3ErrStr(i32) #1

declare dso_local i32 @sqlite3_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

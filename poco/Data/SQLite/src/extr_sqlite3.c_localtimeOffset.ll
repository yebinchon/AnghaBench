; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_localtimeOffset.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_localtimeOffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, double, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.tm = type { i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [23 x i8] c"local time unavailable\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32*)* @localtimeOffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @localtimeOffset(%struct.TYPE_5__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.tm, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = call i32 @memset(%struct.tm* %11, i32 0, i32 32)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = bitcast %struct.TYPE_5__* %8 to i8*
  %16 = bitcast %struct.TYPE_5__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 96, i1 false)
  %17 = call i32 @computeYMD_HMS(%struct.TYPE_5__* %8)
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, 1971
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sge i32 %23, 2038
  br i1 %24, label %25, label %32

25:                                               ; preds = %21, %3
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 2000, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  store i32 1, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 12
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 11
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  store double 0.000000e+00, double* %31, align 8
  br label %40

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  %34 = load double, double* %33, align 8
  %35 = fadd double %34, 5.000000e-01
  %36 = fptosi double %35 to i32
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = sitofp i32 %37 to double
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  store double %38, double* %39, align 8
  br label %40

40:                                               ; preds = %32, %25
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 13
  store i64 0, i64* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 10
  store i64 0, i64* %42, align 8
  %43 = call i32 @computeJD(%struct.TYPE_5__* %8)
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = sdiv i32 %45, 1000
  %47 = sub nsw i32 %46, 413362496
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %10, align 8
  %49 = call i64 @osLocaltime(i64* %10, %struct.tm* %11)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @sqlite3_result_error(i32* %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 -1)
  %54 = load i32, i32* @SQLITE_ERROR, align 4
  %55 = load i32*, i32** %7, align 8
  store i32 %54, i32* %55, align 4
  store i32 0, i32* %4, align 4
  br label %92

56:                                               ; preds = %40
  %57 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1900
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i32 %59, i32* %60, align 8
  %61 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  store i32 %66, i32* %67, align 8
  %68 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 12
  store i64 %69, i64* %70, align 8
  %71 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 11
  store i64 %72, i64* %73, align 8
  %74 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = sitofp i32 %75 to double
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  store double %76, double* %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 5
  store i32 1, i32* %78, align 4
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 6
  store i32 1, i32* %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 10
  store i64 0, i64* %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 9
  store i64 0, i64* %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 8
  store i64 0, i64* %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 7
  store i64 0, i64* %83, align 8
  %84 = call i32 @computeJD(%struct.TYPE_5__* %9)
  %85 = load i32, i32* @SQLITE_OK, align 4
  %86 = load i32*, i32** %7, align 8
  store i32 %85, i32* %86, align 4
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 %88, %90
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %56, %51
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @computeYMD_HMS(%struct.TYPE_5__*) #1

declare dso_local i32 @computeJD(%struct.TYPE_5__*) #1

declare dso_local i64 @osLocaltime(i64*, %struct.tm*) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

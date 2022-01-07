; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_monthcal.c_MONTHCAL_GetMonthRange.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_monthcal.c_MONTHCAL_GetMonthRange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"flag=%d, st=%p\0A\00", align 1
@min_allowed_date = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unknown flag value, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32, %struct.TYPE_15__*)* @MONTHCAL_GetMonthRange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MONTHCAL_GetMonthRange(%struct.TYPE_16__* %0, i32 %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %10 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %8, %struct.TYPE_15__* %9)
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %100 [
    i32 128, label %12
    i32 129, label %84
  ]

12:                                               ; preds = %3
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %14 = icmp ne %struct.TYPE_15__* %13, null
  br i1 %14, label %15, label %81

15:                                               ; preds = %12
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i64 0
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = bitcast %struct.TYPE_15__* %17 to i8*
  %24 = bitcast %struct.TYPE_15__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 12, i1 false)
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i64 1
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %31 = call i32 @MONTHCAL_GetCalCount(%struct.TYPE_16__* %30)
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = bitcast %struct.TYPE_15__* %26 to i8*
  %37 = bitcast %struct.TYPE_15__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 12, i1 false)
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @min_allowed_date, i32 0, i32 2), align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %15
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @min_allowed_date, i32 0, i32 1), align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @min_allowed_date, i32 0, i32 0), align 4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  br label %60

56:                                               ; preds = %44, %15
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %56, %51
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i64 0
  %63 = load i32, i32* @TRUE, align 4
  %64 = call i32 @MONTHCAL_CalculateDayOfWeek(%struct.TYPE_15__* %62, i32 %63)
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i64 1
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i64 1
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @MONTHCAL_MonthLength(i32 %68, i32 %72)
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i64 1
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i64 1
  %79 = load i32, i32* @TRUE, align 4
  %80 = call i32 @MONTHCAL_CalculateDayOfWeek(%struct.TYPE_15__* %78, i32 %79)
  br label %81

81:                                               ; preds = %60, %12
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %83 = call i32 @MONTHCAL_GetCalCount(%struct.TYPE_16__* %82)
  store i32 %83, i32* %7, align 4
  br label %103

84:                                               ; preds = %3
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %86 = icmp ne %struct.TYPE_15__* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i64 0
  %91 = call i32 @MONTHCAL_GetMinDate(%struct.TYPE_16__* %88, %struct.TYPE_15__* %90)
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i64 1
  %95 = call i32 @MONTHCAL_GetMaxDate(%struct.TYPE_16__* %92, %struct.TYPE_15__* %94)
  br label %96

96:                                               ; preds = %87, %84
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %98 = call i32 @MONTHCAL_GetCalCount(%struct.TYPE_16__* %97)
  %99 = add nsw i32 %98, 2
  store i32 %99, i32* %7, align 4
  br label %103

100:                                              ; preds = %3
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  store i32 0, i32* %7, align 4
  br label %103

103:                                              ; preds = %100, %96, %81
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local i32 @TRACE(i8*, i32, %struct.TYPE_15__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @MONTHCAL_GetCalCount(%struct.TYPE_16__*) #1

declare dso_local i32 @MONTHCAL_CalculateDayOfWeek(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @MONTHCAL_MonthLength(i32, i32) #1

declare dso_local i32 @MONTHCAL_GetMinDate(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @MONTHCAL_GetMaxDate(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @WARN(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

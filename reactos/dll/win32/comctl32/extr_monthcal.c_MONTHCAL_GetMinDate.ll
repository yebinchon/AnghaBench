; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_monthcal.c_MONTHCAL_GetMinDate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_monthcal.c_MONTHCAL_GetMinDate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*)* @MONTHCAL_GetMinDate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MONTHCAL_GetMinDate(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = bitcast %struct.TYPE_9__* %5 to i8*
  %13 = bitcast %struct.TYPE_9__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 12, i1 false)
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load i32, i32* @FALSE, align 4
  %16 = call i32 @MONTHCAL_CalculateDayOfWeek(%struct.TYPE_9__* %5, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = bitcast %struct.TYPE_9__* %17 to i8*
  %24 = bitcast %struct.TYPE_9__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 12, i1 false)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = call i32 @MONTHCAL_GetPrevMonth(%struct.TYPE_9__* %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @MONTHCAL_MonthLength(i32 %29, i32 %32)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %36, %37
  %39 = srem i32 %38, 7
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %33, %40
  %42 = add nsw i64 %41, 1
  %43 = trunc i64 %42 to i32
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @MONTHCAL_MonthLength(i32 %52, i32 %55)
  %57 = icmp sgt i64 %49, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %2
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 7
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %58, %2
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = load i32, i32* @TRUE, align 4
  %66 = call i32 @MONTHCAL_CalculateDayOfWeek(%struct.TYPE_9__* %64, i32 %65)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @MONTHCAL_CalculateDayOfWeek(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @MONTHCAL_GetPrevMonth(%struct.TYPE_9__*) #2

declare dso_local i64 @MONTHCAL_MonthLength(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

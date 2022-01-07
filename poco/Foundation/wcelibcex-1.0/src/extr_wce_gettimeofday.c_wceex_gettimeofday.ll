; ModuleID = '/home/carl/AnghaBench/poco/Foundation/wcelibcex-1.0/src/extr_wce_gettimeofday.c_wceex_gettimeofday.c'
source_filename = "/home/carl/AnghaBench/poco/Foundation/wcelibcex-1.0/src/extr_wce_gettimeofday.c_wceex_gettimeofday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@wceex_gettimeofday.tzflag = internal global i32 0, align 4
@EPOCHFILETIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wceex_gettimeofday(%struct.timeval* %0, %struct.timezone* %1) #0 {
  %3 = alloca %struct.timeval*, align 8
  %4 = alloca %struct.timezone*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__, align 4
  %7 = alloca %struct.TYPE_11__, align 4
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca i32, align 4
  store %struct.timeval* %0, %struct.timeval** %3, align 8
  store %struct.timezone* %1, %struct.timezone** %4, align 8
  %10 = load %struct.timeval*, %struct.timeval** %3, align 8
  %11 = icmp ne %struct.timeval* null, %10
  br i1 %11, label %12, label %40

12:                                               ; preds = %2
  %13 = call i32 @GetSystemTime(i32* %5)
  %14 = call i32 @SystemTimeToFileTime(i32* %5, %struct.TYPE_12__* %6)
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i64, i64* @EPOCHFILETIME, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = sub nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = sdiv i32 %28, 10
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = sdiv i32 %30, 1000000
  %32 = sext i32 %31 to i64
  %33 = load %struct.timeval*, %struct.timeval** %3, align 8
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* %9, align 4
  %36 = srem i32 %35, 1000000
  %37 = sext i32 %36 to i64
  %38 = load %struct.timeval*, %struct.timeval** %3, align 8
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %12, %2
  %41 = load %struct.timezone*, %struct.timezone** %4, align 8
  %42 = icmp ne %struct.timezone* null, %41
  br i1 %42, label %43, label %73

43:                                               ; preds = %40
  %44 = call i32 @GetTimeZoneInformation(%struct.TYPE_10__* %8)
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.timezone*, %struct.timezone** %4, align 8
  %48 = getelementptr inbounds %struct.timezone, %struct.timezone* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %55, 60
  %57 = load %struct.timezone*, %struct.timezone** %4, align 8
  %58 = getelementptr inbounds %struct.timezone, %struct.timezone* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %53, %43
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.timezone*, %struct.timezone** %4, align 8
  %68 = getelementptr inbounds %struct.timezone, %struct.timezone* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  br label %72

69:                                               ; preds = %61
  %70 = load %struct.timezone*, %struct.timezone** %4, align 8
  %71 = getelementptr inbounds %struct.timezone, %struct.timezone* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72, %40
  ret i32 0
}

declare dso_local i32 @GetSystemTime(i32*) #1

declare dso_local i32 @SystemTimeToFileTime(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @GetTimeZoneInformation(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

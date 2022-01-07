; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_fake.c_gettimeofday.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_fake.c_gettimeofday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@gettimeofday.tzflag = internal global i32 0, align 4
@EPOCHFILETIME = common dso_local global i64 0, align 8
@_timezone = common dso_local global i32 0, align 4
@_daylight = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gettimeofday(%struct.timeval* %0, %struct.timezone* %1) #0 {
  %3 = alloca %struct.timeval*, align 8
  %4 = alloca %struct.timezone*, align 8
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca %struct.TYPE_4__, align 4
  %7 = alloca i32, align 4
  store %struct.timeval* %0, %struct.timeval** %3, align 8
  store %struct.timezone* %1, %struct.timezone** %4, align 8
  %8 = load %struct.timeval*, %struct.timeval** %3, align 8
  %9 = icmp ne %struct.timeval* %8, null
  br i1 %9, label %10, label %37

10:                                               ; preds = %2
  %11 = call i32 @GetSystemTimeAsFileTime(%struct.TYPE_5__* %5)
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i64, i64* @EPOCHFILETIME, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = sub nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sdiv i32 %25, 10
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sdiv i32 %27, 1000000
  %29 = sext i32 %28 to i64
  %30 = load %struct.timeval*, %struct.timeval** %3, align 8
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = srem i32 %32, 1000000
  %34 = sext i32 %33 to i64
  %35 = load %struct.timeval*, %struct.timeval** %3, align 8
  %36 = getelementptr inbounds %struct.timeval, %struct.timeval* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %10, %2
  %38 = load %struct.timezone*, %struct.timezone** %4, align 8
  %39 = icmp ne %struct.timezone* %38, null
  br i1 %39, label %40, label %55

40:                                               ; preds = %37
  %41 = load i32, i32* @gettimeofday.tzflag, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = call i32 (...) @_tzset()
  %45 = load i32, i32* @gettimeofday.tzflag, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @gettimeofday.tzflag, align 4
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i32, i32* @_timezone, align 4
  %49 = sdiv i32 %48, 60
  %50 = load %struct.timezone*, %struct.timezone** %4, align 8
  %51 = getelementptr inbounds %struct.timezone, %struct.timezone* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @_daylight, align 4
  %53 = load %struct.timezone*, %struct.timezone** %4, align 8
  %54 = getelementptr inbounds %struct.timezone, %struct.timezone* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %47, %37
  ret i32 0
}

declare dso_local i32 @GetSystemTimeAsFileTime(%struct.TYPE_5__*) #1

declare dso_local i32 @_tzset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

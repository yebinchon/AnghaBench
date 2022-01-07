; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_find_prev_filter.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_find_prev_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_8__** }

@OBS_SOURCE_ASYNC = common dso_local global i32 0, align 4
@DARRAY_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, %struct.TYPE_8__*, i64)* @find_prev_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_prev_filter(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @OBS_SOURCE_ASYNC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = load i64, i64* %7, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i64, i64* @DARRAY_INVALID, align 8
  store i64 %22, i64* %4, align 8
  br label %50

23:                                               ; preds = %3
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = sub i64 %28, 1
  %30 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %27, i64 %29
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %10, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @OBS_SOURCE_ASYNC, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %23
  %42 = load i64, i64* %7, align 8
  %43 = sub i64 %42, 1
  store i64 %43, i64* %4, align 8
  br label %50

44:                                               ; preds = %23
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = sub i64 %47, 1
  %49 = call i64 @find_prev_filter(%struct.TYPE_8__* %45, %struct.TYPE_8__* %46, i64 %48)
  store i64 %49, i64* %4, align 8
  br label %50

50:                                               ; preds = %44, %41, %21
  %51 = load i64, i64* %4, align 8
  ret i64 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

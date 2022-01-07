; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_clean_cache.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_clean_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.async_frame* }
%struct.async_frame = type { i64, i32, i32 }

@MAX_UNUSED_FRAME_DURATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @clean_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clean_cache(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.async_frame*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %3, align 8
  br label %9

9:                                                ; preds = %48, %1
  %10 = load i64, i64* %3, align 8
  %11 = icmp ugt i64 %10, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %9
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load %struct.async_frame*, %struct.async_frame** %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = sub i64 %17, 1
  %19 = getelementptr inbounds %struct.async_frame, %struct.async_frame* %16, i64 %18
  store %struct.async_frame* %19, %struct.async_frame** %4, align 8
  %20 = load %struct.async_frame*, %struct.async_frame** %4, align 8
  %21 = getelementptr inbounds %struct.async_frame, %struct.async_frame* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %47, label %24

24:                                               ; preds = %12
  %25 = load %struct.async_frame*, %struct.async_frame** %4, align 8
  %26 = getelementptr inbounds %struct.async_frame, %struct.async_frame* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = load i64, i64* @MAX_UNUSED_FRAME_DURATION, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %24
  %32 = load %struct.async_frame*, %struct.async_frame** %4, align 8
  %33 = getelementptr inbounds %struct.async_frame, %struct.async_frame* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @obs_source_frame_destroy(i32 %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %3, align 8
  %39 = sub i64 %38, 1
  %40 = bitcast %struct.TYPE_5__* %37 to { i64, %struct.async_frame* }*
  %41 = getelementptr inbounds { i64, %struct.async_frame* }, { i64, %struct.async_frame* }* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds { i64, %struct.async_frame* }, { i64, %struct.async_frame* }* %40, i32 0, i32 1
  %44 = load %struct.async_frame*, %struct.async_frame** %43, align 8
  %45 = call i32 @da_erase(i64 %42, %struct.async_frame* %44, i64 %39)
  br label %46

46:                                               ; preds = %31, %24
  br label %47

47:                                               ; preds = %46, %12
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, -1
  store i64 %50, i64* %3, align 8
  br label %9

51:                                               ; preds = %9
  ret void
}

declare dso_local i32 @obs_source_frame_destroy(i32) #1

declare dso_local i32 @da_erase(i64, %struct.async_frame*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

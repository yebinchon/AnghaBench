; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_free_async_cache.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_free_async_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_source = type { i32*, i32*, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_source*)* @free_async_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_async_cache(%struct.obs_source* %0) #0 {
  %2 = alloca %struct.obs_source*, align 8
  %3 = alloca i64, align 8
  store %struct.obs_source* %0, %struct.obs_source** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %21, %1
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.obs_source*, %struct.obs_source** %2, align 8
  %7 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %5, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %4
  %12 = load %struct.obs_source*, %struct.obs_source** %2, align 8
  %13 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @obs_source_frame_decref(i32 %19)
  br label %21

21:                                               ; preds = %11
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %3, align 8
  br label %4

24:                                               ; preds = %4
  %25 = load %struct.obs_source*, %struct.obs_source** %2, align 8
  %26 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %25, i32 0, i32 3
  %27 = bitcast %struct.TYPE_4__* %26 to { i64, %struct.TYPE_3__* }*
  %28 = getelementptr inbounds { i64, %struct.TYPE_3__* }, { i64, %struct.TYPE_3__* }* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds { i64, %struct.TYPE_3__* }, { i64, %struct.TYPE_3__* }* %27, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = call i32 @da_resize(i64 %29, %struct.TYPE_3__* %31, i32 0)
  %33 = load %struct.obs_source*, %struct.obs_source** %2, align 8
  %34 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %33, i32 0, i32 2
  %35 = bitcast %struct.TYPE_4__* %34 to { i64, %struct.TYPE_3__* }*
  %36 = getelementptr inbounds { i64, %struct.TYPE_3__* }, { i64, %struct.TYPE_3__* }* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds { i64, %struct.TYPE_3__* }, { i64, %struct.TYPE_3__* }* %35, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = call i32 @da_resize(i64 %37, %struct.TYPE_3__* %39, i32 0)
  %41 = load %struct.obs_source*, %struct.obs_source** %2, align 8
  %42 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = load %struct.obs_source*, %struct.obs_source** %2, align 8
  %44 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  ret void
}

declare dso_local i32 @obs_source_frame_decref(i32) #1

declare dso_local i32 @da_resize(i64, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

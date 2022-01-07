; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_async_texture_changed.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_async_texture_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_source = type { i64, i64, i32, i32 }
%struct.obs_source_frame = type { i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obs_source*, %struct.obs_source_frame*)* @async_texture_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @async_texture_changed(%struct.obs_source* %0, %struct.obs_source_frame* %1) #0 {
  %3 = alloca %struct.obs_source*, align 8
  %4 = alloca %struct.obs_source_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.obs_source* %0, %struct.obs_source** %3, align 8
  store %struct.obs_source_frame* %1, %struct.obs_source_frame** %4, align 8
  %7 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %8 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %11 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @get_convert_type(i32 %9, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %15 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %18 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @get_convert_type(i32 %16, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %22 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %25 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %40, label %28

28:                                               ; preds = %2
  %29 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %30 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %33 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %37, %38
  br label %40

40:                                               ; preds = %36, %28, %2
  %41 = phi i1 [ true, %28 ], [ true, %2 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  ret i32 %42
}

declare dso_local i32 @get_convert_type(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

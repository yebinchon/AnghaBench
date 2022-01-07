; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_copy_frame_data_plane.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_copy_frame_data_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_source_frame = type { i64*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_source_frame*, %struct.obs_source_frame*, i64, i64)* @copy_frame_data_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_frame_data_plane(%struct.obs_source_frame* %0, %struct.obs_source_frame* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.obs_source_frame*, align 8
  %6 = alloca %struct.obs_source_frame*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.obs_source_frame* %0, %struct.obs_source_frame** %5, align 8
  store %struct.obs_source_frame* %1, %struct.obs_source_frame** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %11 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = load i64, i64* %7, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %17 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %15, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %4
  store i64 0, i64* %9, align 8
  br label %24

24:                                               ; preds = %34, %23
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %30 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @copy_frame_data_line(%struct.obs_source_frame* %29, %struct.obs_source_frame* %30, i64 %31, i64 %32)
  br label %34

34:                                               ; preds = %28
  %35 = load i64, i64* %9, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %9, align 8
  br label %24

37:                                               ; preds = %24
  br label %60

38:                                               ; preds = %4
  %39 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %40 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %46 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %52 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = mul i64 %56, %57
  %59 = call i32 @memcpy(i32 %44, i32 %50, i64 %58)
  br label %60

60:                                               ; preds = %38, %37
  ret void
}

declare dso_local i32 @copy_frame_data_line(%struct.obs_source_frame*, %struct.obs_source_frame*, i64, i64) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

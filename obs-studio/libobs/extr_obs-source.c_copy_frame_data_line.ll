; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_copy_frame_data_line.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_copy_frame_data_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_source_frame = type { i64*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_source_frame*, %struct.obs_source_frame*, i64, i64)* @copy_frame_data_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_frame_data_line(%struct.obs_source_frame* %0, %struct.obs_source_frame* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.obs_source_frame*, align 8
  %6 = alloca %struct.obs_source_frame*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.obs_source_frame* %0, %struct.obs_source_frame** %5, align 8
  store %struct.obs_source_frame* %1, %struct.obs_source_frame** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %14 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = mul i64 %12, %18
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %22 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = mul i64 %20, %26
  store i64 %27, i64* %10, align 8
  %28 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %29 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %35 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %33, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %4
  %42 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %43 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  br label %55

48:                                               ; preds = %4
  %49 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %50 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  br label %55

55:                                               ; preds = %48, %41
  %56 = phi i64 [ %47, %41 ], [ %54, %48 ]
  store i64 %56, i64* %11, align 8
  %57 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %58 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = add i64 %62, %63
  %65 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %66 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = add i64 %70, %71
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @memcpy(i64 %64, i64 %72, i64 %73)
  ret void
}

declare dso_local i32 @memcpy(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

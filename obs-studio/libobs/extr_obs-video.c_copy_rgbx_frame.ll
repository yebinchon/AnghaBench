; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-video.c_copy_rgbx_frame.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-video.c_copy_rgbx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_frame = type { i32*, i32** }
%struct.video_data = type { i32*, i32** }
%struct.video_output_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.video_frame*, %struct.video_data*, %struct.video_output_info*)* @copy_rgbx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_rgbx_frame(%struct.video_frame* %0, %struct.video_data* %1, %struct.video_output_info* %2) #0 {
  %4 = alloca %struct.video_frame*, align 8
  %5 = alloca %struct.video_data*, align 8
  %6 = alloca %struct.video_output_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.video_frame* %0, %struct.video_frame** %4, align 8
  store %struct.video_data* %1, %struct.video_data** %5, align 8
  store %struct.video_output_info* %2, %struct.video_output_info** %6, align 8
  %10 = load %struct.video_data*, %struct.video_data** %5, align 8
  %11 = getelementptr inbounds %struct.video_data, %struct.video_data* %10, i32 0, i32 1
  %12 = load i32**, i32*** %11, align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  %15 = load %struct.video_frame*, %struct.video_frame** %4, align 8
  %16 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %15, i32 0, i32 1
  %17 = load i32**, i32*** %16, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %8, align 8
  %20 = load %struct.video_data*, %struct.video_data** %5, align 8
  %21 = getelementptr inbounds %struct.video_data, %struct.video_data* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.video_frame*, %struct.video_frame** %4, align 8
  %26 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %24, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %3
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.video_data*, %struct.video_data** %5, align 8
  %35 = getelementptr inbounds %struct.video_data, %struct.video_data* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.video_output_info*, %struct.video_output_info** %6, align 8
  %40 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %38, %41
  %43 = call i32 @memcpy(i32* %32, i32* %33, i32 %42)
  br label %80

44:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %45

45:                                               ; preds = %76, %44
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.video_output_info*, %struct.video_output_info** %6, align 8
  %48 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp ult i64 %46, %50
  br i1 %51, label %52, label %79

52:                                               ; preds = %45
  %53 = load i32*, i32** %8, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load %struct.video_output_info*, %struct.video_output_info** %6, align 8
  %56 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %57, 4
  %59 = call i32 @memcpy(i32* %53, i32* %54, i32 %58)
  %60 = load %struct.video_data*, %struct.video_data** %5, align 8
  %61 = getelementptr inbounds %struct.video_data, %struct.video_data* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32* %67, i32** %7, align 8
  %68 = load %struct.video_frame*, %struct.video_frame** %4, align 8
  %69 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %8, align 8
  br label %76

76:                                               ; preds = %52
  %77 = load i64, i64* %9, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %9, align 8
  br label %45

79:                                               ; preds = %45
  br label %80

80:                                               ; preds = %79, %31
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

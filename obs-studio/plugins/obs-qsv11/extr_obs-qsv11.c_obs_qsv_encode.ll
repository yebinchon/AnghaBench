; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-qsv11/extr_obs-qsv11.c_obs_qsv_encode.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-qsv11/extr_obs-qsv11.c_obs_qsv_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encoder_frame = type { i32, i32*, i32** }
%struct.encoder_packet = type { i32 }
%struct.obs_qsv = type { i32, i32 }
%struct.video_output_info = type { i32 }

@g_QsvCs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"encode failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.encoder_frame*, %struct.encoder_packet*, i32*)* @obs_qsv_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @obs_qsv_encode(i8* %0, %struct.encoder_frame* %1, %struct.encoder_packet* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.encoder_frame*, align 8
  %8 = alloca %struct.encoder_packet*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.obs_qsv*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.video_output_info*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.encoder_frame* %1, %struct.encoder_frame** %7, align 8
  store %struct.encoder_packet* %2, %struct.encoder_packet** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.obs_qsv*
  store %struct.obs_qsv* %17, %struct.obs_qsv** %10, align 8
  %18 = load %struct.encoder_frame*, %struct.encoder_frame** %7, align 8
  %19 = icmp ne %struct.encoder_frame* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load %struct.encoder_packet*, %struct.encoder_packet** %8, align 8
  %22 = icmp ne %struct.encoder_packet* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32*, i32** %9, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %20, %4
  store i32 0, i32* %5, align 4
  br label %93

27:                                               ; preds = %23
  %28 = call i32 @EnterCriticalSection(i32* @g_QsvCs)
  %29 = load %struct.obs_qsv*, %struct.obs_qsv** %10, align 8
  %30 = getelementptr inbounds %struct.obs_qsv, %struct.obs_qsv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32* @obs_encoder_video(i32 %31)
  store i32* %32, i32** %11, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = call %struct.video_output_info* @video_output_get_info(i32* %33)
  store %struct.video_output_info* %34, %struct.video_output_info** %12, align 8
  store i32* null, i32** %13, align 8
  %35 = load %struct.encoder_frame*, %struct.encoder_frame** %7, align 8
  %36 = getelementptr inbounds %struct.encoder_frame, %struct.encoder_frame* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %37, 90000
  %39 = load %struct.video_output_info*, %struct.video_output_info** %12, align 8
  %40 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sdiv i32 %38, %41
  store i32 %42, i32* %15, align 4
  %43 = load %struct.encoder_frame*, %struct.encoder_frame** %7, align 8
  %44 = icmp ne %struct.encoder_frame* %43, null
  br i1 %44, label %45, label %71

45:                                               ; preds = %27
  %46 = load %struct.obs_qsv*, %struct.obs_qsv** %10, align 8
  %47 = getelementptr inbounds %struct.obs_qsv, %struct.obs_qsv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load %struct.encoder_frame*, %struct.encoder_frame** %7, align 8
  %51 = getelementptr inbounds %struct.encoder_frame, %struct.encoder_frame* %50, i32 0, i32 2
  %52 = load i32**, i32*** %51, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 0
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.encoder_frame*, %struct.encoder_frame** %7, align 8
  %56 = getelementptr inbounds %struct.encoder_frame, %struct.encoder_frame* %55, i32 0, i32 2
  %57 = load i32**, i32*** %56, align 8
  %58 = getelementptr inbounds i32*, i32** %57, i64 1
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.encoder_frame*, %struct.encoder_frame** %7, align 8
  %61 = getelementptr inbounds %struct.encoder_frame, %struct.encoder_frame* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.encoder_frame*, %struct.encoder_frame** %7, align 8
  %66 = getelementptr inbounds %struct.encoder_frame, %struct.encoder_frame* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @qsv_encoder_encode(i32 %48, i32 %49, i32* %54, i32* %59, i32 %64, i32 %69, i32** %13)
  store i32 %70, i32* %14, align 4
  br label %77

71:                                               ; preds = %27
  %72 = load %struct.obs_qsv*, %struct.obs_qsv** %10, align 8
  %73 = getelementptr inbounds %struct.obs_qsv, %struct.obs_qsv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @qsv_encoder_encode(i32 %74, i32 %75, i32* null, i32* null, i32 0, i32 0, i32** %13)
  store i32 %76, i32* %14, align 4
  br label %77

77:                                               ; preds = %71, %45
  %78 = load i32, i32* %14, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = call i32 @warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %82 = call i32 @LeaveCriticalSection(i32* @g_QsvCs)
  store i32 0, i32* %5, align 4
  br label %93

83:                                               ; preds = %77
  %84 = load %struct.obs_qsv*, %struct.obs_qsv** %10, align 8
  %85 = load %struct.encoder_packet*, %struct.encoder_packet** %8, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = load %struct.video_output_info*, %struct.video_output_info** %12, align 8
  %88 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = call i32 @parse_packet(%struct.obs_qsv* %84, %struct.encoder_packet* %85, i32* %86, i32 %89, i32* %90)
  %92 = call i32 @LeaveCriticalSection(i32* @g_QsvCs)
  store i32 1, i32* %5, align 4
  br label %93

93:                                               ; preds = %83, %80, %26
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32* @obs_encoder_video(i32) #1

declare dso_local %struct.video_output_info* @video_output_get_info(i32*) #1

declare dso_local i32 @qsv_encoder_encode(i32, i32, i32*, i32*, i32, i32, i32**) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @parse_packet(%struct.obs_qsv*, %struct.encoder_packet*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

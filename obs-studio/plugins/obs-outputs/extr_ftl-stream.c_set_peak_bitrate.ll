; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_ftl-stream.c_set_peak_bitrate.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_ftl-stream.c_set_peak_bitrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftl_stream = type { i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i64 }

@FTL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Speed test failed with: %s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"bitrate\00", align 1
@.str.2 = private unnamed_addr constant [110 x i8] c"Speed test completed: User desired bitrate %d, Peak kbps %d, initial rtt %d, final rtt %d, %3.2f lost packets\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ftl_stream*)* @set_peak_bitrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_peak_bitrate(%struct.ftl_stream* %0) #0 {
  %2 = alloca %struct.ftl_stream*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca i64, align 8
  %7 = alloca float, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.ftl_stream* %0, %struct.ftl_stream** %2, align 8
  store i32 15000, i32* %3, align 4
  store i32 1000, i32* %4, align 4
  %11 = load %struct.ftl_stream*, %struct.ftl_stream** %2, align 8
  %12 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %11, i32 0, i32 2
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @ftl_ingest_speed_test_ex(i32* %12, i32 %13, i32 %14, %struct.TYPE_4__* %5)
  store i64 %15, i64* %6, align 8
  store float 0.000000e+00, float* %7, align 4
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @FTL_SUCCESS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = sitofp i64 %21 to float
  %23 = fmul float %22, 1.000000e+02
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = sitofp i64 %25 to float
  %27 = fdiv float %23, %26
  store float %27, float* %7, align 4
  br label %32

28:                                               ; preds = %1
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @ftl_status_code_to_string(i64 %29)
  %31 = call i32 @warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %28, %19
  %33 = load %struct.ftl_stream*, %struct.ftl_stream** %2, align 8
  %34 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32* @obs_output_get_video_encoder(i32 %35)
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32* @obs_encoder_get_settings(i32* %37)
  store i32* %38, i32** %9, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i64 @obs_data_get_int(i32* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %10, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @obs_data_release(i32* %42)
  %44 = load i32, i32* %10, align 4
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load float, float* %7, align 4
  %52 = call i32 @info(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %46, i32 %48, i32 %50, float %51)
  %53 = load i32, i32* %10, align 4
  %54 = mul nsw i32 %53, 12
  %55 = sdiv i32 %54, 10
  %56 = load %struct.ftl_stream*, %struct.ftl_stream** %2, align 8
  %57 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  %59 = load %struct.ftl_stream*, %struct.ftl_stream** %2, align 8
  %60 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %59, i32 0, i32 0
  store i32 %55, i32* %60, align 4
  %61 = load %struct.ftl_stream*, %struct.ftl_stream** %2, align 8
  %62 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %61, i32 0, i32 2
  %63 = load %struct.ftl_stream*, %struct.ftl_stream** %2, align 8
  %64 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %63, i32 0, i32 1
  %65 = call i32 @ftl_ingest_update_params(i32* %62, %struct.TYPE_5__* %64)
  ret void
}

declare dso_local i64 @ftl_ingest_speed_test_ex(i32*, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @ftl_status_code_to_string(i64) #1

declare dso_local i32* @obs_output_get_video_encoder(i32) #1

declare dso_local i32* @obs_encoder_get_settings(i32*) #1

declare dso_local i64 @obs_data_get_int(i32*, i8*) #1

declare dso_local i32 @obs_data_release(i32*) #1

declare dso_local i32 @info(i8*, i32, i32, i32, i32, float) #1

declare dso_local i32 @ftl_ingest_update_params(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

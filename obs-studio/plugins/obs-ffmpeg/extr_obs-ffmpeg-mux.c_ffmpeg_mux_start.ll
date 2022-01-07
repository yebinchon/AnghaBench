; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_ffmpeg_mux_start.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_ffmpeg_mux_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_muxer = type { %struct.TYPE_2__, i32, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dstr = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"UnableToWritePath\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%1\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"HelperProcessFailed\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to create process pipe\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Writing file '%s'...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ffmpeg_mux_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffmpeg_mux_start(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ffmpeg_muxer*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dstr, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.ffmpeg_muxer*
  store %struct.ffmpeg_muxer* %10, %struct.ffmpeg_muxer** %4, align 8
  %11 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %12 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @obs_output_can_begin_data_capture(i32 %13, i32 0)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %88

17:                                               ; preds = %1
  %18 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %19 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @obs_output_initialize_encoders(i32 %20, i32 0)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %88

24:                                               ; preds = %17
  %25 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %26 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32* @obs_output_get_settings(i32 %27)
  store i32* %28, i32** %5, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i8* @obs_data_get_string(i32* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32* @os_fopen(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %49, label %35

35:                                               ; preds = %24
  %36 = call i8* @obs_module_text(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %37 = call i32 @dstr_init_copy(%struct.dstr* %8, i8* %36)
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @dstr_replace(%struct.dstr* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %38)
  %40 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %41 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.dstr, %struct.dstr* %8, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @obs_output_set_last_error(i32 %42, i8* %44)
  %46 = call i32 @dstr_free(%struct.dstr* %8)
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @obs_data_release(i32* %47)
  store i32 0, i32* %2, align 4
  br label %88

49:                                               ; preds = %24
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @fclose(i32* %50)
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @os_unlink(i8* %52)
  %54 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @start_pipe(%struct.ffmpeg_muxer* %54, i8* %55)
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @obs_data_release(i32* %57)
  %59 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %60 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %49
  %64 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %65 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @obs_module_text(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %68 = call i32 @obs_output_set_last_error(i32 %66, i8* %67)
  %69 = call i32 @warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %88

70:                                               ; preds = %49
  %71 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %72 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %71, i32 0, i32 4
  %73 = call i32 @os_atomic_set_bool(i32* %72, i32 1)
  %74 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %75 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %74, i32 0, i32 3
  %76 = call i32 @os_atomic_set_bool(i32* %75, i32 1)
  %77 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %78 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  %79 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %80 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @obs_output_begin_data_capture(i32 %81, i32 0)
  %83 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %84 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %86)
  store i32 1, i32* %2, align 4
  br label %88

88:                                               ; preds = %70, %63, %35, %23, %16
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @obs_output_can_begin_data_capture(i32, i32) #1

declare dso_local i32 @obs_output_initialize_encoders(i32, i32) #1

declare dso_local i32* @obs_output_get_settings(i32) #1

declare dso_local i8* @obs_data_get_string(i32*, i8*) #1

declare dso_local i32* @os_fopen(i8*, i8*) #1

declare dso_local i32 @dstr_init_copy(%struct.dstr*, i8*) #1

declare dso_local i8* @obs_module_text(i8*) #1

declare dso_local i32 @dstr_replace(%struct.dstr*, i8*, i8*) #1

declare dso_local i32 @obs_output_set_last_error(i32, i8*) #1

declare dso_local i32 @dstr_free(%struct.dstr*) #1

declare dso_local i32 @obs_data_release(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @os_unlink(i8*) #1

declare dso_local i32 @start_pipe(%struct.ffmpeg_muxer*, i8*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @os_atomic_set_bool(i32*, i32) #1

declare dso_local i32 @obs_output_begin_data_capture(i32, i32) #1

declare dso_local i32 @info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

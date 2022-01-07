; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_deactivate.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_muxer = type { i32, i32, %struct.TYPE_2__, i32, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Output of file '%s' stopped\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ffmpeg_muxer*, i32)* @deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deactivate(%struct.ffmpeg_muxer* %0, i32 %1) #0 {
  %3 = alloca %struct.ffmpeg_muxer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ffmpeg_muxer* %0, %struct.ffmpeg_muxer** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  %6 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %7 = call i64 @active(%struct.ffmpeg_muxer* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %11 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %10, i32 0, i32 5
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @os_process_pipe_destroy(i32* %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %15 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %14, i32 0, i32 5
  store i32* null, i32** %15, align 8
  %16 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %17 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %16, i32 0, i32 4
  %18 = call i32 @os_atomic_set_bool(i32* %17, i32 0)
  %19 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %20 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %19, i32 0, i32 3
  %21 = call i32 @os_atomic_set_bool(i32* %20, i32 0)
  %22 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %23 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %9, %2
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %32 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @obs_output_signal_stop(i32 %33, i32 %34)
  br label %46

36:                                               ; preds = %27
  %37 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %38 = call i64 @stopping(%struct.ffmpeg_muxer* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %42 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @obs_output_end_data_capture(i32 %43)
  br label %45

45:                                               ; preds = %40, %36
  br label %46

46:                                               ; preds = %45, %30
  %47 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %48 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %47, i32 0, i32 0
  %49 = call i32 @os_atomic_set_bool(i32* %48, i32 0)
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i64 @active(%struct.ffmpeg_muxer*) #1

declare dso_local i32 @os_process_pipe_destroy(i32*) #1

declare dso_local i32 @os_atomic_set_bool(i32*, i32) #1

declare dso_local i32 @info(i8*, i32) #1

declare dso_local i32 @obs_output_signal_stop(i32, i32) #1

declare dso_local i64 @stopping(%struct.ffmpeg_muxer*) #1

declare dso_local i32 @obs_output_end_data_capture(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

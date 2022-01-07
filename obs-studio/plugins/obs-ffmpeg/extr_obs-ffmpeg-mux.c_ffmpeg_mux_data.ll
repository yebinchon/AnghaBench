; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_ffmpeg_mux_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_ffmpeg_mux_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encoder_packet = type { i64 }
%struct.ffmpeg_muxer = type { i32, i64 }

@OBS_OUTPUT_ENCODE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.encoder_packet*)* @ffmpeg_mux_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffmpeg_mux_data(i8* %0, %struct.encoder_packet* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.encoder_packet*, align 8
  %5 = alloca %struct.ffmpeg_muxer*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.encoder_packet* %1, %struct.encoder_packet** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.ffmpeg_muxer*
  store %struct.ffmpeg_muxer* %7, %struct.ffmpeg_muxer** %5, align 8
  %8 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %5, align 8
  %9 = call i32 @active(%struct.ffmpeg_muxer* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %52

12:                                               ; preds = %2
  %13 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %14 = icmp ne %struct.encoder_packet* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %5, align 8
  %17 = load i32, i32* @OBS_OUTPUT_ENCODE_ERROR, align 4
  %18 = call i32 @deactivate(%struct.ffmpeg_muxer* %16, i32 %17)
  br label %52

19:                                               ; preds = %12
  %20 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %5, align 8
  %21 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %19
  %25 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %5, align 8
  %26 = call i32 @send_headers(%struct.ffmpeg_muxer* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %52

29:                                               ; preds = %24
  %30 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %5, align 8
  %31 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %32

32:                                               ; preds = %29, %19
  %33 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %5, align 8
  %34 = call i64 @stopping(%struct.ffmpeg_muxer* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %38 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %5, align 8
  %41 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %5, align 8
  %46 = call i32 @deactivate(%struct.ffmpeg_muxer* %45, i32 0)
  br label %52

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %32
  %49 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %5, align 8
  %50 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %51 = call i32 @write_packet(%struct.ffmpeg_muxer* %49, %struct.encoder_packet* %50)
  br label %52

52:                                               ; preds = %48, %44, %28, %15, %11
  ret void
}

declare dso_local i32 @active(%struct.ffmpeg_muxer*) #1

declare dso_local i32 @deactivate(%struct.ffmpeg_muxer*, i32) #1

declare dso_local i32 @send_headers(%struct.ffmpeg_muxer*) #1

declare dso_local i64 @stopping(%struct.ffmpeg_muxer*) #1

declare dso_local i32 @write_packet(%struct.ffmpeg_muxer*, %struct.encoder_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

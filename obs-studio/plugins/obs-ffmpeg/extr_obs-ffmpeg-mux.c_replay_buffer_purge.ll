; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_replay_buffer_purge.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_replay_buffer_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_muxer = type { i64, i32, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.encoder_packet = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffmpeg_muxer*, %struct.encoder_packet*)* @replay_buffer_purge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @replay_buffer_purge(%struct.ffmpeg_muxer* %0, %struct.encoder_packet* %1) #0 {
  %3 = alloca %struct.ffmpeg_muxer*, align 8
  %4 = alloca %struct.encoder_packet*, align 8
  store %struct.ffmpeg_muxer* %0, %struct.ffmpeg_muxer** %3, align 8
  store %struct.encoder_packet* %1, %struct.encoder_packet** %4, align 8
  %5 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %6 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %38

9:                                                ; preds = %2
  %10 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %11 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %17 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp sle i32 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %9
  br label %66

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %34, %21
  %23 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %24 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %27 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %31 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %36 = call i32 @purge(%struct.ffmpeg_muxer* %35)
  br label %22

37:                                               ; preds = %22
  br label %38

38:                                               ; preds = %37, %2
  %39 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %40 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %46 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp sle i32 %47, 2
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %38
  br label %66

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %63, %50
  %52 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %53 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %56 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %54, %57
  %59 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %60 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %58, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %51
  %64 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %65 = call i32 @purge(%struct.ffmpeg_muxer* %64)
  br label %51

66:                                               ; preds = %20, %49, %51
  ret void
}

declare dso_local i32 @purge(%struct.ffmpeg_muxer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

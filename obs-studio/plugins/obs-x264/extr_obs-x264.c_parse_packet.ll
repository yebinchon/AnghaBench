; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-x264/extr_obs-x264.c_parse_packet.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-x264/extr_obs-x264.c_parse_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_x264 = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.encoder_packet = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i32, i32 }

@OBS_ENCODER_VIDEO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_x264*, %struct.encoder_packet*, %struct.TYPE_8__*, i32, %struct.TYPE_7__*)* @parse_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_packet(%struct.obs_x264* %0, %struct.encoder_packet* %1, %struct.TYPE_8__* %2, i32 %3, %struct.TYPE_7__* %4) #0 {
  %6 = alloca %struct.obs_x264*, align 8
  %7 = alloca %struct.encoder_packet*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  store %struct.obs_x264* %0, %struct.obs_x264** %6, align 8
  store %struct.encoder_packet* %1, %struct.encoder_packet** %7, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %10, align 8
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  br label %78

16:                                               ; preds = %5
  %17 = load %struct.obs_x264*, %struct.obs_x264** %6, align 8
  %18 = getelementptr inbounds %struct.obs_x264, %struct.obs_x264* %17, i32 0, i32 0
  %19 = bitcast %struct.TYPE_9__* %18 to i64*
  %20 = load i64, i64* %19, align 4
  %21 = call i32 @da_resize(i64 %20, i32 0)
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %42, %16
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %22
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i64 %29
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %12, align 8
  %31 = load %struct.obs_x264*, %struct.obs_x264** %6, align 8
  %32 = getelementptr inbounds %struct.obs_x264, %struct.obs_x264* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = bitcast %struct.TYPE_9__* %32 to i64*
  %40 = load i64, i64* %39, align 4
  %41 = call i32 @da_push_back_array(i64 %40, i32 %35, i32 %38)
  br label %42

42:                                               ; preds = %26
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  br label %22

45:                                               ; preds = %22
  %46 = load %struct.obs_x264*, %struct.obs_x264** %6, align 8
  %47 = getelementptr inbounds %struct.obs_x264, %struct.obs_x264* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.encoder_packet*, %struct.encoder_packet** %7, align 8
  %51 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  %52 = load %struct.obs_x264*, %struct.obs_x264** %6, align 8
  %53 = getelementptr inbounds %struct.obs_x264, %struct.obs_x264* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.encoder_packet*, %struct.encoder_packet** %7, align 8
  %57 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @OBS_ENCODER_VIDEO, align 4
  %59 = load %struct.encoder_packet*, %struct.encoder_packet** %7, align 8
  %60 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.encoder_packet*, %struct.encoder_packet** %7, align 8
  %65 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.encoder_packet*, %struct.encoder_packet** %7, align 8
  %70 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = load %struct.encoder_packet*, %struct.encoder_packet** %7, align 8
  %77 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %45, %15
  ret void
}

declare dso_local i32 @da_resize(i64, i32) #1

declare dso_local i32 @da_push_back_array(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

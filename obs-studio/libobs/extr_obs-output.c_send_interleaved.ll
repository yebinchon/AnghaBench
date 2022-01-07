; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_send_interleaved.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_send_interleaved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_output = type { double, %struct.TYPE_7__, %struct.TYPE_6__, i32, %struct.TYPE_5__*, i32, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 (i32, %struct.encoder_packet*)* }
%struct.encoder_packet = type opaque
%struct.TYPE_5__ = type { double, i32* }
%struct.TYPE_8__ = type { %struct.encoder_packet.0* }
%struct.encoder_packet.0 = type { i64, double, double, i64 }

@OBS_ENCODER_VIDEO = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_output*)* @send_interleaved to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_interleaved(%struct.obs_output* %0) #0 {
  %2 = alloca %struct.obs_output*, align 8
  %3 = alloca %struct.encoder_packet.0, align 8
  store %struct.obs_output* %0, %struct.obs_output** %2, align 8
  %4 = load %struct.obs_output*, %struct.obs_output** %2, align 8
  %5 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %4, i32 0, i32 6
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load %struct.encoder_packet.0*, %struct.encoder_packet.0** %6, align 8
  %8 = getelementptr inbounds %struct.encoder_packet.0, %struct.encoder_packet.0* %7, i64 0
  %9 = bitcast %struct.encoder_packet.0* %3 to i8*
  %10 = bitcast %struct.encoder_packet.0* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 32, i1 false)
  %11 = load %struct.obs_output*, %struct.obs_output** %2, align 8
  %12 = call i32 @has_higher_opposing_ts(%struct.obs_output* %11, %struct.encoder_packet.0* %3)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %42

15:                                               ; preds = %1
  %16 = load %struct.obs_output*, %struct.obs_output** %2, align 8
  %17 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.encoder_packet.0*, %struct.encoder_packet.0** %18, align 8
  %20 = call i32 @da_erase(%struct.encoder_packet.0* %19, i32 0)
  %21 = getelementptr inbounds %struct.encoder_packet.0, %struct.encoder_packet.0* %3, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @OBS_ENCODER_VIDEO, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %15
  %26 = load %struct.obs_output*, %struct.obs_output** %2, align 8
  %27 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %25, %15
  %31 = load %struct.obs_output*, %struct.obs_output** %2, align 8
  %32 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32 (i32, %struct.encoder_packet*)*, i32 (i32, %struct.encoder_packet*)** %33, align 8
  %35 = load %struct.obs_output*, %struct.obs_output** %2, align 8
  %36 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = bitcast %struct.encoder_packet.0* %3 to %struct.encoder_packet*
  %40 = call i32 %34(i32 %38, %struct.encoder_packet* %39)
  %41 = call i32 @obs_encoder_packet_release(%struct.encoder_packet.0* %3)
  br label %42

42:                                               ; preds = %30, %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @has_higher_opposing_ts(%struct.obs_output*, %struct.encoder_packet.0*) #2

declare dso_local i32 @da_erase(%struct.encoder_packet.0*, i32) #2

declare dso_local i32 @obs_encoder_packet_release(%struct.encoder_packet.0*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

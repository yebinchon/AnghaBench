; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output-delay.c_push_packet.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output-delay.c_push_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_output = type { i32, i32 }
%struct.encoder_packet = type { i32 }
%struct.delay_data = type { i32, i32, i32, i32 }

@DELAY_MSG_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_output*, %struct.encoder_packet*, i32)* @push_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_packet(%struct.obs_output* %0, %struct.encoder_packet* %1, i32 %2) #0 {
  %4 = alloca %struct.obs_output*, align 8
  %5 = alloca %struct.encoder_packet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.delay_data, align 4
  store %struct.obs_output* %0, %struct.obs_output** %4, align 8
  store %struct.encoder_packet* %1, %struct.encoder_packet** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = bitcast %struct.delay_data* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 16, i1 false)
  %9 = load i32, i32* @DELAY_MSG_PACKET, align 4
  %10 = getelementptr inbounds %struct.delay_data, %struct.delay_data* %7, i32 0, i32 2
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = getelementptr inbounds %struct.delay_data, %struct.delay_data* %7, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.delay_data, %struct.delay_data* %7, i32 0, i32 0
  %14 = load %struct.encoder_packet*, %struct.encoder_packet** %5, align 8
  %15 = call i32 @obs_encoder_packet_create_instance(i32* %13, %struct.encoder_packet* %14)
  %16 = load %struct.obs_output*, %struct.obs_output** %4, align 8
  %17 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %16, i32 0, i32 0
  %18 = call i32 @pthread_mutex_lock(i32* %17)
  %19 = load %struct.obs_output*, %struct.obs_output** %4, align 8
  %20 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %19, i32 0, i32 1
  %21 = call i32 @circlebuf_push_back(i32* %20, %struct.delay_data* %7, i32 16)
  %22 = load %struct.obs_output*, %struct.obs_output** %4, align 8
  %23 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %22, i32 0, i32 0
  %24 = call i32 @pthread_mutex_unlock(i32* %23)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @obs_encoder_packet_create_instance(i32*, %struct.encoder_packet*) #2

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i32 @circlebuf_push_back(i32*, %struct.delay_data*, i32) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

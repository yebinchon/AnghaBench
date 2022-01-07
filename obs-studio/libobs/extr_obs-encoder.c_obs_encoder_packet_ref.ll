; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_obs_encoder_packet_ref.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_obs_encoder_packet_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encoder_packet = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_encoder_packet_ref(%struct.encoder_packet* %0, %struct.encoder_packet* %1) #0 {
  %3 = alloca %struct.encoder_packet*, align 8
  %4 = alloca %struct.encoder_packet*, align 8
  %5 = alloca i64*, align 8
  store %struct.encoder_packet* %0, %struct.encoder_packet** %3, align 8
  store %struct.encoder_packet* %1, %struct.encoder_packet** %4, align 8
  %6 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %7 = icmp ne %struct.encoder_packet* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %27

9:                                                ; preds = %2
  %10 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %11 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %16 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i64*
  %19 = getelementptr inbounds i64, i64* %18, i64 -1
  store i64* %19, i64** %5, align 8
  %20 = load i64*, i64** %5, align 8
  %21 = call i32 @os_atomic_inc_long(i64* %20)
  br label %22

22:                                               ; preds = %14, %9
  %23 = load %struct.encoder_packet*, %struct.encoder_packet** %3, align 8
  %24 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %25 = bitcast %struct.encoder_packet* %23 to i8*
  %26 = bitcast %struct.encoder_packet* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 8, i1 false)
  br label %27

27:                                               ; preds = %22, %8
  ret void
}

declare dso_local i32 @os_atomic_inc_long(i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

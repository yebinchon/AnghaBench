; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_insert_interleaved_packet.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_insert_interleaved_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_output = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.encoder_packet* }
%struct.encoder_packet = type { i64, i64 }

@OBS_ENCODER_VIDEO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_output*, %struct.encoder_packet*)* @insert_interleaved_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_interleaved_packet(%struct.obs_output* %0, %struct.encoder_packet* %1) #0 {
  %3 = alloca %struct.obs_output*, align 8
  %4 = alloca %struct.encoder_packet*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.encoder_packet*, align 8
  store %struct.obs_output* %0, %struct.obs_output** %3, align 8
  store %struct.encoder_packet* %1, %struct.encoder_packet** %4, align 8
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %46, %2
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %10 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %8, %12
  br i1 %13, label %14, label %49

14:                                               ; preds = %7
  %15 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %16 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.encoder_packet*, %struct.encoder_packet** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %18, i64 %19
  store %struct.encoder_packet* %20, %struct.encoder_packet** %6, align 8
  %21 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %22 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.encoder_packet*, %struct.encoder_packet** %6, align 8
  %25 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %14
  %29 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %30 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @OBS_ENCODER_VIDEO, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %49

35:                                               ; preds = %28, %14
  %36 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %37 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.encoder_packet*, %struct.encoder_packet** %6, align 8
  %40 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %49

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %5, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %5, align 8
  br label %7

49:                                               ; preds = %43, %34, %7
  %50 = load %struct.obs_output*, %struct.obs_output** %3, align 8
  %51 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %50, i32 0, i32 0
  %52 = load i64, i64* %5, align 8
  %53 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %54 = bitcast %struct.TYPE_2__* %51 to { i64, %struct.encoder_packet* }*
  %55 = getelementptr inbounds { i64, %struct.encoder_packet* }, { i64, %struct.encoder_packet* }* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds { i64, %struct.encoder_packet* }, { i64, %struct.encoder_packet* }* %54, i32 0, i32 1
  %58 = load %struct.encoder_packet*, %struct.encoder_packet** %57, align 8
  %59 = call i32 @da_insert(i64 %56, %struct.encoder_packet* %58, i64 %52, %struct.encoder_packet* %53)
  ret void
}

declare dso_local i32 @da_insert(i64, %struct.encoder_packet*, i64, %struct.encoder_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

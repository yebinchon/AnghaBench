; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_flv-mux.c_flv_packet_mux.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_flv-mux.c_flv_packet_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encoder_packet = type { i64 }
%struct.array_output_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32* }
%struct.serializer = type { i32 }

@OBS_ENCODER_VIDEO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flv_packet_mux(%struct.encoder_packet* %0, i32 %1, i32** %2, i64* %3, i32 %4) #0 {
  %6 = alloca %struct.encoder_packet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.array_output_data, align 8
  %12 = alloca %struct.serializer, align 4
  store %struct.encoder_packet* %0, %struct.encoder_packet** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = call i32 @array_output_serializer_init(%struct.serializer* %12, %struct.array_output_data* %11)
  %14 = load %struct.encoder_packet*, %struct.encoder_packet** %6, align 8
  %15 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @OBS_ENCODER_VIDEO, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %5
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.encoder_packet*, %struct.encoder_packet** %6, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @flv_video(%struct.serializer* %12, i32 %20, %struct.encoder_packet* %21, i32 %22)
  br label %29

24:                                               ; preds = %5
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.encoder_packet*, %struct.encoder_packet** %6, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @flv_audio(%struct.serializer* %12, i32 %25, %struct.encoder_packet* %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %19
  %30 = getelementptr inbounds %struct.array_output_data, %struct.array_output_data* %11, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32**, i32*** %8, align 8
  store i32* %32, i32** %33, align 8
  %34 = getelementptr inbounds %struct.array_output_data, %struct.array_output_data* %11, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** %9, align 8
  store i64 %36, i64* %37, align 8
  ret void
}

declare dso_local i32 @array_output_serializer_init(%struct.serializer*, %struct.array_output_data*) #1

declare dso_local i32 @flv_video(%struct.serializer*, i32, %struct.encoder_packet*, i32) #1

declare dso_local i32 @flv_audio(%struct.serializer*, i32, %struct.encoder_packet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

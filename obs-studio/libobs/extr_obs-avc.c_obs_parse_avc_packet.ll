; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-avc.c_obs_parse_avc_packet.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-avc.c_obs_parse_avc_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encoder_packet = type { i32, i32, i64, i64, i32 }
%struct.array_output_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.serializer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_parse_avc_packet(%struct.encoder_packet* %0, %struct.encoder_packet* %1) #0 {
  %3 = alloca %struct.encoder_packet*, align 8
  %4 = alloca %struct.encoder_packet*, align 8
  %5 = alloca %struct.array_output_data, align 8
  %6 = alloca %struct.serializer, align 4
  %7 = alloca i64, align 8
  store %struct.encoder_packet* %0, %struct.encoder_packet** %3, align 8
  store %struct.encoder_packet* %1, %struct.encoder_packet** %4, align 8
  store i64 1, i64* %7, align 8
  %8 = call i32 @array_output_serializer_init(%struct.serializer* %6, %struct.array_output_data* %5)
  %9 = load %struct.encoder_packet*, %struct.encoder_packet** %3, align 8
  %10 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %11 = bitcast %struct.encoder_packet* %9 to i8*
  %12 = bitcast %struct.encoder_packet* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false)
  %13 = call i32 @serialize(%struct.serializer* %6, i64* %7, i32 8)
  %14 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %15 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.encoder_packet*, %struct.encoder_packet** %4, align 8
  %18 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.encoder_packet*, %struct.encoder_packet** %3, align 8
  %21 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %20, i32 0, i32 4
  %22 = load %struct.encoder_packet*, %struct.encoder_packet** %3, align 8
  %23 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %22, i32 0, i32 0
  %24 = call i32 @serialize_avc_data(%struct.serializer* %6, i64 %16, i64 %19, i32* %21, i32* %23)
  %25 = getelementptr inbounds %struct.array_output_data, %struct.array_output_data* %5, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, 8
  %29 = load %struct.encoder_packet*, %struct.encoder_packet** %3, align 8
  %30 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %29, i32 0, i32 3
  store i64 %28, i64* %30, align 8
  %31 = getelementptr inbounds %struct.array_output_data, %struct.array_output_data* %5, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %33, 8
  %35 = load %struct.encoder_packet*, %struct.encoder_packet** %3, align 8
  %36 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  %37 = load %struct.encoder_packet*, %struct.encoder_packet** %3, align 8
  %38 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @get_drop_priority(i32 %39)
  %41 = load %struct.encoder_packet*, %struct.encoder_packet** %3, align 8
  %42 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  ret void
}

declare dso_local i32 @array_output_serializer_init(%struct.serializer*, %struct.array_output_data*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @serialize(%struct.serializer*, i64*, i32) #1

declare dso_local i32 @serialize_avc_data(%struct.serializer*, i64, i64, i32*, i32*) #1

declare dso_local i32 @get_drop_priority(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

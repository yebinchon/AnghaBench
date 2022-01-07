; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_flv-mux.c_flv_audio.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_flv-mux.c_flv_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serializer = type { i32 }
%struct.encoder_packet = type { i64, i32, i32 }

@RTMP_PACKET_TYPE_AUDIO = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@last_time = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serializer*, i32, %struct.encoder_packet*, i32)* @flv_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flv_audio(%struct.serializer* %0, i32 %1, %struct.encoder_packet* %2, i32 %3) #0 {
  %5 = alloca %struct.serializer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.encoder_packet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.serializer* %0, %struct.serializer** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.encoder_packet* %2, %struct.encoder_packet** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.encoder_packet*, %struct.encoder_packet** %7, align 8
  %11 = load %struct.encoder_packet*, %struct.encoder_packet** %7, align 8
  %12 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @get_ms_time(%struct.encoder_packet* %10, i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* %9, align 4
  %17 = load %struct.encoder_packet*, %struct.encoder_packet** %7, align 8
  %18 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load %struct.encoder_packet*, %struct.encoder_packet** %7, align 8
  %23 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %4
  br label %70

27:                                               ; preds = %21
  %28 = load %struct.serializer*, %struct.serializer** %5, align 8
  %29 = load i32, i32* @RTMP_PACKET_TYPE_AUDIO, align 4
  %30 = call i32 @s_w8(%struct.serializer* %28, i32 %29)
  %31 = load %struct.serializer*, %struct.serializer** %5, align 8
  %32 = load %struct.encoder_packet*, %struct.encoder_packet** %7, align 8
  %33 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = add nsw i32 %35, 2
  %37 = call i32 @s_wb24(%struct.serializer* %31, i32 %36)
  %38 = load %struct.serializer*, %struct.serializer** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @s_wb24(%struct.serializer* %38, i32 %39)
  %41 = load %struct.serializer*, %struct.serializer** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = ashr i32 %42, 24
  %44 = and i32 %43, 127
  %45 = call i32 @s_w8(%struct.serializer* %41, i32 %44)
  %46 = load %struct.serializer*, %struct.serializer** %5, align 8
  %47 = call i32 @s_wb24(%struct.serializer* %46, i32 0)
  %48 = load %struct.serializer*, %struct.serializer** %5, align 8
  %49 = call i32 @s_w8(%struct.serializer* %48, i32 175)
  %50 = load %struct.serializer*, %struct.serializer** %5, align 8
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 0, i32 1
  %55 = call i32 @s_w8(%struct.serializer* %50, i32 %54)
  %56 = load %struct.serializer*, %struct.serializer** %5, align 8
  %57 = load %struct.encoder_packet*, %struct.encoder_packet** %7, align 8
  %58 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.encoder_packet*, %struct.encoder_packet** %7, align 8
  %61 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @s_write(%struct.serializer* %56, i32 %59, i64 %62)
  %64 = load %struct.serializer*, %struct.serializer** %5, align 8
  %65 = load %struct.serializer*, %struct.serializer** %5, align 8
  %66 = call i64 @serializer_get_pos(%struct.serializer* %65)
  %67 = trunc i64 %66 to i32
  %68 = sub nsw i32 %67, 1
  %69 = call i32 @s_wb32(%struct.serializer* %64, i32 %68)
  br label %70

70:                                               ; preds = %27, %26
  ret void
}

declare dso_local i32 @get_ms_time(%struct.encoder_packet*, i32) #1

declare dso_local i32 @s_w8(%struct.serializer*, i32) #1

declare dso_local i32 @s_wb24(%struct.serializer*, i32) #1

declare dso_local i32 @s_write(%struct.serializer*, i32, i64) #1

declare dso_local i32 @s_wb32(%struct.serializer*, i32) #1

declare dso_local i64 @serializer_get_pos(%struct.serializer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_jim-nvenc.c_nv_bitstream_free.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_jim-nvenc.c_nv_bitstream_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32, %struct.TYPE_4__*)*, i32 (i32, i64)* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nvenc_data = type { i32 }
%struct.nv_bitstream = type { i32, i64 }

@nv = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@NV_ENC_EVENT_PARAMS_VER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvenc_data*, %struct.nv_bitstream*)* @nv_bitstream_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_bitstream_free(%struct.nvenc_data* %0, %struct.nv_bitstream* %1) #0 {
  %3 = alloca %struct.nvenc_data*, align 8
  %4 = alloca %struct.nv_bitstream*, align 8
  %5 = alloca %struct.TYPE_4__, align 4
  store %struct.nvenc_data* %0, %struct.nvenc_data** %3, align 8
  store %struct.nv_bitstream* %1, %struct.nv_bitstream** %4, align 8
  %6 = load %struct.nv_bitstream*, %struct.nv_bitstream** %4, align 8
  %7 = getelementptr inbounds %struct.nv_bitstream, %struct.nv_bitstream* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %2
  %11 = load i32 (i32, i64)*, i32 (i32, i64)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nv, i32 0, i32 1), align 8
  %12 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %13 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.nv_bitstream*, %struct.nv_bitstream** %4, align 8
  %16 = getelementptr inbounds %struct.nv_bitstream, %struct.nv_bitstream* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 %11(i32 %14, i64 %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %20 = load i32, i32* @NV_ENC_EVENT_PARAMS_VER, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.nv_bitstream*, %struct.nv_bitstream** %4, align 8
  %23 = getelementptr inbounds %struct.nv_bitstream, %struct.nv_bitstream* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i32 (i32, %struct.TYPE_4__*)*, i32 (i32, %struct.TYPE_4__*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nv, i32 0, i32 0), align 8
  %27 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %28 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 %26(i32 %29, %struct.TYPE_4__* %5)
  %31 = load %struct.nv_bitstream*, %struct.nv_bitstream** %4, align 8
  %32 = getelementptr inbounds %struct.nv_bitstream, %struct.nv_bitstream* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @CloseHandle(i32 %33)
  br label %35

35:                                               ; preds = %10, %2
  ret void
}

declare dso_local i32 @CloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

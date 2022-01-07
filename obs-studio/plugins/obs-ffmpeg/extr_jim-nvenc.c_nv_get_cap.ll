; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_jim-nvenc.c_nv_get_cap.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_jim-nvenc.c_nv_get_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32, i32, %struct.TYPE_4__*, i32*)* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nvenc_data = type { i32 }

@NV_ENC_CAPS_PARAM_VER = common dso_local global i32 0, align 4
@nv = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@NV_ENC_CODEC_H264_GUID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvenc_data*, i32)* @nv_get_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_get_cap(%struct.nvenc_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvenc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__, align 4
  %7 = alloca i32, align 4
  store %struct.nvenc_data* %0, %struct.nvenc_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.nvenc_data*, %struct.nvenc_data** %4, align 8
  %9 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %15 = load i32, i32* @NV_ENC_CAPS_PARAM_VER, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %5, align 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load i32 (i32, i32, %struct.TYPE_4__*, i32*)*, i32 (i32, i32, %struct.TYPE_4__*, i32*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nv, i32 0, i32 0), align 8
  %20 = load %struct.nvenc_data*, %struct.nvenc_data** %4, align 8
  %21 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @NV_ENC_CODEC_H264_GUID, align 4
  %24 = call i32 %19(i32 %22, i32 %23, %struct.TYPE_4__* %6, i32* %7)
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %13, %12
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_jim-nvenc.c_init_session.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_jim-nvenc.c_init_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.TYPE_4__*, i32*)* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.nvenc_data = type { i32, i32 }

@NV_ENC_OPEN_ENCODE_SESSION_EX_PARAMS_VER = common dso_local global i32 0, align 4
@NV_ENC_DEVICE_TYPE_DIRECTX = common dso_local global i32 0, align 4
@NVENCAPI_VERSION = common dso_local global i32 0, align 4
@nv = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvenc_data*)* @init_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_session(%struct.nvenc_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvenc_data*, align 8
  %4 = alloca %struct.TYPE_4__, align 4
  store %struct.nvenc_data* %0, %struct.nvenc_data** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* @NV_ENC_OPEN_ENCODE_SESSION_EX_PARAMS_VER, align 4
  store i32 %6, i32* %5, align 4
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  store i32 0, i32* %9, align 4
  %10 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %11 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @NV_ENC_DEVICE_TYPE_DIRECTX, align 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @NVENCAPI_VERSION, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nv, i32 0, i32 0), align 8
  %19 = load %struct.nvenc_data*, %struct.nvenc_data** %3, align 8
  %20 = getelementptr inbounds %struct.nvenc_data, %struct.nvenc_data* %19, i32 0, i32 0
  %21 = call i32 %18(%struct.TYPE_4__* %4, i32* %20)
  %22 = call i64 @NV_FAILED(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

25:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @NV_FAILED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

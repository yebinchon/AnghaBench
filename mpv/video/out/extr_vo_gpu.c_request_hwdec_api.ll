; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_gpu.c_request_hwdec_api.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_gpu.c_request_hwdec_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i32, %struct.gpu_priv* }
%struct.gpu_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @request_hwdec_api to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @request_hwdec_api(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.gpu_priv*, align 8
  store %struct.vo* %0, %struct.vo** %2, align 8
  %4 = load %struct.vo*, %struct.vo** %2, align 8
  %5 = getelementptr inbounds %struct.vo, %struct.vo* %4, i32 0, i32 1
  %6 = load %struct.gpu_priv*, %struct.gpu_priv** %5, align 8
  store %struct.gpu_priv* %6, %struct.gpu_priv** %3, align 8
  %7 = load %struct.gpu_priv*, %struct.gpu_priv** %3, align 8
  %8 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.vo*, %struct.vo** %2, align 8
  %11 = getelementptr inbounds %struct.vo, %struct.vo* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @gl_video_load_hwdecs_all(i32 %9, i32 %12)
  ret void
}

declare dso_local i32 @gl_video_load_hwdecs_all(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

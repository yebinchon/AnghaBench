; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_gpu.c_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_gpu.c_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i64, %struct.gpu_priv* }
%struct.gpu_priv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uninit(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.gpu_priv*, align 8
  store %struct.vo* %0, %struct.vo** %2, align 8
  %4 = load %struct.vo*, %struct.vo** %2, align 8
  %5 = getelementptr inbounds %struct.vo, %struct.vo* %4, i32 0, i32 1
  %6 = load %struct.gpu_priv*, %struct.gpu_priv** %5, align 8
  store %struct.gpu_priv* %6, %struct.gpu_priv** %3, align 8
  %7 = load %struct.gpu_priv*, %struct.gpu_priv** %3, align 8
  %8 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @gl_video_uninit(i32 %9)
  %11 = load %struct.vo*, %struct.vo** %2, align 8
  %12 = getelementptr inbounds %struct.vo, %struct.vo* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.vo*, %struct.vo** %2, align 8
  %17 = getelementptr inbounds %struct.vo, %struct.vo* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @hwdec_devices_set_loader(i64 %18, i32* null, i32* null)
  %20 = load %struct.vo*, %struct.vo** %2, align 8
  %21 = getelementptr inbounds %struct.vo, %struct.vo* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @hwdec_devices_destroy(i64 %22)
  br label %24

24:                                               ; preds = %15, %1
  %25 = load %struct.gpu_priv*, %struct.gpu_priv** %3, align 8
  %26 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %25, i32 0, i32 0
  %27 = call i32 @ra_ctx_destroy(i32* %26)
  ret void
}

declare dso_local i32 @gl_video_uninit(i32) #1

declare dso_local i32 @hwdec_devices_set_loader(i64, i32*, i32*) #1

declare dso_local i32 @hwdec_devices_destroy(i64) #1

declare dso_local i32 @ra_ctx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_gpu.c_wakeup.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_gpu.c_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.gpu_priv* }
%struct.gpu_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wakeup(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.gpu_priv*, align 8
  store %struct.vo* %0, %struct.vo** %2, align 8
  %4 = load %struct.vo*, %struct.vo** %2, align 8
  %5 = getelementptr inbounds %struct.vo, %struct.vo* %4, i32 0, i32 0
  %6 = load %struct.gpu_priv*, %struct.gpu_priv** %5, align 8
  store %struct.gpu_priv* %6, %struct.gpu_priv** %3, align 8
  %7 = load %struct.gpu_priv*, %struct.gpu_priv** %3, align 8
  %8 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %32

11:                                               ; preds = %1
  %12 = load %struct.gpu_priv*, %struct.gpu_priv** %3, align 8
  %13 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %17, align 8
  %19 = icmp ne i32 (%struct.TYPE_4__*)* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %11
  %21 = load %struct.gpu_priv*, %struct.gpu_priv** %3, align 8
  %22 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %26, align 8
  %28 = load %struct.gpu_priv*, %struct.gpu_priv** %3, align 8
  %29 = getelementptr inbounds %struct.gpu_priv, %struct.gpu_priv* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = call i32 %27(%struct.TYPE_4__* %30)
  br label %32

32:                                               ; preds = %20, %11, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_caca.c_reconfig.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_caca.c_reconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.priv* }
%struct.priv = type { i32, i32, i32 }
%struct.mp_image_params = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*, %struct.mp_image_params*)* @reconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reconfig(%struct.vo* %0, %struct.mp_image_params* %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.mp_image_params*, align 8
  %5 = alloca %struct.priv*, align 8
  store %struct.vo* %0, %struct.vo** %3, align 8
  store %struct.mp_image_params* %1, %struct.mp_image_params** %4, align 8
  %6 = load %struct.vo*, %struct.vo** %3, align 8
  %7 = getelementptr inbounds %struct.vo, %struct.vo* %6, i32 0, i32 0
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %5, align 8
  %9 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %10 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.priv*, %struct.priv** %5, align 8
  %13 = getelementptr inbounds %struct.priv, %struct.priv* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %15 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.priv*, %struct.priv** %5, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.mp_image_params*, %struct.mp_image_params** %4, align 8
  %20 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.priv*, %struct.priv** %5, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.vo*, %struct.vo** %3, align 8
  %25 = call i32 @resize(%struct.vo* %24)
  ret i32 %25
}

declare dso_local i32 @resize(%struct.vo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

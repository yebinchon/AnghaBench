; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_libmpv.c_get_image.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_libmpv.c_get_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { i32 }
%struct.vo = type { %struct.vo_priv* }
%struct.vo_priv = type { %struct.mpv_render_context* }
%struct.mpv_render_context = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mp_image* (%struct.vo*, i32, i32, i32, i32)* @get_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mp_image* @get_image(%struct.vo* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mp_image*, align 8
  %7 = alloca %struct.vo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.vo_priv*, align 8
  %13 = alloca %struct.mpv_render_context*, align 8
  store %struct.vo* %0, %struct.vo** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.vo*, %struct.vo** %7, align 8
  %15 = getelementptr inbounds %struct.vo, %struct.vo* %14, i32 0, i32 0
  %16 = load %struct.vo_priv*, %struct.vo_priv** %15, align 8
  store %struct.vo_priv* %16, %struct.vo_priv** %12, align 8
  %17 = load %struct.vo_priv*, %struct.vo_priv** %12, align 8
  %18 = getelementptr inbounds %struct.vo_priv, %struct.vo_priv* %17, i32 0, i32 0
  %19 = load %struct.mpv_render_context*, %struct.mpv_render_context** %18, align 8
  store %struct.mpv_render_context* %19, %struct.mpv_render_context** %13, align 8
  %20 = load %struct.mpv_render_context*, %struct.mpv_render_context** %13, align 8
  %21 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %5
  %25 = load %struct.mpv_render_context*, %struct.mpv_render_context** %13, align 8
  %26 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call %struct.mp_image* @dr_helper_get_image(i64 %27, i32 %28, i32 %29, i32 %30, i32 %31)
  store %struct.mp_image* %32, %struct.mp_image** %6, align 8
  br label %34

33:                                               ; preds = %5
  store %struct.mp_image* null, %struct.mp_image** %6, align 8
  br label %34

34:                                               ; preds = %33, %24
  %35 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  ret %struct.mp_image* %35
}

declare dso_local %struct.mp_image* @dr_helper_get_image(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_vdpau.c_get_window_screenshot.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_vdpau.c_get_window_screenshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { i64, i64 }
%struct.vo = type { i64, i64, %struct.vdpctx* }
%struct.vdpctx = type { i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mp_image* (%struct.vo*)* @get_window_screenshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mp_image* @get_window_screenshot(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.vdpctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mp_image*, align 8
  store %struct.vo* %0, %struct.vo** %2, align 8
  %7 = load %struct.vo*, %struct.vo** %2, align 8
  %8 = getelementptr inbounds %struct.vo, %struct.vo* %7, i32 0, i32 2
  %9 = load %struct.vdpctx*, %struct.vdpctx** %8, align 8
  store %struct.vdpctx* %9, %struct.vdpctx** %3, align 8
  %10 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %11 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %14 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @WRAP_ADD(i32 %12, i32 -1, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %18 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load %struct.vo*, %struct.vo** %2, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call %struct.mp_image* @read_output_surface(%struct.vo* %24, i32 %25)
  store %struct.mp_image* %26, %struct.mp_image** %6, align 8
  %27 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %28 = icmp ne %struct.mp_image* %27, null
  br i1 %28, label %29, label %54

29:                                               ; preds = %1
  %30 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %31 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.vo*, %struct.vo** %2, align 8
  %34 = getelementptr inbounds %struct.vo, %struct.vo* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %32, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %29
  %38 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %39 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.vo*, %struct.vo** %2, align 8
  %42 = getelementptr inbounds %struct.vo, %struct.vo* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp sge i64 %40, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %37
  %46 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %47 = load %struct.vo*, %struct.vo** %2, align 8
  %48 = getelementptr inbounds %struct.vo, %struct.vo* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.vo*, %struct.vo** %2, align 8
  %51 = getelementptr inbounds %struct.vo, %struct.vo* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @mp_image_set_size(%struct.mp_image* %46, i64 %49, i64 %52)
  br label %54

54:                                               ; preds = %45, %37, %29, %1
  %55 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  ret %struct.mp_image* %55
}

declare dso_local i32 @WRAP_ADD(i32, i32, i32) #1

declare dso_local %struct.mp_image* @read_output_surface(%struct.vo*, i32) #1

declare dso_local i32 @mp_image_set_size(%struct.mp_image*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

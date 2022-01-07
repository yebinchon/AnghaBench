; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_vdpau.c_prev_vsync.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_vdpau.c_prev_vsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdpctx = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vdpctx*, i64)* @prev_vsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @prev_vsync(%struct.vdpctx* %0, i64 %1) #0 {
  %3 = alloca %struct.vdpctx*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.vdpctx* %0, %struct.vdpctx** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %9 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %7, %10
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %14 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = srem i64 %12, %15
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %21 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = add nsw i64 %23, %22
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %19, %2
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* %6, align 8
  %28 = sub nsw i64 %26, %27
  ret i64 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

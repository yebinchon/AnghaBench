; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_selectinput_witherr.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_vo_x11_selectinput_witherr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }

@NoEventMask = common dso_local global i64 0, align 8
@ButtonPressMask = common dso_local global i64 0, align 8
@ButtonReleaseMask = common dso_local global i64 0, align 8
@PointerMotionMask = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [72 x i8] c"X11 error: error during XSelectInput call, trying without mouse events\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, i32*, i32, i64)* @vo_x11_selectinput_witherr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vo_x11_selectinput_witherr(%struct.vo* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.vo*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca i64, align 8
  store %struct.vo* %0, %struct.vo** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i64, i64* @NoEventMask, align 8
  %14 = call i32 @XSelectInput(i32* %11, i32 %12, i64 %13)
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @XSelectInput(i32* %15, i32 %16, i64 %17)
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @XGetWindowAttributes(i32* %19, i32 %20, %struct.TYPE_3__* %9)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %4
  %24 = load i64, i64* @ButtonPressMask, align 8
  %25 = load i64, i64* @ButtonReleaseMask, align 8
  %26 = or i64 %24, %25
  %27 = load i64, i64* @PointerMotionMask, align 8
  %28 = or i64 %26, %27
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %10, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = and i64 %35, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %10, align 8
  %43 = and i64 %41, %42
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %10, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %39
  %49 = load %struct.vo*, %struct.vo** %5, align 8
  %50 = getelementptr inbounds %struct.vo, %struct.vo* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @MP_ERR(i32 %51, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %10, align 8
  %57 = xor i64 %56, -1
  %58 = and i64 %55, %57
  %59 = call i32 @XSelectInput(i32* %53, i32 %54, i64 %58)
  br label %60

60:                                               ; preds = %48, %39, %33, %23
  br label %61

61:                                               ; preds = %60, %4
  ret void
}

declare dso_local i32 @XSelectInput(i32*, i32, i64) #1

declare dso_local i64 @XGetWindowAttributes(i32*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @MP_ERR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

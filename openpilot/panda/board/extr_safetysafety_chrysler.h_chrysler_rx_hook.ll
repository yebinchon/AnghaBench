; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_chrysler.h_chrysler_rx_hook.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_chrysler.h_chrysler_rx_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@chrysler_torque_meas = common dso_local global i32 0, align 4
@chrysler_cruise_engaged_last = common dso_local global i32 0, align 4
@controls_allowed = common dso_local global i32 0, align 4
@chrysler_camera_detected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @chrysler_rx_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chrysler_rx_hook(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @GET_BUS(i32* %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @GET_ADDR(i32* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 544
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @GET_BYTE(i32* %14, i32 4)
  %16 = and i32 %15, 7
  %17 = shl i32 %16, 8
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @GET_BYTE(i32* %18, i32 5)
  %20 = add i32 %17, %19
  %21 = sub i32 %20, 1024
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @update_sample(i32* @chrysler_torque_meas, i32 %22)
  br label %24

24:                                               ; preds = %13, %1
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 500
  br i1 %26, label %27, label %46

27:                                               ; preds = %24
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @GET_BYTE(i32* %28, i32 2)
  %30 = and i32 %29, 56
  %31 = ashr i32 %30, 3
  %32 = icmp eq i32 %31, 7
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load i32, i32* @chrysler_cruise_engaged_last, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  store i32 1, i32* @controls_allowed, align 4
  br label %40

40:                                               ; preds = %39, %36, %27
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  store i32 0, i32* @controls_allowed, align 4
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* @chrysler_cruise_engaged_last, align 4
  br label %46

46:                                               ; preds = %44, %24
  %47 = load i32, i32* %3, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %50, 658
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 1, i32* @chrysler_camera_detected, align 4
  store i32 0, i32* @controls_allowed, align 4
  br label %53

53:                                               ; preds = %52, %49, %46
  ret void
}

declare dso_local i32 @GET_BUS(i32*) #1

declare dso_local i32 @GET_ADDR(i32*) #1

declare dso_local i32 @GET_BYTE(i32*, i32) #1

declare dso_local i32 @update_sample(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_hyundai.h_hyundai_rx_hook.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_hyundai.h_hyundai_rx_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hyundai_torque_driver = common dso_local global i32 0, align 4
@hyundai_camera_detected = common dso_local global i32 0, align 4
@controls_allowed = common dso_local global i32 0, align 4
@hyundai_camera_bus = common dso_local global i32 0, align 4
@hyundai_cruise_engaged_last = common dso_local global i32 0, align 4
@hyundai_giraffe_switch_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @hyundai_rx_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hyundai_rx_hook(i32* %0) #0 {
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
  %12 = icmp eq i32 %11, 897
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @GET_BYTES_04(i32* %14)
  %16 = ashr i32 %15, 11
  %17 = and i32 %16, 4095
  %18 = sub nsw i32 %17, 2048
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @update_sample(i32* @hyundai_torque_driver, i32 %19)
  br label %21

21:                                               ; preds = %13, %1
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 832
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 1, i32* @hyundai_camera_detected, align 4
  store i32 0, i32* @controls_allowed, align 4
  br label %28

28:                                               ; preds = %27, %24, %21
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 832
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  store i32 %32, i32* @hyundai_camera_bus, align 4
  br label %33

33:                                               ; preds = %31, %28
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 1057
  br i1 %35, label %36, label %53

36:                                               ; preds = %33
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @GET_BYTES_04(i32* %37)
  %39 = ashr i32 %38, 13
  %40 = and i32 %39, 3
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @hyundai_cruise_engaged_last, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i32 1, i32* @controls_allowed, align 4
  br label %47

47:                                               ; preds = %46, %43, %36
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  store i32 0, i32* @controls_allowed, align 4
  br label %51

51:                                               ; preds = %50, %47
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* @hyundai_cruise_engaged_last, align 4
  br label %53

53:                                               ; preds = %51, %33
  %54 = load i32, i32* %4, align 4
  %55 = icmp eq i32 %54, 832
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @hyundai_camera_bus, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* @hyundai_camera_bus, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 1, i32* @hyundai_giraffe_switch_2, align 4
  br label %64

64:                                               ; preds = %63, %60, %56, %53
  ret void
}

declare dso_local i32 @GET_BUS(i32*) #1

declare dso_local i32 @GET_ADDR(i32*) #1

declare dso_local i32 @GET_BYTES_04(i32*) #1

declare dso_local i32 @update_sample(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_mazda.h_mazda_rx_hook.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_mazda.h_mazda_rx_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAZDA_STEER_TORQUE = common dso_local global i32 0, align 4
@MAZDA_MAIN = common dso_local global i32 0, align 4
@mazda_torque_driver = common dso_local global i32 0, align 4
@MAZDA_CRZ_CTRL = common dso_local global i32 0, align 4
@mazda_cruise_engaged_last = common dso_local global i32 0, align 4
@controls_allowed = common dso_local global i32 0, align 4
@MAZDA_CAM = common dso_local global i32 0, align 4
@MAZDA_LKAS = common dso_local global i32 0, align 4
@mazda_forward_cam = common dso_local global i32 0, align 4
@MAZDA_WHEEL_SPEED = common dso_local global i32 0, align 4
@mazda_giraffe_switch_2_on = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mazda_rx_hook(i32* %0) #0 {
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
  %12 = load i32, i32* @MAZDA_STEER_TORQUE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @MAZDA_MAIN, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @GET_BYTE(i32* %19, i32 0)
  %21 = sub nsw i32 %20, 127
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @update_sample(i32* @mazda_torque_driver, i32 %22)
  br label %24

24:                                               ; preds = %18, %14, %1
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @MAZDA_CRZ_CTRL, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @MAZDA_MAIN, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @GET_BYTE(i32* %33, i32 0)
  %35 = and i32 %34, 8
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i32, i32* @mazda_cruise_engaged_last, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i32 1, i32* @controls_allowed, align 4
  br label %42

42:                                               ; preds = %41, %38
  br label %44

43:                                               ; preds = %32
  store i32 0, i32* @controls_allowed, align 4
  br label %44

44:                                               ; preds = %43, %42
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* @mazda_cruise_engaged_last, align 4
  br label %46

46:                                               ; preds = %44, %28, %24
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @MAZDA_CAM, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @MAZDA_LKAS, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 1, i32* @mazda_forward_cam, align 4
  br label %55

55:                                               ; preds = %54, %50
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @MAZDA_WHEEL_SPEED, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 1, i32* @mazda_giraffe_switch_2_on, align 4
  br label %60

60:                                               ; preds = %59, %55
  br label %61

61:                                               ; preds = %60, %46
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

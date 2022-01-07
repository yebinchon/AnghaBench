; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_joystick.c_get_device_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_joystick.c_get_device_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DI8DEVTYPE_JOYSTICK = common dso_local global i32 0, align 4
@DI8DEVTYPEJOYSTICK_STANDARD = common dso_local global i32 0, align 4
@DIDEVTYPE_JOYSTICK = common dso_local global i32 0, align 4
@DIDEVTYPEJOYSTICK_TRADITIONAL = common dso_local global i32 0, align 4
@DI8DEVTYPE_GAMEPAD = common dso_local global i32 0, align 4
@DIDEVTYPEJOYSTICK_GAMEPAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_device_type(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp sge i32 %9, 2048
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load i32, i32* @DI8DEVTYPE_JOYSTICK, align 4
  %13 = load i32, i32* @DI8DEVTYPEJOYSTICK_STANDARD, align 4
  %14 = shl i32 %13, 8
  %15 = or i32 %12, %14
  br label %21

16:                                               ; preds = %8
  %17 = load i32, i32* @DIDEVTYPE_JOYSTICK, align 4
  %18 = load i32, i32* @DIDEVTYPEJOYSTICK_TRADITIONAL, align 4
  %19 = shl i32 %18, 8
  %20 = or i32 %17, %19
  br label %21

21:                                               ; preds = %16, %11
  %22 = phi i32 [ %15, %11 ], [ %20, %16 ]
  store i32 %22, i32* %3, align 4
  br label %38

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = icmp sge i32 %24, 2048
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* @DI8DEVTYPE_GAMEPAD, align 4
  %28 = load i32, i32* @DI8DEVTYPEJOYSTICK_STANDARD, align 4
  %29 = shl i32 %28, 8
  %30 = or i32 %27, %29
  br label %36

31:                                               ; preds = %23
  %32 = load i32, i32* @DIDEVTYPE_JOYSTICK, align 4
  %33 = load i32, i32* @DIDEVTYPEJOYSTICK_GAMEPAD, align 4
  %34 = shl i32 %33, 8
  %35 = or i32 %32, %34
  br label %36

36:                                               ; preds = %31, %26
  %37 = phi i32 [ %30, %26 ], [ %35, %31 ]
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %21
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_keyboard.c_keyboarddev_enum_deviceW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_keyboard.c_keyboarddev_enum_deviceW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_FAIL = common dso_local global i32 0, align 4
@DIEDFL_FORCEFEEDBACK = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i32 0, align 4
@DIDEVTYPE_KEYBOARD = common dso_local global i32 0, align 4
@DI8DEVCLASS_KEYBOARD = common dso_local global i32 0, align 4
@DI8DEVTYPE_KEYBOARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Enumerating the Keyboard device\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @keyboarddev_enum_deviceW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyboarddev_enum_deviceW(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = load i32, i32* @E_FAIL, align 4
  store i32 %15, i32* %6, align 4
  br label %53

16:                                               ; preds = %5
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @DIEDFL_FORCEFEEDBACK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @S_FALSE, align 4
  store i32 %22, i32* %6, align 4
  br label %53

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @DIDEVTYPE_KEYBOARD, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 2048
  br i1 %32, label %44, label %33

33:                                               ; preds = %30, %26
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @DI8DEVCLASS_KEYBOARD, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @DI8DEVTYPE_KEYBOARD, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %10, align 4
  %43 = icmp sge i32 %42, 2048
  br i1 %43, label %44, label %51

44:                                               ; preds = %41, %30, %23
  %45 = call i32 @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 (...) @get_keyboard_subtype()
  %49 = call i32 @fill_keyboard_dideviceinstanceW(i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* @S_OK, align 4
  store i32 %50, i32* %6, align 4
  br label %53

51:                                               ; preds = %41, %37
  %52 = load i32, i32* @S_FALSE, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %51, %44, %21, %14
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @fill_keyboard_dideviceinstanceW(i32, i32, i32) #1

declare dso_local i32 @get_keyboard_subtype(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

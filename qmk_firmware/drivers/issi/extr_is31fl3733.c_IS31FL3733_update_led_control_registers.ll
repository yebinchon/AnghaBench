; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/issi/extr_is31fl3733.c_IS31FL3733_update_led_control_registers.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/issi/extr_is31fl3733.c_IS31FL3733_update_led_control_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_led_control_registers_update_required = common dso_local global i64* null, align 8
@ISSI_COMMANDREGISTER_WRITELOCK = common dso_local global i32 0, align 4
@ISSI_COMMANDREGISTER = common dso_local global i32 0, align 4
@ISSI_PAGE_LEDCONTROL = common dso_local global i32 0, align 4
@g_led_control_registers = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IS31FL3733_update_led_control_registers(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64*, i64** @g_led_control_registers_update_required, align 8
  %7 = load i64, i64* %4, align 8
  %8 = getelementptr inbounds i64, i64* %6, i64 %7
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %2
  %12 = load i64, i64* %3, align 8
  %13 = load i32, i32* @ISSI_COMMANDREGISTER_WRITELOCK, align 4
  %14 = call i32 @IS31FL3733_write_register(i64 %12, i32 %13, i32 197)
  %15 = load i64, i64* %3, align 8
  %16 = load i32, i32* @ISSI_COMMANDREGISTER, align 4
  %17 = load i32, i32* @ISSI_PAGE_LEDCONTROL, align 4
  %18 = call i32 @IS31FL3733_write_register(i64 %15, i32 %16, i32 %17)
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %34, %11
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 24
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load i64, i64* %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32**, i32*** @g_led_control_registers, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds i32*, i32** %25, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @IS31FL3733_write_register(i64 %23, i32 %24, i32 %32)
  br label %34

34:                                               ; preds = %22
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %19

37:                                               ; preds = %19
  br label %38

38:                                               ; preds = %37, %2
  ret void
}

declare dso_local i32 @IS31FL3733_write_register(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

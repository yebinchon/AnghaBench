; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/issi/extr_is31fl3737.c_IS31FL3737_update_led_control_registers.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/issi/extr_is31fl3737.c_IS31FL3737_update_led_control_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_led_control_registers_update_required = common dso_local global i64 0, align 8
@ISSI_COMMANDREGISTER_WRITELOCK = common dso_local global i32 0, align 4
@ISSI_COMMANDREGISTER = common dso_local global i32 0, align 4
@ISSI_PAGE_LEDCONTROL = common dso_local global i32 0, align 4
@g_led_control_registers = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IS31FL3737_update_led_control_registers(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @g_led_control_registers_update_required, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %34

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @ISSI_COMMANDREGISTER_WRITELOCK, align 4
  %11 = call i32 @IS31FL3737_write_register(i32 %9, i32 %10, i32 197)
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @ISSI_COMMANDREGISTER, align 4
  %14 = load i32, i32* @ISSI_PAGE_LEDCONTROL, align 4
  %15 = call i32 @IS31FL3737_write_register(i32 %12, i32 %13, i32 %14)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %30, %8
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 24
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32**, i32*** @g_led_control_registers, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @IS31FL3737_write_register(i32 %20, i32 %21, i32 %28)
  br label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %16

33:                                               ; preds = %16
  br label %34

34:                                               ; preds = %33, %2
  ret void
}

declare dso_local i32 @IS31FL3737_write_register(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

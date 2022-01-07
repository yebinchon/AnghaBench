; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/hotdox/extr_left.c_left_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/hotdox/extr_left.c_left_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I2C_ADDR_WRITE = common dso_local global i32 0, align 4
@HOTDOX_I2C_TIMEOUT = common dso_local global i32 0, align 4
@i2c_initialized = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"mcp23017 attached!!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"mcp23017 deattached!!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @left_scan() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @I2C_ADDR_WRITE, align 4
  %3 = load i32, i32* @HOTDOX_I2C_TIMEOUT, align 4
  %4 = call i64 @i2c_start(i32 %2, i32 %3)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %0
  %8 = call i32 (...) @i2c_stop()
  %9 = load i32, i32* @i2c_initialized, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  store i32 1, i32* @i2c_initialized, align 4
  %12 = call i32 (...) @left_config()
  %13 = call i32 (...) @clear_keyboard()
  %14 = call i32 @print(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %11, %7
  br label %23

16:                                               ; preds = %0
  %17 = load i32, i32* @i2c_initialized, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  store i32 0, i32* @i2c_initialized, align 4
  %20 = call i32 (...) @clear_keyboard()
  %21 = call i32 @print(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %16
  br label %23

23:                                               ; preds = %22, %15
  ret void
}

declare dso_local i64 @i2c_start(i32, i32) #1

declare dso_local i32 @i2c_stop(...) #1

declare dso_local i32 @left_config(...) #1

declare dso_local i32 @clear_keyboard(...) #1

declare dso_local i32 @print(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

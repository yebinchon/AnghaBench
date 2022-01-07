; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodone/extr_expander.c_expander_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodone/extr_expander.c_expander_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"expander status: %d ... \00", align 1
@expander_status = common dso_local global i32 0, align 4
@EXPANDER_ADDR = common dso_local global i32 0, align 4
@I2C_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"attached\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"detached\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expander_scan() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @expander_status, align 4
  %3 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %2)
  %4 = load i32, i32* @EXPANDER_ADDR, align 4
  %5 = load i32, i32* @I2C_WRITE, align 4
  %6 = or i32 %4, %5
  %7 = call i64 @i2c_start(i32 %6)
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* %1, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %0
  %11 = call i32 (...) @i2c_stop()
  %12 = load i32, i32* @expander_status, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* @expander_status, align 4
  %16 = call i32 (...) @expander_config()
  %17 = call i32 (...) @clear_keyboard()
  br label %18

18:                                               ; preds = %14, %10
  br label %26

19:                                               ; preds = %0
  %20 = load i32, i32* @expander_status, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* @expander_status, align 4
  %24 = call i32 (...) @clear_keyboard()
  br label %25

25:                                               ; preds = %22, %19
  br label %26

26:                                               ; preds = %25, %18
  %27 = load i32, i32* @expander_status, align 4
  %28 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  ret void
}

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i64 @i2c_start(i32) #1

declare dso_local i32 @i2c_stop(...) #1

declare dso_local i32 @expander_config(...) #1

declare dso_local i32 @clear_keyboard(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

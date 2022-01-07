; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/issi/extr_is31fl3733.c_IS31FL3733_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/issi/extr_is31fl3733.c_IS31FL3733_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ISSI_COMMANDREGISTER_WRITELOCK = common dso_local global i32 0, align 4
@ISSI_COMMANDREGISTER = common dso_local global i32 0, align 4
@ISSI_PAGE_LEDCONTROL = common dso_local global i32 0, align 4
@ISSI_PAGE_PWM = common dso_local global i32 0, align 4
@ISSI_PAGE_FUNCTION = common dso_local global i32 0, align 4
@ISSI_REG_GLOBALCURRENT = common dso_local global i32 0, align 4
@ISSI_REG_CONFIGURATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IS31FL3733_init(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @ISSI_COMMANDREGISTER_WRITELOCK, align 4
  %9 = call i32 @IS31FL3733_write_register(i32 %7, i32 %8, i32 197)
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @ISSI_COMMANDREGISTER, align 4
  %12 = load i32, i32* @ISSI_PAGE_LEDCONTROL, align 4
  %13 = call i32 @IS31FL3733_write_register(i32 %10, i32 %11, i32 %12)
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %21, %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp sle i32 %15, 23
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @IS31FL3733_write_register(i32 %18, i32 %19, i32 0)
  br label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %14

24:                                               ; preds = %14
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @ISSI_COMMANDREGISTER_WRITELOCK, align 4
  %27 = call i32 @IS31FL3733_write_register(i32 %25, i32 %26, i32 197)
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @ISSI_COMMANDREGISTER, align 4
  %30 = load i32, i32* @ISSI_PAGE_PWM, align 4
  %31 = call i32 @IS31FL3733_write_register(i32 %28, i32 %29, i32 %30)
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %39, %24
  %33 = load i32, i32* %6, align 4
  %34 = icmp sle i32 %33, 191
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @IS31FL3733_write_register(i32 %36, i32 %37, i32 0)
  br label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %32

42:                                               ; preds = %32
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @ISSI_COMMANDREGISTER_WRITELOCK, align 4
  %45 = call i32 @IS31FL3733_write_register(i32 %43, i32 %44, i32 197)
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @ISSI_COMMANDREGISTER, align 4
  %48 = load i32, i32* @ISSI_PAGE_FUNCTION, align 4
  %49 = call i32 @IS31FL3733_write_register(i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @ISSI_REG_GLOBALCURRENT, align 4
  %52 = call i32 @IS31FL3733_write_register(i32 %50, i32 %51, i32 255)
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @ISSI_REG_CONFIGURATION, align 4
  %55 = load i32, i32* %4, align 4
  %56 = shl i32 %55, 6
  %57 = or i32 %56, 1
  %58 = call i32 @IS31FL3733_write_register(i32 %53, i32 %54, i32 %57)
  %59 = call i32 @wait_ms(i32 10)
  ret void
}

declare dso_local i32 @IS31FL3733_write_register(i32, i32, i32) #1

declare dso_local i32 @wait_ms(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

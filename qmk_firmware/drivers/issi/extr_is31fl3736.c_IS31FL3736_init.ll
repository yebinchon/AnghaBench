; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/issi/extr_is31fl3736.c_IS31FL3736_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/issi/extr_is31fl3736.c_IS31FL3736_init.c"
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
define dso_local void @IS31FL3736_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @ISSI_COMMANDREGISTER_WRITELOCK, align 4
  %7 = call i32 @IS31FL3736_write_register(i32 %5, i32 %6, i32 197)
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @ISSI_COMMANDREGISTER, align 4
  %10 = load i32, i32* @ISSI_PAGE_LEDCONTROL, align 4
  %11 = call i32 @IS31FL3736_write_register(i32 %8, i32 %9, i32 %10)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %19, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp sle i32 %13, 23
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @IS31FL3736_write_register(i32 %16, i32 %17, i32 0)
  br label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %12

22:                                               ; preds = %12
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @ISSI_COMMANDREGISTER_WRITELOCK, align 4
  %25 = call i32 @IS31FL3736_write_register(i32 %23, i32 %24, i32 197)
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @ISSI_COMMANDREGISTER, align 4
  %28 = load i32, i32* @ISSI_PAGE_PWM, align 4
  %29 = call i32 @IS31FL3736_write_register(i32 %26, i32 %27, i32 %28)
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %37, %22
  %31 = load i32, i32* %4, align 4
  %32 = icmp sle i32 %31, 191
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @IS31FL3736_write_register(i32 %34, i32 %35, i32 0)
  br label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %30

40:                                               ; preds = %30
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @ISSI_COMMANDREGISTER_WRITELOCK, align 4
  %43 = call i32 @IS31FL3736_write_register(i32 %41, i32 %42, i32 197)
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @ISSI_COMMANDREGISTER, align 4
  %46 = load i32, i32* @ISSI_PAGE_FUNCTION, align 4
  %47 = call i32 @IS31FL3736_write_register(i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* @ISSI_REG_GLOBALCURRENT, align 4
  %50 = call i32 @IS31FL3736_write_register(i32 %48, i32 %49, i32 255)
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @ISSI_REG_CONFIGURATION, align 4
  %53 = call i32 @IS31FL3736_write_register(i32 %51, i32 %52, i32 1)
  %54 = call i32 @wait_ms(i32 10)
  ret void
}

declare dso_local i32 @IS31FL3736_write_register(i32, i32, i32) #1

declare dso_local i32 @wait_ms(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

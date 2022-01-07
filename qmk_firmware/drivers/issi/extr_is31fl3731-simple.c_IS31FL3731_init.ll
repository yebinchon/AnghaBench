; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/issi/extr_is31fl3731-simple.c_IS31FL3731_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/issi/extr_is31fl3731-simple.c_IS31FL3731_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ISSI_COMMANDREGISTER = common dso_local global i32 0, align 4
@ISSI_BANK_FUNCTIONREG = common dso_local global i32 0, align 4
@ISSI_REG_SHUTDOWN = common dso_local global i32 0, align 4
@ISSI_REG_CONFIG = common dso_local global i32 0, align 4
@ISSI_REG_CONFIG_PICTUREMODE = common dso_local global i32 0, align 4
@ISSI_REG_PICTUREFRAME = common dso_local global i32 0, align 4
@ISSI_REG_AUDIOSYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IS31FL3731_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @ISSI_COMMANDREGISTER, align 4
  %8 = load i32, i32* @ISSI_BANK_FUNCTIONREG, align 4
  %9 = call i32 @IS31FL3731_write_register(i32 %6, i32 %7, i32 %8)
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @ISSI_REG_SHUTDOWN, align 4
  %12 = call i32 @IS31FL3731_write_register(i32 %10, i32 %11, i32 0)
  %13 = call i32 @wait_ms(i32 10)
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @ISSI_REG_CONFIG, align 4
  %16 = load i32, i32* @ISSI_REG_CONFIG_PICTUREMODE, align 4
  %17 = call i32 @IS31FL3731_write_register(i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @ISSI_REG_PICTUREFRAME, align 4
  %20 = call i32 @IS31FL3731_write_register(i32 %18, i32 %19, i32 0)
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @ISSI_REG_AUDIOSYNC, align 4
  %23 = call i32 @IS31FL3731_write_register(i32 %21, i32 %22, i32 0)
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @ISSI_COMMANDREGISTER, align 4
  %26 = call i32 @IS31FL3731_write_register(i32 %24, i32 %25, i32 0)
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %34, %1
  %28 = load i32, i32* %3, align 4
  %29 = icmp sle i32 %28, 17
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @IS31FL3731_write_register(i32 %31, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %27

37:                                               ; preds = %27
  store i32 18, i32* %4, align 4
  br label %38

38:                                               ; preds = %45, %37
  %39 = load i32, i32* %4, align 4
  %40 = icmp sle i32 %39, 35
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @IS31FL3731_write_register(i32 %42, i32 %43, i32 0)
  br label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %38

48:                                               ; preds = %38
  store i32 36, i32* %5, align 4
  br label %49

49:                                               ; preds = %56, %48
  %50 = load i32, i32* %5, align 4
  %51 = icmp sle i32 %50, 179
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @IS31FL3731_write_register(i32 %53, i32 %54, i32 0)
  br label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %49

59:                                               ; preds = %49
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* @ISSI_COMMANDREGISTER, align 4
  %62 = load i32, i32* @ISSI_BANK_FUNCTIONREG, align 4
  %63 = call i32 @IS31FL3731_write_register(i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* @ISSI_REG_SHUTDOWN, align 4
  %66 = call i32 @IS31FL3731_write_register(i32 %64, i32 %65, i32 1)
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* @ISSI_COMMANDREGISTER, align 4
  %69 = call i32 @IS31FL3731_write_register(i32 %67, i32 %68, i32 0)
  ret void
}

declare dso_local i32 @IS31FL3731_write_register(i32, i32, i32) #1

declare dso_local i32 @wait_ms(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

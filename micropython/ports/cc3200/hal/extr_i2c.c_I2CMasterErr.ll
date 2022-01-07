; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_i2c.c_I2CMasterErr.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_i2c.c_I2CMasterErr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I2C_O_MCS = common dso_local global i32 0, align 4
@I2C_MCS_BUSY = common dso_local global i32 0, align 4
@I2C_MASTER_ERR_NONE = common dso_local global i32 0, align 4
@I2C_MCS_ERROR = common dso_local global i32 0, align 4
@I2C_MCS_ARBLST = common dso_local global i32 0, align 4
@I2C_MCS_ACK = common dso_local global i32 0, align 4
@I2C_MCS_ADRACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @I2CMasterErr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @_I2CBaseValid(i32 %5)
  %7 = call i32 @ASSERT(i32 %6)
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @I2C_O_MCS, align 4
  %10 = add nsw i32 %8, %9
  %11 = call i32 @HWREG(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @I2C_MCS_BUSY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @I2C_MASTER_ERR_NONE, align 4
  store i32 %17, i32* %2, align 4
  br label %35

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @I2C_MCS_ERROR, align 4
  %21 = load i32, i32* @I2C_MCS_ARBLST, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @I2C_MCS_ARBLST, align 4
  %28 = load i32, i32* @I2C_MCS_ACK, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @I2C_MCS_ADRACK, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %26, %31
  store i32 %32, i32* %2, align 4
  br label %35

33:                                               ; preds = %18
  %34 = load i32, i32* @I2C_MASTER_ERR_NONE, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %25, %16
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @_I2CBaseValid(i32) #1

declare dso_local i32 @HWREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

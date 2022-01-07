; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_prcm.c_PRCMHibernateWakeUpGPIOSelect.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_prcm.c_PRCMHibernateWakeUpGPIOSelect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HIB3P3_BASE = common dso_local global i64 0, align 8
@HIB3P3_O_MEM_GPIO_WAKE_CONF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PRCMHibernateWakeUpGPIOSelect(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %3, align 8
  %8 = lshr i64 %7, 16
  store i64 %8, i64* %3, align 8
  store i8 0, i8* %5, align 1
  br label %9

9:                                                ; preds = %40, %2
  %10 = load i8, i8* %5, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp slt i32 %11, 7
  br i1 %12, label %13, label %43

13:                                               ; preds = %9
  %14 = load i64, i64* %3, align 8
  %15 = load i8, i8* %5, align 1
  %16 = zext i8 %15 to i32
  %17 = shl i32 1, %16
  %18 = sext i32 %17 to i64
  %19 = and i64 %14, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %13
  %22 = load i64, i64* @HIB3P3_BASE, align 8
  %23 = load i64, i64* @HIB3P3_O_MEM_GPIO_WAKE_CONF, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i64 @MAP_PRCMHIBRegRead(i64 %24)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i32
  %29 = mul nsw i32 %28, 2
  %30 = zext i32 %29 to i64
  %31 = shl i64 %26, %30
  %32 = load i64, i64* %6, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* @HIB3P3_BASE, align 8
  %35 = load i64, i64* @HIB3P3_O_MEM_GPIO_WAKE_CONF, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @MAP_PRCMHIBRegWrite(i64 %36, i64 %37)
  br label %39

39:                                               ; preds = %21, %13
  br label %40

40:                                               ; preds = %39
  %41 = load i8, i8* %5, align 1
  %42 = add i8 %41, 1
  store i8 %42, i8* %5, align 1
  br label %9

43:                                               ; preds = %9
  ret void
}

declare dso_local i64 @MAP_PRCMHIBRegRead(i64) #1

declare dso_local i32 @MAP_PRCMHIBRegWrite(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_prcm.c_PRCMOCRRegisterRead.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_prcm.c_PRCMOCRRegisterRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HIB3P3_BASE = common dso_local global i64 0, align 8
@HIB3P3_O_MEM_HIB_REG2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PRCMOCRRegisterRead(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i64, i64* @HIB3P3_BASE, align 8
  %4 = load i64, i64* @HIB3P3_O_MEM_HIB_REG2, align 8
  %5 = add nsw i64 %3, %4
  %6 = load i8, i8* %2, align 1
  %7 = zext i8 %6 to i32
  %8 = shl i32 %7, 2
  %9 = sext i32 %8 to i64
  %10 = add nsw i64 %5, %9
  %11 = call i64 @MAP_PRCMHIBRegRead(i64 %10)
  ret i64 %11
}

declare dso_local i64 @MAP_PRCMHIBRegRead(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

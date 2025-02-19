; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_interrupt.c_IntRegister.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_interrupt.c_IntRegister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_INTERRUPTS = common dso_local global i64 0, align 8
@NVIC_VTABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IntRegister(i64 %0, void ()* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca void ()*, align 8
  %5 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  store void ()* %1, void ()** %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @NUM_INTERRUPTS, align 8
  %8 = icmp ult i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load i32, i32* @NVIC_VTABLE, align 4
  %12 = call i64 @HWREG(i32 %11)
  %13 = inttoptr i64 %12 to i64*
  store i64* %13, i64** %5, align 8
  %14 = load void ()*, void ()** %4, align 8
  %15 = ptrtoint void ()* %14 to i64
  %16 = load i64*, i64** %5, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  store i64 %15, i64* %18, align 8
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @HWREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

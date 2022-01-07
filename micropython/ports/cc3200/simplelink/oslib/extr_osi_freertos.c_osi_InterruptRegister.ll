; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/simplelink/oslib/extr_osi_freertos.c_osi_InterruptRegister.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/simplelink/oslib/extr_osi_freertos.c_osi_InterruptRegister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OSI_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @osi_InterruptRegister(i32 %0, i64 %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i8 %2, i8* %6, align 1
  %7 = load i32, i32* %4, align 4
  %8 = load i64, i64* %5, align 8
  %9 = inttoptr i64 %8 to void ()*
  %10 = bitcast void ()* %9 to void (...)*
  %11 = call i32 @MAP_IntRegister(i32 %7, void (...)* %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i8, i8* %6, align 1
  %14 = call i32 @MAP_IntPrioritySet(i32 %12, i8 zeroext %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @MAP_IntEnable(i32 %15)
  %17 = load i32, i32* @OSI_OK, align 4
  ret i32 %17
}

declare dso_local i32 @MAP_IntRegister(i32, void (...)*) #1

declare dso_local i32 @MAP_IntPrioritySet(i32, i8 zeroext) #1

declare dso_local i32 @MAP_IntEnable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

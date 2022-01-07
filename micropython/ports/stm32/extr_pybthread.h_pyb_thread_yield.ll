; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/extr_pybthread.h_pyb_thread_yield.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/extr_pybthread.h_pyb_thread_yield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }

@pyb_thread_cur = common dso_local global %struct.TYPE_3__* null, align 8
@SCB_ICSR_PENDSVSET_Msk = common dso_local global i32 0, align 4
@SCB = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pyb_thread_yield to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pyb_thread_yield() #0 {
  %1 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pyb_thread_cur, align 8
  %2 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pyb_thread_cur, align 8
  %5 = icmp eq %struct.TYPE_3__* %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 (...) @__WFI()
  br label %12

8:                                                ; preds = %0
  %9 = load i32, i32* @SCB_ICSR_PENDSVSET_Msk, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SCB, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  br label %12

12:                                               ; preds = %8, %6
  ret void
}

declare dso_local i32 @__WFI(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

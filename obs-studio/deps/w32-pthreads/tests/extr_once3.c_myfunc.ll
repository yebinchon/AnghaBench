; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_once3.c_myfunc.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_once3.c_myfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@numOnce = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @myfunc() #0 {
  %1 = call i32 @EnterCriticalSection(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @numOnce, i32 0, i32 1))
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @numOnce, i32 0, i32 0), align 8
  %3 = add nsw i64 %2, 1
  store i64 %3, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @numOnce, i32 0, i32 0), align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @numOnce, i32 0, i32 0), align 8
  %5 = icmp sgt i64 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = call i32 @LeaveCriticalSection(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @numOnce, i32 0, i32 1))
  %9 = call i32 @Sleep(i32 10)
  %10 = call i32 (...) @pthread_testcancel()
  ret void
}

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i32 @pthread_testcancel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

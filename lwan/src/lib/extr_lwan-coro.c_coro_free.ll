; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-coro.c_coro_free.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-coro.c_coro_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coro = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coro_free(%struct.coro* %0) #0 {
  %2 = alloca %struct.coro*, align 8
  store %struct.coro* %0, %struct.coro** %2, align 8
  %3 = load %struct.coro*, %struct.coro** %2, align 8
  %4 = call i32 @assert(%struct.coro* %3)
  %5 = load %struct.coro*, %struct.coro** %2, align 8
  %6 = call i32 @coro_deferred_run(%struct.coro* %5, i32 0)
  %7 = load %struct.coro*, %struct.coro** %2, align 8
  %8 = getelementptr inbounds %struct.coro, %struct.coro* %7, i32 0, i32 0
  %9 = call i32 @coro_defer_array_reset(i32* %8)
  %10 = load %struct.coro*, %struct.coro** %2, align 8
  %11 = call i32 @free(%struct.coro* %10)
  ret void
}

declare dso_local i32 @assert(%struct.coro*) #1

declare dso_local i32 @coro_deferred_run(%struct.coro*, i32) #1

declare dso_local i32 @coro_defer_array_reset(i32*) #1

declare dso_local i32 @free(%struct.coro*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

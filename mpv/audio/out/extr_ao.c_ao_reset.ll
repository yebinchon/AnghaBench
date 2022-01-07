; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao.c_ao_reset.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao.c_ao_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ao*)* }

@AO_EVENT_UNDERRUN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ao_reset(%struct.ao* %0) #0 {
  %2 = alloca %struct.ao*, align 8
  store %struct.ao* %0, %struct.ao** %2, align 8
  %3 = load %struct.ao*, %struct.ao** %2, align 8
  %4 = getelementptr inbounds %struct.ao, %struct.ao* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32 (%struct.ao*)*, i32 (%struct.ao*)** %6, align 8
  %8 = icmp ne i32 (%struct.ao*)* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.ao*, %struct.ao** %2, align 8
  %11 = getelementptr inbounds %struct.ao, %struct.ao* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.ao*)*, i32 (%struct.ao*)** %13, align 8
  %15 = load %struct.ao*, %struct.ao** %2, align 8
  %16 = call i32 %14(%struct.ao* %15)
  br label %17

17:                                               ; preds = %9, %1
  %18 = load %struct.ao*, %struct.ao** %2, align 8
  %19 = getelementptr inbounds %struct.ao, %struct.ao* %18, i32 0, i32 0
  %20 = load i64, i64* @AO_EVENT_UNDERRUN, align 8
  %21 = trunc i64 %20 to i32
  %22 = xor i32 %21, -1
  %23 = call i32 @atomic_fetch_and(i32* %19, i32 %22)
  ret void
}

declare dso_local i32 @atomic_fetch_and(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

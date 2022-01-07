; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_driverscan.h_can_flip_buses.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_driverscan.h_can_flip_buses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bus_lookup = common dso_local global i64* null, align 8
@can_num_lookup = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @can_flip_buses(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64*, i64** @bus_lookup, align 8
  %7 = load i64, i64* %3, align 8
  %8 = getelementptr inbounds i64, i64* %6, i64 %7
  store i64 %5, i64* %8, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64*, i64** @bus_lookup, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  store i64 %9, i64* %12, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64*, i64** @can_num_lookup, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  store i64 %13, i64* %16, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load i64*, i64** @can_num_lookup, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  store i64 %17, i64* %20, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

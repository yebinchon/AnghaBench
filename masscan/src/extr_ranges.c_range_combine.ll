; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_ranges.c_range_combine.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_ranges.c_range_combine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Range = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Range*, i64, i64)* @range_combine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @range_combine(%struct.Range* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.Range, align 8
  %5 = alloca %struct.Range*, align 8
  %6 = bitcast %struct.Range* %4 to { i64, i64 }*
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 0
  store i64 %1, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 1
  store i64 %2, i64* %8, align 8
  store %struct.Range* %0, %struct.Range** %5, align 8
  %9 = load %struct.Range*, %struct.Range** %5, align 8
  %10 = getelementptr inbounds %struct.Range, %struct.Range* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.Range, %struct.Range* %4, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %11, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.Range, %struct.Range* %4, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.Range*, %struct.Range** %5, align 8
  %19 = getelementptr inbounds %struct.Range, %struct.Range* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %15, %3
  %21 = load %struct.Range*, %struct.Range** %5, align 8
  %22 = getelementptr inbounds %struct.Range, %struct.Range* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.Range, %struct.Range* %4, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.Range, %struct.Range* %4, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.Range*, %struct.Range** %5, align 8
  %31 = getelementptr inbounds %struct.Range, %struct.Range* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %27, %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

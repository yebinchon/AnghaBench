; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_threading-posix.c_add_ms_to_ts.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_threading-posix.c_add_ms_to_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timespec*, i64)* @add_ms_to_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_ms_to_ts(%struct.timespec* %0, i64 %1) #0 {
  %3 = alloca %struct.timespec*, align 8
  %4 = alloca i64, align 8
  store %struct.timespec* %0, %struct.timespec** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = udiv i64 %5, 1000
  %7 = load %struct.timespec*, %struct.timespec** %3, align 8
  %8 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add i64 %9, %6
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %4, align 8
  %12 = urem i64 %11, 1000
  %13 = mul i64 %12, 1000000
  %14 = load %struct.timespec*, %struct.timespec** %3, align 8
  %15 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, %13
  store i64 %17, i64* %15, align 8
  %18 = load %struct.timespec*, %struct.timespec** %3, align 8
  %19 = getelementptr inbounds %struct.timespec, %struct.timespec* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ugt i64 %20, 1000000000
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.timespec*, %struct.timespec** %3, align 8
  %24 = getelementptr inbounds %struct.timespec, %struct.timespec* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.timespec*, %struct.timespec** %3, align 8
  %28 = getelementptr inbounds %struct.timespec, %struct.timespec* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub i64 %29, 1000000000
  store i64 %30, i64* %28, align 8
  br label %31

31:                                               ; preds = %22, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

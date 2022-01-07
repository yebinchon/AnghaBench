; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_test_vsyscall.c_tv_diff.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_test_vsyscall.c_tv_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.timeval*, %struct.timeval*)* @tv_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @tv_diff(%struct.timeval* %0, %struct.timeval* %1) #0 {
  %3 = alloca %struct.timeval*, align 8
  %4 = alloca %struct.timeval*, align 8
  store %struct.timeval* %0, %struct.timeval** %3, align 8
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  %5 = load %struct.timeval*, %struct.timeval** %3, align 8
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.timeval*, %struct.timeval** %4, align 8
  %9 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %7, %10
  %12 = sitofp i64 %11 to double
  %13 = load %struct.timeval*, %struct.timeval** %3, align 8
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = load %struct.timeval*, %struct.timeval** %4, align 8
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = sub nsw i32 %16, %20
  %22 = sitofp i32 %21 to double
  %23 = fmul double %22, 0x3EB0C6F7A0B5ED8D
  %24 = fadd double %12, %23
  ret double %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

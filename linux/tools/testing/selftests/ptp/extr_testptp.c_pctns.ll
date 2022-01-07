; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/ptp/extr_testptp.c_pctns.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/ptp/extr_testptp.c_pctns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptp_clock_time = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ptp_clock_time*)* @pctns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pctns(%struct.ptp_clock_time* %0) #0 {
  %2 = alloca %struct.ptp_clock_time*, align 8
  store %struct.ptp_clock_time* %0, %struct.ptp_clock_time** %2, align 8
  %3 = load %struct.ptp_clock_time*, %struct.ptp_clock_time** %2, align 8
  %4 = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = mul nsw i64 %5, 1000000000
  %7 = load %struct.ptp_clock_time*, %struct.ptp_clock_time** %2, align 8
  %8 = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %6, %9
  ret i64 %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

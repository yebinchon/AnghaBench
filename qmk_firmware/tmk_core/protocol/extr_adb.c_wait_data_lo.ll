; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_adb.c_wait_data_lo.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_adb.c_wait_data_lo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F_CPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @wait_data_lo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wait_data_lo(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  br label %3

3:                                                ; preds = %14, %1
  %4 = call i32 (...) @data_in()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  br label %18

7:                                                ; preds = %3
  %8 = load i32, i32* @F_CPU, align 4
  %9 = sitofp i32 %8 to double
  %10 = fdiv double 6.000000e+06, %9
  %11 = fsub double 1.000000e+00, %10
  %12 = fptosi double %11 to i32
  %13 = call i32 @_delay_us(i32 %12)
  br label %14

14:                                               ; preds = %7
  %15 = load i64, i64* %2, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %2, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %3, label %18

18:                                               ; preds = %14, %6
  %19 = load i64, i64* %2, align 8
  ret i64 %19
}

declare dso_local i32 @data_in(...) #1

declare dso_local i32 @_delay_us(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

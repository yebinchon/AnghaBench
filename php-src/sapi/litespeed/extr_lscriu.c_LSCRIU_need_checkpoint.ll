; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lscriu.c_LSCRIU_need_checkpoint.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lscriu.c_LSCRIU_need_checkpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_initial_start_reqs = common dso_local global i64 0, align 8
@CRIU_GCOUNTER_SHM = common dso_local global i64 0, align 8
@s_requests_count = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @LSCRIU_need_checkpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LSCRIU_need_checkpoint() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @s_initial_start_reqs, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %24

5:                                                ; preds = %0
  %6 = call i64 (...) @LSCRIU_Get_Global_Counter_Type()
  %7 = load i64, i64* @CRIU_GCOUNTER_SHM, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = load i64, i64* @s_requests_count, align 8
  %11 = load i64, i64* @s_initial_start_reqs, align 8
  %12 = icmp sle i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 (...) @LSCRIU_Get_Global_Counter()
  br label %15

15:                                               ; preds = %13, %9, %5
  %16 = load i64, i64* @s_initial_start_reqs, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i64, i64* @s_requests_count, align 8
  %20 = load i64, i64* @s_initial_start_reqs, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 1, i32* %1, align 4
  br label %24

23:                                               ; preds = %18, %15
  store i32 0, i32* %1, align 4
  br label %24

24:                                               ; preds = %23, %22, %4
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i64 @LSCRIU_Get_Global_Counter_Type(...) #1

declare dso_local i32 @LSCRIU_Get_Global_Counter(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

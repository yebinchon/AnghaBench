; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_MultiXactMemberFreezeThreshold.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_MultiXactMemberFreezeThreshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MULTIXACT_MEMBER_SAFE_THRESHOLD = common dso_local global i64 0, align 8
@autovacuum_multixact_freeze_max_age = common dso_local global i32 0, align 4
@MULTIXACT_MEMBER_DANGER_THRESHOLD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MultiXactMemberFreezeThreshold() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = call i32 @ReadMultiXactCounts(double* %3, i64* %2)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %37

9:                                                ; preds = %0
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @MULTIXACT_MEMBER_SAFE_THRESHOLD, align 8
  %12 = icmp sle i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @autovacuum_multixact_freeze_max_age, align 4
  store i32 %14, i32* %1, align 4
  br label %37

15:                                               ; preds = %9
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* @MULTIXACT_MEMBER_SAFE_THRESHOLD, align 8
  %18 = sub nsw i64 %16, %17
  %19 = sitofp i64 %18 to double
  %20 = load i64, i64* @MULTIXACT_MEMBER_DANGER_THRESHOLD, align 8
  %21 = load i64, i64* @MULTIXACT_MEMBER_SAFE_THRESHOLD, align 8
  %22 = sub nsw i64 %20, %21
  %23 = sitofp i64 %22 to double
  %24 = fdiv double %19, %23
  store double %24, double* %5, align 8
  %25 = load double, double* %3, align 8
  %26 = load double, double* %5, align 8
  %27 = fmul double %25, %26
  store double %27, double* %4, align 8
  %28 = load double, double* %4, align 8
  %29 = load double, double* %3, align 8
  %30 = fcmp ogt double %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %15
  store i32 0, i32* %1, align 4
  br label %37

32:                                               ; preds = %15
  %33 = load double, double* %3, align 8
  %34 = load double, double* %4, align 8
  %35 = fsub double %33, %34
  %36 = fptosi double %35 to i32
  store i32 %36, i32* %1, align 4
  br label %37

37:                                               ; preds = %32, %31, %13, %8
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local i32 @ReadMultiXactCounts(double*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_GetOldestMultiXactId.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_GetOldestMultiXactId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@MultiXactGenLock = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4
@MultiXactState = common dso_local global %struct.TYPE_2__* null, align 8
@FirstMultiXactId = common dso_local global i64 0, align 8
@MaxOldestSlot = common dso_local global i32 0, align 4
@OldestMemberMXactId = common dso_local global i64* null, align 8
@OldestVisibleMXactId = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetOldestMultiXactId() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = load i32, i32* @MultiXactGenLock, align 4
  %6 = load i32, i32* @LW_SHARED, align 4
  %7 = call i32 @LWLockAcquire(i32 %5, i32 %6)
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* @FirstMultiXactId, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = load i64, i64* @FirstMultiXactId, align 8
  store i64 %15, i64* %2, align 8
  br label %16

16:                                               ; preds = %14, %0
  %17 = load i64, i64* %2, align 8
  store i64 %17, i64* %1, align 8
  store i32 1, i32* %3, align 4
  br label %18

18:                                               ; preds = %55, %16
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @MaxOldestSlot, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %58

22:                                               ; preds = %18
  %23 = load i64*, i64** @OldestMemberMXactId, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @MultiXactIdIsValid(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %22
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* %1, align 8
  %34 = call i64 @MultiXactIdPrecedes(i64 %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i64, i64* %4, align 8
  store i64 %37, i64* %1, align 8
  br label %38

38:                                               ; preds = %36, %31, %22
  %39 = load i64*, i64** @OldestVisibleMXactId, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = call i64 @MultiXactIdIsValid(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %38
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* %1, align 8
  %50 = call i64 @MultiXactIdPrecedes(i64 %48, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i64, i64* %4, align 8
  store i64 %53, i64* %1, align 8
  br label %54

54:                                               ; preds = %52, %47, %38
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %18

58:                                               ; preds = %18
  %59 = load i32, i32* @MultiXactGenLock, align 4
  %60 = call i32 @LWLockRelease(i32 %59)
  %61 = load i64, i64* %1, align 8
  ret i64 %61
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i64 @MultiXactIdIsValid(i64) #1

declare dso_local i64 @MultiXactIdPrecedes(i64, i64) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

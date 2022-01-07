; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_MultiXactIdSetOldestVisible.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_MultiXactIdSetOldestVisible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@OldestVisibleMXactId = common dso_local global i64* null, align 8
@MyBackendId = common dso_local global i64 0, align 8
@MultiXactGenLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@MultiXactState = common dso_local global %struct.TYPE_2__* null, align 8
@FirstMultiXactId = common dso_local global i64 0, align 8
@MaxOldestSlot = common dso_local global i32 0, align 4
@OldestMemberMXactId = common dso_local global i64* null, align 8
@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"MultiXact: setting OldestVisible[%d] = %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @MultiXactIdSetOldestVisible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MultiXactIdSetOldestVisible() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i64*, i64** @OldestVisibleMXactId, align 8
  %5 = load i64, i64* @MyBackendId, align 8
  %6 = getelementptr inbounds i64, i64* %4, i64 %5
  %7 = load i64, i64* %6, align 8
  %8 = call i64 @MultiXactIdIsValid(i64 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %58, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* @MultiXactGenLock, align 4
  %12 = load i32, i32* @LW_EXCLUSIVE, align 4
  %13 = call i32 @LWLockAcquire(i32 %11, i32 %12)
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %1, align 8
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* @FirstMultiXactId, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %10
  %21 = load i64, i64* @FirstMultiXactId, align 8
  store i64 %21, i64* %1, align 8
  br label %22

22:                                               ; preds = %20, %10
  store i32 1, i32* %2, align 4
  br label %23

23:                                               ; preds = %44, %22
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @MaxOldestSlot, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %23
  %28 = load i64*, i64** @OldestMemberMXactId, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %3, align 8
  %33 = load i64, i64* %3, align 8
  %34 = call i64 @MultiXactIdIsValid(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* %1, align 8
  %39 = call i64 @MultiXactIdPrecedes(i64 %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i64, i64* %3, align 8
  store i64 %42, i64* %1, align 8
  br label %43

43:                                               ; preds = %41, %36, %27
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %23

47:                                               ; preds = %23
  %48 = load i64, i64* %1, align 8
  %49 = load i64*, i64** @OldestVisibleMXactId, align 8
  %50 = load i64, i64* @MyBackendId, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  store i64 %48, i64* %51, align 8
  %52 = load i32, i32* @MultiXactGenLock, align 4
  %53 = call i32 @LWLockRelease(i32 %52)
  %54 = load i32, i32* @DEBUG2, align 4
  %55 = load i64, i64* @MyBackendId, align 8
  %56 = load i64, i64* %1, align 8
  %57 = call i32 @debug_elog4(i32 %54, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %55, i64 %56)
  br label %58

58:                                               ; preds = %47, %0
  ret void
}

declare dso_local i64 @MultiXactIdIsValid(i64) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i64 @MultiXactIdPrecedes(i64, i64) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @debug_elog4(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

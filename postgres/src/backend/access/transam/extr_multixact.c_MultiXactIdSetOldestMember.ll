; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_MultiXactIdSetOldestMember.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_MultiXactIdSetOldestMember.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@OldestMemberMXactId = common dso_local global i64* null, align 8
@MyBackendId = common dso_local global i64 0, align 8
@MultiXactGenLock = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4
@MultiXactState = common dso_local global %struct.TYPE_2__* null, align 8
@FirstMultiXactId = common dso_local global i64 0, align 8
@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"MultiXact: setting OldestMember[%d] = %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MultiXactIdSetOldestMember() #0 {
  %1 = alloca i64, align 8
  %2 = load i64*, i64** @OldestMemberMXactId, align 8
  %3 = load i64, i64* @MyBackendId, align 8
  %4 = getelementptr inbounds i64, i64* %2, i64 %3
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @MultiXactIdIsValid(i64 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %31, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @MultiXactGenLock, align 4
  %10 = load i32, i32* @LW_SHARED, align 4
  %11 = call i32 @LWLockAcquire(i32 %9, i32 %10)
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MultiXactState, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %1, align 8
  %15 = load i64, i64* %1, align 8
  %16 = load i64, i64* @FirstMultiXactId, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %8
  %19 = load i64, i64* @FirstMultiXactId, align 8
  store i64 %19, i64* %1, align 8
  br label %20

20:                                               ; preds = %18, %8
  %21 = load i64, i64* %1, align 8
  %22 = load i64*, i64** @OldestMemberMXactId, align 8
  %23 = load i64, i64* @MyBackendId, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  store i64 %21, i64* %24, align 8
  %25 = load i32, i32* @MultiXactGenLock, align 4
  %26 = call i32 @LWLockRelease(i32 %25)
  %27 = load i32, i32* @DEBUG2, align 4
  %28 = load i64, i64* @MyBackendId, align 8
  %29 = load i64, i64* %1, align 8
  %30 = call i32 @debug_elog4(i32 %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %28, i64 %29)
  br label %31

31:                                               ; preds = %20, %0
  ret void
}

declare dso_local i32 @MultiXactIdIsValid(i64) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @debug_elog4(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

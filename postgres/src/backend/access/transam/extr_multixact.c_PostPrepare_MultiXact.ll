; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_PostPrepare_MultiXact.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_PostPrepare_MultiXact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OldestMemberMXactId = common dso_local global i8** null, align 8
@MyBackendId = common dso_local global i64 0, align 8
@MultiXactGenLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@InvalidMultiXactId = common dso_local global i8* null, align 8
@OldestVisibleMXactId = common dso_local global i8** null, align 8
@MXactContext = common dso_local global i32* null, align 8
@MXactCache = common dso_local global i32 0, align 4
@MXactCacheMembers = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PostPrepare_MultiXact(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i8**, i8*** @OldestMemberMXactId, align 8
  %6 = load i64, i64* @MyBackendId, align 8
  %7 = getelementptr inbounds i8*, i8** %5, i64 %6
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @MultiXactIdIsValid(i8* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = call i64 @TwoPhaseGetDummyBackendId(i32 %13, i32 0)
  store i64 %14, i64* %4, align 8
  %15 = load i32, i32* @MultiXactGenLock, align 4
  %16 = load i32, i32* @LW_EXCLUSIVE, align 4
  %17 = call i32 @LWLockAcquire(i32 %15, i32 %16)
  %18 = load i8*, i8** %3, align 8
  %19 = load i8**, i8*** @OldestMemberMXactId, align 8
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds i8*, i8** %19, i64 %20
  store i8* %18, i8** %21, align 8
  %22 = load i8*, i8** @InvalidMultiXactId, align 8
  %23 = load i8**, i8*** @OldestMemberMXactId, align 8
  %24 = load i64, i64* @MyBackendId, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24
  store i8* %22, i8** %25, align 8
  %26 = load i32, i32* @MultiXactGenLock, align 4
  %27 = call i32 @LWLockRelease(i32 %26)
  br label %28

28:                                               ; preds = %12, %1
  %29 = load i8*, i8** @InvalidMultiXactId, align 8
  %30 = load i8**, i8*** @OldestVisibleMXactId, align 8
  %31 = load i64, i64* @MyBackendId, align 8
  %32 = getelementptr inbounds i8*, i8** %30, i64 %31
  store i8* %29, i8** %32, align 8
  store i32* null, i32** @MXactContext, align 8
  %33 = call i32 @dlist_init(i32* @MXactCache)
  store i64 0, i64* @MXactCacheMembers, align 8
  ret void
}

declare dso_local i64 @MultiXactIdIsValid(i8*) #1

declare dso_local i64 @TwoPhaseGetDummyBackendId(i32, i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @dlist_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

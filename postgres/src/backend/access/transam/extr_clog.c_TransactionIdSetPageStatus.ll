; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_clog.c_TransactionIdSetPageStatus.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_clog.c_TransactionIdSetPageStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@THRESHOLD_SUBTRANS_CLOG_OPT = common dso_local global i32 0, align 4
@PGPROC_MAX_CACHED_SUBXIDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"group clog threshold less than PGPROC cached subxids\00", align 1
@MyPgXact = common dso_local global %struct.TYPE_6__* null, align 8
@MyProc = common dso_local global %struct.TYPE_5__* null, align 8
@CLogControlLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i64*, i32, i32, i32, i32)* @TransactionIdSetPageStatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TransactionIdSetPageStatus(i64 %0, i32 %1, i64* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store i64* %2, i64** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load i32, i32* @THRESHOLD_SUBTRANS_CLOG_OPT, align 4
  %16 = load i32, i32* @PGPROC_MAX_CACHED_SUBXIDS, align 4
  %17 = icmp sle i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @StaticAssertStmt(i32 %18, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %80

22:                                               ; preds = %7
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyPgXact, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %80

28:                                               ; preds = %22
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @THRESHOLD_SUBTRANS_CLOG_OPT, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %80

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @MyPgXact, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %80

38:                                               ; preds = %32
  %39 = load i64*, i64** %10, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MyProc, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 8
  %47 = trunc i64 %46 to i32
  %48 = call i64 @memcmp(i64* %39, i32 %43, i32 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %80

50:                                               ; preds = %38
  %51 = load i32, i32* @THRESHOLD_SUBTRANS_CLOG_OPT, align 4
  %52 = load i32, i32* @PGPROC_MAX_CACHED_SUBXIDS, align 4
  %53 = icmp sle i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @Assert(i32 %54)
  %56 = load i32, i32* @CLogControlLock, align 4
  %57 = load i32, i32* @LW_EXCLUSIVE, align 4
  %58 = call i64 @LWLockConditionalAcquire(i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %50
  %61 = load i64, i64* %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i64*, i64** %10, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @TransactionIdSetPageStatusInternal(i64 %61, i32 %62, i64* %63, i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* @CLogControlLock, align 4
  %69 = call i32 @LWLockRelease(i32 %68)
  br label %93

70:                                               ; preds = %50
  %71 = load i64, i64* %8, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i64 @TransactionGroupUpdateXidStatus(i64 %71, i32 %72, i32 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %93

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79, %38, %32, %28, %22, %7
  %81 = load i32, i32* @CLogControlLock, align 4
  %82 = load i32, i32* @LW_EXCLUSIVE, align 4
  %83 = call i32 @LWLockAcquire(i32 %81, i32 %82)
  %84 = load i64, i64* %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i64*, i64** %10, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @TransactionIdSetPageStatusInternal(i64 %84, i32 %85, i64* %86, i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* @CLogControlLock, align 4
  %92 = call i32 @LWLockRelease(i32 %91)
  br label %93

93:                                               ; preds = %80, %77, %60
  ret void
}

declare dso_local i32 @StaticAssertStmt(i32, i8*) #1

declare dso_local i64 @memcmp(i64*, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @LWLockConditionalAcquire(i32, i32) #1

declare dso_local i32 @TransactionIdSetPageStatusInternal(i64, i32, i64*, i32, i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i64 @TransactionGroupUpdateXidStatus(i64, i32, i32, i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lwlock.c_LWLockConditionalAcquire.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lwlock.c_LWLockConditionalAcquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }

@LW_SHARED = common dso_local global i64 0, align 8
@LW_EXCLUSIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"LWLockConditionalAcquire\00", align 1
@num_held_lwlocks = common dso_local global i64 0, align 8
@MAX_SIMUL_LWLOCKS = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"too many LWLocks taken\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@held_lwlocks = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LWLockConditionalAcquire(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @LW_SHARED, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @LW_EXCLUSIVE, align 8
  %12 = icmp eq i64 %10, %11
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i1 [ true, %2 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @AssertArg(i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @PRINT_LWDEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %17, i64 %18)
  %20 = load i64, i64* @num_held_lwlocks, align 8
  %21 = load i64, i64* @MAX_SIMUL_LWLOCKS, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = load i32, i32* @ERROR, align 4
  %25 = call i32 @elog(i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %13
  %27 = call i32 (...) @HOLD_INTERRUPTS()
  %28 = load i32*, i32** %3, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @LWLockAttemptLock(i32* %28, i64 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = call i32 (...) @RESUME_INTERRUPTS()
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @LOG_LWDEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @T_NAME(i32* %37)
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @TRACE_POSTGRESQL_LWLOCK_CONDACQUIRE_FAIL(i32 %38, i64 %39)
  br label %57

41:                                               ; preds = %26
  %42 = load i32*, i32** %3, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @held_lwlocks, align 8
  %44 = load i64, i64* @num_held_lwlocks, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32* %42, i32** %46, align 8
  %47 = load i64, i64* %4, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @held_lwlocks, align 8
  %49 = load i64, i64* @num_held_lwlocks, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* @num_held_lwlocks, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %49
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i64 %47, i64* %52, align 8
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @T_NAME(i32* %53)
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @TRACE_POSTGRESQL_LWLOCK_CONDACQUIRE(i32 %54, i64 %55)
  br label %57

57:                                               ; preds = %41, %33
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  ret i32 %61
}

declare dso_local i32 @AssertArg(i32) #1

declare dso_local i32 @PRINT_LWDEBUG(i8*, i32*, i64) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @HOLD_INTERRUPTS(...) #1

declare dso_local i32 @LWLockAttemptLock(i32*, i64) #1

declare dso_local i32 @RESUME_INTERRUPTS(...) #1

declare dso_local i32 @LOG_LWDEBUG(i8*, i32*, i8*) #1

declare dso_local i32 @TRACE_POSTGRESQL_LWLOCK_CONDACQUIRE_FAIL(i32, i64) #1

declare dso_local i32 @T_NAME(i32*) #1

declare dso_local i32 @TRACE_POSTGRESQL_LWLOCK_CONDACQUIRE(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

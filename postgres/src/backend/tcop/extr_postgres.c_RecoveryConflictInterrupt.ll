; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_RecoveryConflictInterrupt.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_RecoveryConflictInterrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@errno = common dso_local global i32 0, align 4
@proc_exit_inprogress = common dso_local global i32 0, align 4
@RecoveryConflictReason = common dso_local global i32 0, align 4
@MyProc = common dso_local global %struct.TYPE_2__* null, align 8
@RecoveryConflictPending = common dso_local global i32 0, align 4
@QueryCancelPending = common dso_local global i32 0, align 4
@InterruptPending = common dso_local global i32 0, align 4
@ProcDiePending = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unrecognized conflict mode: %d\00", align 1
@RecoveryConflictRetryable = common dso_local global i32 0, align 4
@MyLatch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RecoveryConflictInterrupt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @errno, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* @proc_exit_inprogress, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %59, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  store i32 %8, i32* @RecoveryConflictReason, align 4
  %9 = load i32, i32* %2, align 4
  switch i32 %9, label %36 [
    i32 129, label %10
    i32 133, label %15
    i32 131, label %22
    i32 128, label %22
    i32 130, label %22
    i32 132, label %35
  ]

10:                                               ; preds = %7
  %11 = call i32 (...) @IsWaitingForLock()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  br label %63

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %7, %14
  %16 = call i32 (...) @HoldingBufferPinThatDelaysRecovery()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  br label %63

19:                                               ; preds = %15
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MyProc, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  br label %22

22:                                               ; preds = %7, %7, %7, %19
  %23 = call i32 (...) @IsTransactionOrTransactionBlock()
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  br label %63

26:                                               ; preds = %22
  %27 = call i32 (...) @IsSubTransaction()
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = call i32 (...) @IsAbortedTransactionBlockState()
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %63

33:                                               ; preds = %29
  store i32 1, i32* @RecoveryConflictPending, align 4
  store i32 1, i32* @QueryCancelPending, align 4
  store i32 1, i32* @InterruptPending, align 4
  br label %40

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %7, %34
  store i32 1, i32* @RecoveryConflictPending, align 4
  store i32 1, i32* @ProcDiePending, align 4
  store i32 1, i32* @InterruptPending, align 4
  br label %40

36:                                               ; preds = %7
  %37 = load i32, i32* @FATAL, align 4
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @elog(i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %36, %35, %33
  %41 = load i32, i32* @RecoveryConflictPending, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load i32, i32* @QueryCancelPending, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @ProcDiePending, align 4
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi i1 [ true, %43 ], [ %48, %46 ]
  br label %51

51:                                               ; preds = %49, %40
  %52 = phi i1 [ false, %40 ], [ %50, %49 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @Assert(i32 %53)
  %55 = load i32, i32* %2, align 4
  %56 = icmp eq i32 %55, 132
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 0, i32* @RecoveryConflictRetryable, align 4
  br label %58

58:                                               ; preds = %57, %51
  br label %59

59:                                               ; preds = %58, %1
  %60 = load i32, i32* @MyLatch, align 4
  %61 = call i32 @SetLatch(i32 %60)
  %62 = load i32, i32* %3, align 4
  store i32 %62, i32* @errno, align 4
  br label %63

63:                                               ; preds = %59, %32, %25, %18, %13
  ret void
}

declare dso_local i32 @IsWaitingForLock(...) #1

declare dso_local i32 @HoldingBufferPinThatDelaysRecovery(...) #1

declare dso_local i32 @IsTransactionOrTransactionBlock(...) #1

declare dso_local i32 @IsSubTransaction(...) #1

declare dso_local i32 @IsAbortedTransactionBlockState(...) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @SetLatch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

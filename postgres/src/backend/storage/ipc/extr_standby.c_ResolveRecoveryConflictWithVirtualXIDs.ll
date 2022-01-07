; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_standby.c_ResolveRecoveryConflictWithVirtualXIDs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_standby.c_ResolveRecoveryConflictWithVirtualXIDs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STANDBY_INITIAL_WAIT_US = common dso_local global i32 0, align 4
@standbyWait_us = common dso_local global i32 0, align 4
@update_process_title = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c" waiting\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @ResolveRecoveryConflictWithVirtualXIDs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ResolveRecoveryConflictWithVirtualXIDs(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @VirtualTransactionIdIsValid(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %92

15:                                               ; preds = %2
  %16 = call i32 (...) @GetCurrentTimestamp()
  store i32 %16, i32* %5, align 4
  store i8* null, i8** %6, align 8
  br label %17

17:                                               ; preds = %81, %15
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @VirtualTransactionIdIsValid(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %84

22:                                               ; preds = %17
  %23 = load i32, i32* @STANDBY_INITIAL_WAIT_US, align 4
  store i32 %23, i32* @standbyWait_us, align 4
  br label %24

24:                                               ; preds = %80, %22
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @VirtualXactLock(i32 %26, i32 0)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %81

30:                                               ; preds = %24
  %31 = load i64, i64* @update_process_title, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %63

33:                                               ; preds = %30
  %34 = load i8*, i8** %6, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %63

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = call i32 (...) @GetCurrentTimestamp()
  %39 = call i64 @TimestampDifferenceExceeds(i32 %37, i32 %38, i32 500)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %36
  %42 = call i8* @get_ps_display(i32* %8)
  store i8* %42, i8** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 8
  %45 = add nsw i32 %44, 1
  %46 = call i64 @palloc(i32 %45)
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %6, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @memcpy(i8* %48, i8* %49, i32 %50)
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = call i32 @strcpy(i8* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @set_ps_display(i8* %57, i32 0)
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8 0, i8* %62, align 1
  br label %63

63:                                               ; preds = %41, %36, %33, %30
  %64 = call i64 (...) @WaitExceedsMaxStandbyDelay()
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %63
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @VirtualTransactionIdIsValid(i32 %68)
  %70 = call i32 @Assert(i64 %69)
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i64 @CancelVirtualTransaction(i32 %72, i32 %73)
  store i64 %74, i64* %9, align 8
  %75 = load i64, i64* %9, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %66
  %78 = call i32 @pg_usleep(i64 5000)
  br label %79

79:                                               ; preds = %77, %66
  br label %80

80:                                               ; preds = %79, %63
  br label %24

81:                                               ; preds = %24
  %82 = load i32*, i32** %3, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %3, align 8
  br label %17

84:                                               ; preds = %17
  %85 = load i8*, i8** %6, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 @set_ps_display(i8* %88, i32 0)
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @pfree(i8* %90)
  br label %92

92:                                               ; preds = %14, %87, %84
  ret void
}

declare dso_local i64 @VirtualTransactionIdIsValid(i32) #1

declare dso_local i32 @GetCurrentTimestamp(...) #1

declare dso_local i32 @VirtualXactLock(i32, i32) #1

declare dso_local i64 @TimestampDifferenceExceeds(i32, i32, i32) #1

declare dso_local i8* @get_ps_display(i32*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @set_ps_display(i8*, i32) #1

declare dso_local i64 @WaitExceedsMaxStandbyDelay(...) #1

declare dso_local i32 @Assert(i64) #1

declare dso_local i64 @CancelVirtualTransaction(i32, i32) #1

declare dso_local i32 @pg_usleep(i64) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

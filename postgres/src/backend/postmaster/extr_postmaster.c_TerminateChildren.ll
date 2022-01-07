; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_postmaster.c_TerminateChildren.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_postmaster.c_TerminateChildren.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@StartupPID = common dso_local global i64 0, align 8
@SIGQUIT = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@STARTUP_SIGNALED = common dso_local global i32 0, align 4
@StartupStatus = common dso_local global i32 0, align 4
@BgWriterPID = common dso_local global i64 0, align 8
@CheckpointerPID = common dso_local global i64 0, align 8
@WalWriterPID = common dso_local global i64 0, align 8
@WalReceiverPID = common dso_local global i64 0, align 8
@AutoVacPID = common dso_local global i64 0, align 8
@PgArchPID = common dso_local global i64 0, align 8
@PgStatPID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @TerminateChildren to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TerminateChildren(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @SignalChildren(i32 %3)
  %5 = load i64, i64* @StartupPID, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = load i64, i64* @StartupPID, align 8
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @signal_child(i64 %8, i32 %9)
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @SIGQUIT, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %7
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @SIGKILL, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %7
  %19 = load i32, i32* @STARTUP_SIGNALED, align 4
  store i32 %19, i32* @StartupStatus, align 4
  br label %20

20:                                               ; preds = %18, %14
  br label %21

21:                                               ; preds = %20, %1
  %22 = load i64, i64* @BgWriterPID, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i64, i64* @BgWriterPID, align 8
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @signal_child(i64 %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %21
  %29 = load i64, i64* @CheckpointerPID, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i64, i64* @CheckpointerPID, align 8
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @signal_child(i64 %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %28
  %36 = load i64, i64* @WalWriterPID, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i64, i64* @WalWriterPID, align 8
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @signal_child(i64 %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i64, i64* @WalReceiverPID, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i64, i64* @WalReceiverPID, align 8
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @signal_child(i64 %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %42
  %50 = load i64, i64* @AutoVacPID, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i64, i64* @AutoVacPID, align 8
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @signal_child(i64 %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %49
  %57 = load i64, i64* @PgArchPID, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i64, i64* @PgArchPID, align 8
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @signal_child(i64 %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %56
  %64 = load i64, i64* @PgStatPID, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i64, i64* @PgStatPID, align 8
  %68 = load i32, i32* %2, align 4
  %69 = call i32 @signal_child(i64 %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %63
  ret void
}

declare dso_local i32 @SignalChildren(i32) #1

declare dso_local i32 @signal_child(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

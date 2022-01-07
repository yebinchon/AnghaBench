; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_postmaster.c_canAcceptConnections.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_postmaster.c_canAcceptConnections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CAC_OK = common dso_local global i32 0, align 4
@pmState = common dso_local global i64 0, align 8
@PM_RUN = common dso_local global i64 0, align 8
@BACKEND_TYPE_BGWORKER = common dso_local global i32 0, align 4
@PM_WAIT_BACKUP = common dso_local global i64 0, align 8
@CAC_WAITBACKUP = common dso_local global i32 0, align 4
@Shutdown = common dso_local global i64 0, align 8
@NoShutdown = common dso_local global i64 0, align 8
@CAC_SHUTDOWN = common dso_local global i32 0, align 4
@FatalError = common dso_local global i32 0, align 4
@PM_STARTUP = common dso_local global i64 0, align 8
@PM_RECOVERY = common dso_local global i64 0, align 8
@CAC_STARTUP = common dso_local global i32 0, align 4
@PM_HOT_STANDBY = common dso_local global i64 0, align 8
@CAC_RECOVERY = common dso_local global i32 0, align 4
@BACKEND_TYPE_ALL = common dso_local global i32 0, align 4
@CAC_TOOMANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @canAcceptConnections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @canAcceptConnections(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @CAC_OK, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i64, i64* @pmState, align 8
  %7 = load i64, i64* @PM_RUN, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %53

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @BACKEND_TYPE_BGWORKER, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %53

13:                                               ; preds = %9
  %14 = load i64, i64* @pmState, align 8
  %15 = load i64, i64* @PM_WAIT_BACKUP, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @CAC_WAITBACKUP, align 4
  store i32 %18, i32* %4, align 4
  br label %52

19:                                               ; preds = %13
  %20 = load i64, i64* @Shutdown, align 8
  %21 = load i64, i64* @NoShutdown, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @CAC_SHUTDOWN, align 4
  store i32 %24, i32* %2, align 4
  br label %62

25:                                               ; preds = %19
  %26 = load i32, i32* @FatalError, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* @pmState, align 8
  %30 = load i64, i64* @PM_STARTUP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* @pmState, align 8
  %34 = load i64, i64* @PM_RECOVERY, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32, %28
  %37 = load i32, i32* @CAC_STARTUP, align 4
  store i32 %37, i32* %2, align 4
  br label %62

38:                                               ; preds = %32, %25
  %39 = load i32, i32* @FatalError, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load i64, i64* @pmState, align 8
  %43 = load i64, i64* @PM_HOT_STANDBY, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @CAC_OK, align 4
  store i32 %46, i32* %4, align 4
  br label %49

47:                                               ; preds = %41, %38
  %48 = load i32, i32* @CAC_RECOVERY, align 4
  store i32 %48, i32* %2, align 4
  br label %62

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51, %17
  br label %53

53:                                               ; preds = %52, %9, %1
  %54 = load i32, i32* @BACKEND_TYPE_ALL, align 4
  %55 = call i64 @CountChildren(i32 %54)
  %56 = call i64 (...) @MaxLivePostmasterChildren()
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @CAC_TOOMANY, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %58, %53
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %47, %36, %23
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @CountChildren(i32) #1

declare dso_local i64 @MaxLivePostmasterChildren(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

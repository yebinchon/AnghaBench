; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_timeout.c_InitializeTimeouts.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_timeout.c_InitializeTimeouts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64, i64, i32* }

@num_active_timeouts = common dso_local global i64 0, align 8
@MAX_TIMEOUTS = common dso_local global i32 0, align 4
@all_timeouts = common dso_local global %struct.TYPE_2__* null, align 8
@all_timeouts_initialized = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@handle_sig_alarm = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitializeTimeouts() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @disable_alarm()
  store i64 0, i64* @num_active_timeouts, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %39, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @MAX_TIMEOUTS, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %42

7:                                                ; preds = %3
  %8 = load i32, i32* %1, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @all_timeouts, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 %8, i32* %13, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @all_timeouts, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @all_timeouts, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32 0, i32* %23, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @all_timeouts, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 5
  store i32* null, i32** %28, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @all_timeouts, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @all_timeouts, align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %7
  %40 = load i32, i32* %1, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %1, align 4
  br label %3

42:                                               ; preds = %3
  store i32 1, i32* @all_timeouts_initialized, align 4
  %43 = load i32, i32* @SIGALRM, align 4
  %44 = load i32, i32* @handle_sig_alarm, align 4
  %45 = call i32 @pqsignal(i32 %43, i32 %44)
  ret void
}

declare dso_local i32 @disable_alarm(...) #1

declare dso_local i32 @pqsignal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

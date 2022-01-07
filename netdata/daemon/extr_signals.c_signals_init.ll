; ModuleID = '/home/carl/AnghaBench/netdata/daemon/extr_signals.c_signals_init.c'
source_filename = "/home/carl/AnghaBench/netdata/daemon/extr_signals.c_signals_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.sigaction = type { i32, i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"SIGNAL: Enabling reaper\00", align 1
@reaper_enabled = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"SIGNAL: Not enabling reaper\00", align 1
@signals_waiting = common dso_local global %struct.TYPE_2__* null, align 8
@NETDATA_SIGNAL_END_OF_LIST = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@signal_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"SIGNAL: Failed to change signal handler for: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @signals_init() #0 {
  %1 = alloca %struct.sigaction, align 8
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 2
  store i64 0, i64* %3, align 8
  %4 = call i32 (...) @getpid()
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = call i32 @info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 (...) @myp_init()
  store i32 1, i32* @reaper_enabled, align 4
  br label %11

9:                                                ; preds = %0
  %10 = call i32 @info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %6
  %12 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 1
  %13 = call i32 @sigfillset(i32* %12)
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %59, %11
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @signals_waiting, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @NETDATA_SIGNAL_END_OF_LIST, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %62

23:                                               ; preds = %14
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @signals_waiting, align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %38 [
    i32 128, label %30
    i32 129, label %33
  ]

30:                                               ; preds = %23
  %31 = load i32, i32* @SIG_IGN, align 4
  %32 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  br label %41

33:                                               ; preds = %23
  %34 = load i32, i32* @reaper_enabled, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %59

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %23, %37
  %39 = load i32, i32* @signal_handler, align 4
  %40 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  br label %41

41:                                               ; preds = %38, %30
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @signals_waiting, align 8
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @sigaction(i32 %47, %struct.sigaction* %1, i32* null)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %58

50:                                               ; preds = %41
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @signals_waiting, align 8
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %50, %41
  br label %59

59:                                               ; preds = %58, %36
  %60 = load i32, i32* %2, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %2, align 4
  br label %14

62:                                               ; preds = %14
  ret void
}

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @info(i8*) #1

declare dso_local i32 @myp_init(...) #1

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

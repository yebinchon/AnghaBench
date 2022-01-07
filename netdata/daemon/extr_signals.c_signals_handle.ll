; ModuleID = '/home/carl/AnghaBench/netdata/daemon/extr_signals.c_signals_handle.c'
source_filename = "/home/carl/AnghaBench/netdata/daemon/extr_signals.c_signals_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i64 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@signals_waiting = common dso_local global %struct.TYPE_2__* null, align 8
@NETDATA_SIGNAL_END_OF_LIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"SIGNAL: Received %s. Reloading HEALTH configuration...\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"SIGNAL: Received %s. Saving databases...\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Databases saved.\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"SIGNAL: Received %s. Reopening all log files...\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"SIGNAL: Received %s. Cleaning up to exit...\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"SIGNAL: Received %s. netdata now exits.\00", align 1
@D_CHILDS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"SIGNAL: Received %s. Reaping...\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"SIGNAL: Received %s. No signal handler configured. Ignoring it.\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"SIGNAL: pause() returned but it was not interrupted by a signal.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @signals_handle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  br label %4

4:                                                ; preds = %0, %96
  %5 = call i32 (...) @pause()
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %94

7:                                                ; preds = %4
  %8 = load i64, i64* @errno, align 8
  %9 = load i64, i64* @EINTR, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %94

11:                                               ; preds = %7
  store i32 1, i32* %1, align 4
  br label %12

12:                                               ; preds = %92, %11
  %13 = load i32, i32* %1, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %93

15:                                               ; preds = %12
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %89, %15
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @signals_waiting, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @NETDATA_SIGNAL_END_OF_LIST, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %92

25:                                               ; preds = %16
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @signals_waiting, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %88

33:                                               ; preds = %25
  store i32 1, i32* %1, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @signals_waiting, align 8
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @signals_waiting, align 8
  %40 = load i32, i32* %2, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %3, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @signals_waiting, align 8
  %46 = load i32, i32* %2, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %84 [
    i32 129, label %51
    i32 128, label %57
    i32 130, label %64
    i32 132, label %70
    i32 131, label %76
    i32 133, label %79
  ]

51:                                               ; preds = %33
  %52 = call i32 (...) @error_log_limit_unlimited()
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %53)
  %55 = call i32 (...) @health_reload()
  %56 = call i32 (...) @error_log_limit_reset()
  br label %87

57:                                               ; preds = %33
  %58 = call i32 (...) @error_log_limit_unlimited()
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = call i32 (...) @rrdhost_save_all()
  %62 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %63 = call i32 (...) @error_log_limit_reset()
  br label %87

64:                                               ; preds = %33
  %65 = call i32 (...) @error_log_limit_unlimited()
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %66)
  %68 = call i32 (...) @reopen_all_log_files()
  %69 = call i32 (...) @error_log_limit_reset()
  br label %87

70:                                               ; preds = %33
  %71 = call i32 (...) @error_log_limit_unlimited()
  %72 = load i8*, i8** %3, align 8
  %73 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* %72)
  %74 = call i32 @netdata_cleanup_and_exit(i32 0)
  %75 = call i32 @exit(i32 0) #3
  unreachable

76:                                               ; preds = %33
  %77 = load i8*, i8** %3, align 8
  %78 = call i32 @fatal(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %33, %76
  %80 = load i32, i32* @D_CHILDS, align 4
  %81 = load i8*, i8** %3, align 8
  %82 = call i32 @debug(i32 %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %81)
  %83 = call i32 (...) @reap_children()
  br label %87

84:                                               ; preds = %33
  %85 = load i8*, i8** %3, align 8
  %86 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %84, %79, %64, %57, %51
  br label %88

88:                                               ; preds = %87, %25
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %2, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %2, align 4
  br label %16

92:                                               ; preds = %16
  br label %12

93:                                               ; preds = %12
  br label %96

94:                                               ; preds = %7, %4
  %95 = call i32 @error(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %93
  br label %4
}

declare dso_local i32 @pause(...) #1

declare dso_local i32 @error_log_limit_unlimited(...) #1

declare dso_local i32 @info(i8*, ...) #1

declare dso_local i32 @health_reload(...) #1

declare dso_local i32 @error_log_limit_reset(...) #1

declare dso_local i32 @rrdhost_save_all(...) #1

declare dso_local i32 @reopen_all_log_files(...) #1

declare dso_local i32 @netdata_cleanup_and_exit(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fatal(i8*, i8*) #1

declare dso_local i32 @debug(i32, i8*, i8*) #1

declare dso_local i32 @reap_children(...) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

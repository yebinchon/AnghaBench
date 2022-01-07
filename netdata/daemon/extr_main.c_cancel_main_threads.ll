; ModuleID = '/home/carl/AnghaBench/netdata/daemon/extr_main.c_cancel_main_threads.c'
source_filename = "/home/carl/AnghaBench/netdata/daemon/extr_main.c_cancel_main_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32*, i32* }

@USEC_PER_SEC = common dso_local global i32 0, align 4
@static_threads = common dso_local global %struct.TYPE_2__* null, align 8
@NETDATA_MAIN_THREAD_RUNNING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"EXIT: Stopping master thread: %s\00", align 1
@netdata_exit = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Waiting %d threads to finish...\00", align 1
@NETDATA_MAIN_THREAD_EXITED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [54 x i8] c"Master thread %s takes too long to exit. Giving up...\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"All threads finished.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cancel_main_threads() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = call i32 (...) @error_log_limit_unlimited()
  store i32 0, i32* %2, align 4
  %6 = load i32, i32* @USEC_PER_SEC, align 4
  %7 = mul nsw i32 5, %6
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %3, align 8
  store i64 100000, i64* %4, align 8
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %45, %0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @static_threads, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %48

17:                                               ; preds = %9
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @static_threads, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NETDATA_MAIN_THREAD_RUNNING, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %17
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @static_threads, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32* %32)
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @static_threads, align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @netdata_thread_cancel(i32 %40)
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %26, %17
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %1, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %1, align 4
  br label %9

48:                                               ; preds = %9
  store i32 1, i32* @netdata_exit, align 4
  br label %49

49:                                               ; preds = %89, %48
  %50 = load i32, i32* %2, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i64, i64* %3, align 8
  %54 = icmp sgt i64 %53, 0
  br label %55

55:                                               ; preds = %52, %49
  %56 = phi i1 [ false, %49 ], [ %54, %52 ]
  br i1 %56, label %57, label %90

57:                                               ; preds = %55
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* %3, align 8
  %60 = sub nsw i64 %59, %58
  store i64 %60, i64* %3, align 8
  %61 = load i32, i32* %2, align 4
  %62 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @sleep_usec(i64 %63)
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %65

65:                                               ; preds = %86, %57
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @static_threads, align 8
  %67 = load i32, i32* %1, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %89

73:                                               ; preds = %65
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @static_threads, align 8
  %75 = load i32, i32* %1, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @NETDATA_MAIN_THREAD_EXITED, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %73
  %83 = load i32, i32* %2, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %82, %73
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %1, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %1, align 4
  br label %65

89:                                               ; preds = %65
  br label %49

90:                                               ; preds = %55
  %91 = load i32, i32* %2, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %124

93:                                               ; preds = %90
  store i32 0, i32* %1, align 4
  br label %94

94:                                               ; preds = %120, %93
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @static_threads, align 8
  %96 = load i32, i32* %1, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %123

102:                                              ; preds = %94
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @static_threads, align 8
  %104 = load i32, i32* %1, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @NETDATA_MAIN_THREAD_EXITED, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %102
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @static_threads, align 8
  %113 = load i32, i32* %1, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32* %117)
  br label %119

119:                                              ; preds = %111, %102
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %1, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %1, align 4
  br label %94

123:                                              ; preds = %94
  br label %126

124:                                              ; preds = %90
  %125 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %123
  ret void
}

declare dso_local i32 @error_log_limit_unlimited(...) #1

declare dso_local i32 @info(i8*, ...) #1

declare dso_local i32 @netdata_thread_cancel(i32) #1

declare dso_local i32 @sleep_usec(i64) #1

declare dso_local i32 @error(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

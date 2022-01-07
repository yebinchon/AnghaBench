; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_once4.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_once4.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@NUM_THREADS = common dso_local global i32 0, align 4
@NUM_ONCE = common dso_local global i32 0, align 4
@print_lock = common dso_local global i32 0, align 4
@numThreads = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@numOnce = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@REALTIME_PRIORITY_CLASS = common dso_local global i32 0, align 4
@o = common dso_local global i32 0, align 4
@once = common dso_local global i32* null, align 8
@threadbag = common dso_local global %struct.TYPE_5__** null, align 8
@mythread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Join failed for [thread,once] = [%d,%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  store i32 0, i32* %1, align 4
  %8 = load i32, i32* @NUM_THREADS, align 4
  %9 = zext i32 %8 to i64
  %10 = load i32, i32* @NUM_ONCE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %2, align 8
  %13 = mul nuw i64 %9, %11
  %14 = alloca i32, i64 %13, align 16
  store i64 %9, i64* %3, align 8
  store i64 %11, i64* %4, align 8
  %15 = call i32 @InitializeCriticalSection(i32* @print_lock)
  %16 = call i32 @InitializeCriticalSection(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @numThreads, i32 0, i32 0))
  %17 = call i32 @InitializeCriticalSection(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @numOnce, i32 0, i32 1))
  %18 = call i32 (...) @GetCurrentProcess()
  %19 = load i32, i32* @REALTIME_PRIORITY_CLASS, align 4
  %20 = call i32 @SetPriorityClass(i32 %18, i32 %19)
  %21 = call i32 (...) @GetCurrentThread()
  %22 = call i32 @SetThreadPriority(i32 %21, i32 -2)
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %72, %0
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @NUM_ONCE, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %75

27:                                               ; preds = %23
  %28 = load i32, i32* @o, align 4
  %29 = load i32*, i32** @once, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %28, i32* %32, align 4
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %68, %27
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @NUM_THREADS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %71

37:                                               ; preds = %33
  %38 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @threadbag, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %38, i64 %40
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %44
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %7, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %65, %37
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = mul nsw i64 %54, %11
  %56 = getelementptr inbounds i32, i32* %14, i64 %55
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* @mythread, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %62 = bitcast %struct.TYPE_5__* %61 to i8*
  %63 = call i64 @pthread_create(i32* %59, i32* null, i32 %60, i8* %62)
  %64 = icmp ne i64 0, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %52
  %66 = call i32 (...) @sched_yield()
  br label %52

67:                                               ; preds = %52
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %33

71:                                               ; preds = %33
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %23

75:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %105, %75
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @NUM_ONCE, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %108

80:                                               ; preds = %76
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %101, %80
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @NUM_THREADS, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %104

85:                                               ; preds = %81
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = mul nsw i64 %87, %11
  %89 = getelementptr inbounds i32, i32* %14, i64 %88
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @pthread_join(i32 %93, i32* null)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %85
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %85
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %81

104:                                              ; preds = %81
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %76

108:                                              ; preds = %76
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @numOnce, i32 0, i32 0), align 4
  %110 = load i32, i32* @NUM_ONCE, align 4
  %111 = load i32, i32* @NUM_THREADS, align 4
  %112 = mul nsw i32 %110, %111
  %113 = icmp eq i32 %109, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @numThreads, i32 0, i32 1), align 4
  %117 = icmp eq i32 %116, 0
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  %120 = call i32 @DeleteCriticalSection(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @numOnce, i32 0, i32 1))
  %121 = call i32 @DeleteCriticalSection(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @numThreads, i32 0, i32 0))
  %122 = call i32 @DeleteCriticalSection(i32* @print_lock)
  store i32 0, i32* %1, align 4
  %123 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %123)
  %124 = load i32, i32* %1, align 4
  ret i32 %124
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @InitializeCriticalSection(i32*) #2

declare dso_local i32 @SetPriorityClass(i32, i32) #2

declare dso_local i32 @GetCurrentProcess(...) #2

declare dso_local i32 @SetThreadPriority(i32, i32) #2

declare dso_local i32 @GetCurrentThread(...) #2

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i8*) #2

declare dso_local i32 @sched_yield(...) #2

declare dso_local i64 @pthread_join(i32, i32*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @DeleteCriticalSection(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}

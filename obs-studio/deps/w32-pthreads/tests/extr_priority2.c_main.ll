; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_priority2.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_priority2.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_param = type { i32 }

@SCHED_OTHER = common dso_local global i32 0, align 4
@maxPrio = common dso_local global i32 0, align 4
@minPrio = common dso_local global i32 0, align 4
@getValidPriorities = common dso_local global i32 0, align 4
@startBarrier = common dso_local global i32 0, align 4
@endBarrier = common dso_local global i32 0, align 4
@PTW32TEST_THREAD_INIT_PRIO = common dso_local global i32 0, align 4
@func = common dso_local global i32 0, align 4
@PTHREAD_BARRIER_SERIAL_THREAD = common dso_local global i32 0, align 4
@validPriorities = common dso_local global i64* null, align 8
@PTW32TEST_MAXPRIORITIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sched_param, align 4
  store i32 0, i32* %1, align 4
  store i8* null, i8** %3, align 8
  %6 = load i32, i32* @SCHED_OTHER, align 4
  %7 = call i32 @sched_get_priority_max(i32 %6)
  store i32 %7, i32* @maxPrio, align 4
  %8 = icmp ne i32 %7, -1
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i32, i32* @SCHED_OTHER, align 4
  %12 = call i32 @sched_get_priority_min(i32 %11)
  store i32 %12, i32* @minPrio, align 4
  %13 = icmp ne i32 %12, -1
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* @getValidPriorities, align 4
  %17 = call i64 @pthread_create(i32* %2, i32* null, i32 %16, i32* null)
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = call i64 @pthread_join(i32 %21, i8** %3)
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = call i64 @pthread_barrier_init(i32* @startBarrier, i32* null, i32 2)
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = call i64 @pthread_barrier_init(i32* @endBarrier, i32* null, i32 2)
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = call i32 (...) @pthread_self()
  %35 = call i32 @pthread_getw32threadhandle_np(i32 %34)
  %36 = load i32, i32* @PTW32TEST_THREAD_INIT_PRIO, align 4
  %37 = call i32 @SetThreadPriority(i32 %35, i32 %36)
  %38 = load i32, i32* @minPrio, align 4
  %39 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %5, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %104, %0
  %41 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %5, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @maxPrio, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %108

45:                                               ; preds = %40
  %46 = load i32, i32* @func, align 4
  %47 = call i64 @pthread_create(i32* %2, i32* null, i32 %46, i32* null)
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @SCHED_OTHER, align 4
  %53 = call i64 @pthread_setschedparam(i32 %51, i32 %52, %struct.sched_param* %5)
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = call i32 @pthread_barrier_wait(i32* @startBarrier)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %45
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @PTHREAD_BARRIER_SERIAL_THREAD, align 4
  %63 = icmp eq i32 %61, %62
  br label %64

64:                                               ; preds = %60, %45
  %65 = phi i1 [ true, %45 ], [ %63, %60 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = call i32 @pthread_barrier_wait(i32* @endBarrier)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %64
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @PTHREAD_BARRIER_SERIAL_THREAD, align 4
  %74 = icmp eq i32 %72, %73
  br label %75

75:                                               ; preds = %71, %64
  %76 = phi i1 [ true, %64 ], [ %74, %71 ]
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load i32, i32* %2, align 4
  %80 = call i32 @pthread_getw32threadhandle_np(i32 %79)
  %81 = call i64 @GetThreadPriority(i32 %80)
  %82 = load i64*, i64** @validPriorities, align 8
  %83 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %5, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @PTW32TEST_MAXPRIORITIES, align 4
  %86 = sdiv i32 %85, 2
  %87 = add nsw i32 %84, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %82, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %81, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load i32, i32* %2, align 4
  %95 = call i64 @pthread_join(i32 %94, i8** %3)
  %96 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %5, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i8*, i8** %3, align 8
  %99 = ptrtoint i8* %98 to i64
  %100 = trunc i64 %99 to i32
  %101 = icmp eq i32 %97, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  br label %104

104:                                              ; preds = %75
  %105 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %5, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  br label %40

108:                                              ; preds = %40
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sched_get_priority_max(i32) #1

declare dso_local i32 @sched_get_priority_min(i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i64 @pthread_join(i32, i8**) #1

declare dso_local i64 @pthread_barrier_init(i32*, i32*, i32) #1

declare dso_local i32 @SetThreadPriority(i32, i32) #1

declare dso_local i32 @pthread_getw32threadhandle_np(i32) #1

declare dso_local i32 @pthread_self(...) #1

declare dso_local i64 @pthread_setschedparam(i32, i32, %struct.sched_param*) #1

declare dso_local i32 @pthread_barrier_wait(i32*) #1

declare dso_local i64 @GetThreadPriority(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}

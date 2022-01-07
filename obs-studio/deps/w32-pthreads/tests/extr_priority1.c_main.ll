; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_priority1.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_priority1.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_param = type { i32 }

@SCHED_OTHER = common dso_local global i32 0, align 4
@maxPrio = common dso_local global i32 0, align 4
@minPrio = common dso_local global i32 0, align 4
@getValidPriorities = common dso_local global i32 0, align 4
@PTHREAD_EXPLICIT_SCHED = common dso_local global i32 0, align 4
@PTW32TEST_THREAD_INIT_PRIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Using pthread_getschedparam\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%10s %10s %10s\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Set value\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Get value\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Win priority\00", align 1
@func = common dso_local global i32 0, align 4
@validPriorities = common dso_local global i32* null, align 8
@PTW32TEST_MAXPRIORITIES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"%10d %10d %10d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sched_param, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i8* null, i8** %4, align 8
  %7 = load i32, i32* @SCHED_OTHER, align 4
  %8 = call i32 @sched_get_priority_max(i32 %7)
  store i32 %8, i32* @maxPrio, align 4
  %9 = icmp ne i32 %8, -1
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i32, i32* @SCHED_OTHER, align 4
  %13 = call i32 @sched_get_priority_min(i32 %12)
  store i32 %13, i32* @minPrio, align 4
  %14 = icmp ne i32 %13, -1
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* @getValidPriorities, align 4
  %18 = call i64 @pthread_create(i32* %2, i32* null, i32 %17, i8* null)
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* %2, align 4
  %23 = call i64 @pthread_join(i32 %22, i8** %4)
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = call i64 @pthread_attr_init(i32* %3)
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32, i32* @PTHREAD_EXPLICIT_SCHED, align 4
  %32 = call i64 @pthread_attr_setinheritsched(i32* %3, i32 %31)
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = call i32 (...) @pthread_self()
  %37 = call i32 @pthread_getw32threadhandle_np(i32 %36)
  %38 = load i32, i32* @PTW32TEST_THREAD_INIT_PRIO, align 4
  %39 = call i32 @SetThreadPriority(i32 %37, i32 %38)
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %42 = load i32, i32* @minPrio, align 4
  %43 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %5, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %95, %0
  %45 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %5, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @maxPrio, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %99

49:                                               ; preds = %44
  %50 = call i64 @pthread_attr_setschedparam(i32* %3, %struct.sched_param* %5)
  %51 = icmp eq i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i32, i32* @func, align 4
  %55 = bitcast i32* %3 to i8*
  %56 = call i64 @pthread_create(i32* %2, i32* %3, i32 %54, i8* %55)
  %57 = icmp eq i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @pthread_getw32threadhandle_np(i32 %60)
  %62 = call i32 @GetThreadPriority(i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32*, i32** @validPriorities, align 8
  %64 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %5, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @PTW32TEST_MAXPRIORITIES, align 4
  %67 = sdiv i32 %66, 2
  %68 = add nsw i32 %65, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %63, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %62, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i32, i32* %2, align 4
  %76 = call i64 @pthread_join(i32 %75, i8** %4)
  %77 = icmp eq i64 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %5, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %4, align 8
  %83 = ptrtoint i8* %82 to i64
  %84 = trunc i64 %83 to i32
  %85 = icmp eq i32 %81, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %5, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i8*, i8** %4, align 8
  %91 = ptrtoint i8* %90 to i64
  %92 = trunc i64 %91 to i32
  %93 = load i32, i32* %6, align 4
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %89, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %49
  %96 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %5, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  br label %44

99:                                               ; preds = %44
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sched_get_priority_max(i32) #1

declare dso_local i32 @sched_get_priority_min(i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i8*) #1

declare dso_local i64 @pthread_join(i32, i8**) #1

declare dso_local i64 @pthread_attr_init(i32*) #1

declare dso_local i64 @pthread_attr_setinheritsched(i32*, i32) #1

declare dso_local i32 @SetThreadPriority(i32, i32) #1

declare dso_local i32 @pthread_getw32threadhandle_np(i32) #1

declare dso_local i32 @pthread_self(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @pthread_attr_setschedparam(i32*, %struct.sched_param*) #1

declare dso_local i32 @GetThreadPriority(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}

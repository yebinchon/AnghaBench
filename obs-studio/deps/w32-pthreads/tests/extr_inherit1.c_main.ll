; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_inherit1.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_inherit1.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_param = type { i32 }

@SCHED_OTHER = common dso_local global i32 0, align 4
@maxPrio = common dso_local global i32 0, align 4
@minPrio = common dso_local global i32 0, align 4
@getValidPriorities = common dso_local global i32 0, align 4
@PTHREAD_INHERIT_SCHED = common dso_local global i32 0, align 4
@PTW32TEST_THREAD_INIT_PRIO = common dso_local global i32 0, align 4
@validPriorities = common dso_local global i64* null, align 8
@PTW32TEST_MAXPRIORITIES = common dso_local global i32 0, align 4
@func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sched_param, align 4
  %7 = alloca %struct.sched_param, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %13 = call i32 (...) @pthread_self()
  store i32 %13, i32* %3, align 4
  store i8* null, i8** %5, align 8
  store i32 -1, i32* %10, align 4
  %14 = call i32 (...) @pthread_self()
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = call i32 @pthread_getw32threadhandle_np(i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* @SCHED_OTHER, align 4
  %18 = call i32 @sched_get_priority_max(i32 %17)
  store i32 %18, i32* @maxPrio, align 4
  %19 = icmp ne i32 %18, -1
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* @SCHED_OTHER, align 4
  %23 = call i32 @sched_get_priority_min(i32 %22)
  store i32 %23, i32* @minPrio, align 4
  %24 = icmp ne i32 %23, -1
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* @getValidPriorities, align 4
  %28 = call i64 @pthread_create(i32* %2, i32* null, i32 %27, i32* null)
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* %2, align 4
  %33 = call i64 @pthread_join(i32 %32, i8** %5)
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = call i64 @pthread_attr_init(i32* %4)
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i32, i32* @PTHREAD_INHERIT_SCHED, align 4
  %42 = call i64 @pthread_attr_setinheritsched(i32* %4, i32 %41)
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = call i64 @pthread_attr_getinheritsched(i32* %4, i32* %10)
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @PTHREAD_INHERIT_SCHED, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i32, i32* @minPrio, align 4
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %133, %0
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @maxPrio, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %136

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %7, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @PTW32TEST_THREAD_INIT_PRIO, align 4
  %65 = call i32 @SetThreadPriority(i32 %63, i32 %64)
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @SCHED_OTHER, align 4
  %68 = call i64 @pthread_setschedparam(i32 %66, i32 %67, %struct.sched_param* %7)
  %69 = icmp eq i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load i32, i32* %3, align 4
  %73 = call i64 @pthread_getschedparam(i32 %72, i32* %9, %struct.sched_param* %7)
  %74 = icmp eq i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @SCHED_OTHER, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %7, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp eq i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load i32, i32* %12, align 4
  %89 = call i64 @GetThreadPriority(i32 %88)
  %90 = load i64*, i64** @validPriorities, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @PTW32TEST_MAXPRIORITIES, align 4
  %93 = sdiv i32 %92, 2
  %94 = add nsw i32 %91, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %90, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %89, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  %101 = load i32, i32* %8, align 4
  %102 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %6, i32 0, i32 0
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %128, %60
  %104 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %6, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @maxPrio, align 4
  %107 = icmp sle i32 %105, %106
  br i1 %107, label %108, label %132

108:                                              ; preds = %103
  %109 = call i64 @pthread_attr_setschedparam(i32* %4, %struct.sched_param* %6)
  %110 = icmp eq i64 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  %113 = load i32, i32* @func, align 4
  %114 = call i64 @pthread_create(i32* %2, i32* %4, i32 %113, i32* null)
  %115 = icmp eq i64 %114, 0
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  %118 = load i32, i32* %2, align 4
  %119 = call i64 @pthread_join(i32 %118, i8** %5)
  %120 = load i8*, i8** %5, align 8
  %121 = ptrtoint i8* %120 to i64
  %122 = trunc i64 %121 to i32
  %123 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %7, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %122, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert(i32 %126)
  br label %128

128:                                              ; preds = %108
  %129 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %6, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  br label %103

132:                                              ; preds = %103
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %56

136:                                              ; preds = %56
  ret i32 0
}

declare dso_local i32 @pthread_self(...) #1

declare dso_local i32 @pthread_getw32threadhandle_np(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sched_get_priority_max(i32) #1

declare dso_local i32 @sched_get_priority_min(i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i64 @pthread_join(i32, i8**) #1

declare dso_local i64 @pthread_attr_init(i32*) #1

declare dso_local i64 @pthread_attr_setinheritsched(i32*, i32) #1

declare dso_local i64 @pthread_attr_getinheritsched(i32*, i32*) #1

declare dso_local i32 @SetThreadPriority(i32, i32) #1

declare dso_local i64 @pthread_setschedparam(i32, i32, %struct.sched_param*) #1

declare dso_local i64 @pthread_getschedparam(i32, i32*, %struct.sched_param*) #1

declare dso_local i64 @GetThreadPriority(i32) #1

declare dso_local i64 @pthread_attr_setschedparam(i32*, %struct.sched_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}

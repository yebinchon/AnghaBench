; ModuleID = '/home/carl/AnghaBench/memcached/extr_thread.c_pause_threads.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_thread.c_pause_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@worker_hang_lock = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unknown lock type: %d\0A\00", align 1
@init_lock = common dso_local global i32 0, align 4
@init_count = common dso_local global i64 0, align 8
@settings = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@threads = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed writing to notify pipe\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pause_threads(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1 x i8], align 1
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = getelementptr inbounds [1 x i8], [1 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %5, align 1
  %6 = load i32, i32* %2, align 4
  switch i32 %6, label %20 [
    i32 131, label %7
    i32 130, label %11
    i32 129, label %14
    i32 128, label %18
  ]

7:                                                ; preds = %1
  %8 = call i32 (...) @slabs_rebalancer_pause()
  %9 = call i32 (...) @lru_maintainer_pause()
  %10 = call i32 (...) @lru_crawler_pause()
  br label %11

11:                                               ; preds = %1, %7
  %12 = getelementptr inbounds [1 x i8], [1 x i8]* %3, i64 0, i64 0
  store i8 112, i8* %12, align 1
  %13 = call i32 @pthread_mutex_lock(i32* @worker_hang_lock)
  br label %25

14:                                               ; preds = %1
  %15 = call i32 (...) @slabs_rebalancer_resume()
  %16 = call i32 (...) @lru_maintainer_resume()
  %17 = call i32 (...) @lru_crawler_resume()
  br label %18

18:                                               ; preds = %1, %14
  %19 = call i32 @pthread_mutex_unlock(i32* @worker_hang_lock)
  br label %25

20:                                               ; preds = %1
  %21 = load i32, i32* @stderr, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = call i32 @assert(i32 0)
  br label %25

25:                                               ; preds = %20, %18, %11
  %26 = getelementptr inbounds [1 x i8], [1 x i8]* %3, i64 0, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %57

31:                                               ; preds = %25
  %32 = call i32 @pthread_mutex_lock(i32* @init_lock)
  store i64 0, i64* @init_count, align 8
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %50, %31
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @settings, i32 0, i32 0), align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @threads, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [1 x i8], [1 x i8]* %3, i64 0, i64 0
  %45 = call i32 @write(i32 %43, i8* %44, i32 1)
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = call i32 @perror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %37
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %33

53:                                               ; preds = %33
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @settings, i32 0, i32 0), align 4
  %55 = call i32 @wait_for_thread_registration(i32 %54)
  %56 = call i32 @pthread_mutex_unlock(i32* @init_lock)
  br label %57

57:                                               ; preds = %53, %30
  ret void
}

declare dso_local i32 @slabs_rebalancer_pause(...) #1

declare dso_local i32 @lru_maintainer_pause(...) #1

declare dso_local i32 @lru_crawler_pause(...) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @slabs_rebalancer_resume(...) #1

declare dso_local i32 @lru_maintainer_resume(...) #1

declare dso_local i32 @lru_crawler_resume(...) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @wait_for_thread_registration(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/memcached/extr_crawler.c_stop_item_crawler_thread.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_crawler.c_stop_item_crawler_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lru_crawler_lock = common dso_local global i32 0, align 4
@do_run_lru_crawler_thread = common dso_local global i64 0, align 8
@lru_crawler_cond = common dso_local global i32 0, align 4
@item_crawler_tid = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to stop LRU crawler thread: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stop_item_crawler_thread(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = call i32 @pthread_mutex_lock(i32* @lru_crawler_lock)
  %6 = load i64, i64* @do_run_lru_crawler_thread, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @pthread_mutex_unlock(i32* @lru_crawler_lock)
  store i32 0, i32* %2, align 4
  br label %25

10:                                               ; preds = %1
  store i64 0, i64* @do_run_lru_crawler_thread, align 8
  %11 = call i32 @pthread_cond_signal(i32* @lru_crawler_cond)
  %12 = call i32 @pthread_mutex_unlock(i32* @lru_crawler_lock)
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = load i32, i32* @item_crawler_tid, align 4
  %17 = call i32 @pthread_join(i32 %16, i32* null)
  store i32 %17, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32, i32* @stderr, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i8* @strerror(i32 %21)
  %23 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %22)
  store i32 -1, i32* %2, align 4
  br label %25

24:                                               ; preds = %15, %10
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %19, %8
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

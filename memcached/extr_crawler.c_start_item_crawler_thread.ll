; ModuleID = '/home/carl/AnghaBench/memcached/extr_crawler.c_start_item_crawler_thread.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_crawler.c_start_item_crawler_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@settings = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@lru_crawler_lock = common dso_local global i32 0, align 4
@do_run_lru_crawler_thread = common dso_local global i32 0, align 4
@item_crawler_tid = common dso_local global i32 0, align 4
@item_crawler_thread = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Can't create LRU crawler thread: %s\0A\00", align 1
@lru_crawler_cond = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @start_item_crawler_thread() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @settings, i32 0, i32 0), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %20

6:                                                ; preds = %0
  %7 = call i32 @pthread_mutex_lock(i32* @lru_crawler_lock)
  store i32 1, i32* @do_run_lru_crawler_thread, align 4
  %8 = load i32, i32* @item_crawler_thread, align 4
  %9 = call i32 @pthread_create(i32* @item_crawler_tid, i32* null, i32 %8, i32* null)
  store i32 %9, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = load i32, i32* @stderr, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i8* @strerror(i32 %13)
  %15 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = call i32 @pthread_mutex_unlock(i32* @lru_crawler_lock)
  store i32 -1, i32* %1, align 4
  br label %20

17:                                               ; preds = %6
  %18 = call i32 @pthread_cond_wait(i32* @lru_crawler_cond, i32* @lru_crawler_lock)
  %19 = call i32 @pthread_mutex_unlock(i32* @lru_crawler_lock)
  store i32 0, i32* %1, align 4
  br label %20

20:                                               ; preds = %17, %11, %5
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}

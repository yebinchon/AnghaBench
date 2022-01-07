; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_threadtest.c_shared_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_threadtest.c_shared_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@done = common dso_local global i32 0, align 4
@list_lock = common dso_local global i32 0, align 4
@listcount = common dso_local global i64 0, align 8
@LISTSIZE = common dso_local global i64 0, align 8
@global_list = common dso_local global i32* null, align 8
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @shared_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

3:                                                ; preds = %16, %1
  %4 = load i32, i32* @done, align 4
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = call i32 @pthread_mutex_lock(i32* @list_lock)
  %9 = load i64, i64* @listcount, align 8
  %10 = load i64, i64* @LISTSIZE, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load i32*, i32** @global_list, align 8
  %14 = load i64, i64* @LISTSIZE, align 8
  %15 = call i32 @checklist(i32* %13, i64 %14)
  store i64 0, i64* @listcount, align 8
  br label %16

16:                                               ; preds = %12, %7
  %17 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %18 = load i32*, i32** @global_list, align 8
  %19 = load i64, i64* @listcount, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* @listcount, align 8
  %21 = getelementptr inbounds i32, i32* %18, i64 %19
  %22 = call i32 @clock_gettime(i32 %17, i32* %21)
  %23 = call i32 @pthread_mutex_unlock(i32* @list_lock)
  br label %3

24:                                               ; preds = %3
  ret i8* null
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @checklist(i32*, i64) #1

declare dso_local i32 @clock_gettime(i32, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

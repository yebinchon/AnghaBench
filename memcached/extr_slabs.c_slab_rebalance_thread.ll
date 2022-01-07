; ModuleID = '/home/carl/AnghaBench/memcached/extr_slabs.c_slab_rebalance_thread.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_slabs.c_slab_rebalance_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }

@slabs_rebalance_lock = common dso_local global i32 0, align 4
@slab_rebalance_signal = common dso_local global i32 0, align 4
@do_run_slab_rebalance_thread = common dso_local global i64 0, align 8
@slab_rebal = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@slab_rebalance_cond = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @slab_rebalance_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @slab_rebalance_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  store i32 1000, i32* %5, align 4
  %6 = call i32 @mutex_lock(i32* @slabs_rebalance_lock)
  br label %7

7:                                                ; preds = %57, %1
  %8 = load i32, i32* @slab_rebalance_signal, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = load i64, i64* @do_run_slab_rebalance_thread, align 8
  %12 = icmp ne i64 %11, 0
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i1 [ true, %7 ], [ %12, %10 ]
  br i1 %14, label %15, label %58

15:                                               ; preds = %13
  %16 = load i32, i32* @slab_rebalance_signal, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = call i64 (...) @slab_rebalance_start()
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 0, i32* @slab_rebalance_signal, align 4
  br label %22

22:                                               ; preds = %21, %18
  store i32 0, i32* %3, align 4
  br label %32

23:                                               ; preds = %15
  %24 = load i32, i32* @slab_rebalance_signal, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @slab_rebal, i32 0, i32 1), align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 (...) @slab_rebalance_move()
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %26, %23
  br label %32

32:                                               ; preds = %31, %22
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @slab_rebal, i32 0, i32 0), align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 (...) @slab_rebalance_finish()
  br label %52

37:                                               ; preds = %32
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @usleep(i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = mul nsw i32 %43, 2
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %40
  br label %51

51:                                               ; preds = %50, %37
  br label %52

52:                                               ; preds = %51, %35
  %53 = load i32, i32* @slab_rebalance_signal, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 @pthread_cond_wait(i32* @slab_rebalance_cond, i32* @slabs_rebalance_lock)
  br label %57

57:                                               ; preds = %55, %52
  br label %7

58:                                               ; preds = %13
  %59 = call i32 @mutex_unlock(i32* @slabs_rebalance_lock)
  ret i8* null
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @slab_rebalance_start(...) #1

declare dso_local i32 @slab_rebalance_move(...) #1

declare dso_local i32 @slab_rebalance_finish(...) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

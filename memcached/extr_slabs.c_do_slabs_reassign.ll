; ModuleID = '/home/carl/AnghaBench/memcached/extr_slabs.c_do_slabs_reassign.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_slabs.c_do_slabs_reassign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@slab_rebalance_signal = common dso_local global i32 0, align 4
@REASSIGN_RUNNING = common dso_local global i32 0, align 4
@REASSIGN_SRC_DST_SAME = common dso_local global i32 0, align 4
@SLAB_GLOBAL_PAGE_POOL = common dso_local global i32 0, align 4
@power_largest = common dso_local global i32 0, align 4
@REASSIGN_BADCLASS = common dso_local global i32 0, align 4
@slabs_lock = common dso_local global i32 0, align 4
@slabclass = common dso_local global %struct.TYPE_3__* null, align 8
@REASSIGN_NOSPARE = common dso_local global i32 0, align 4
@slab_rebal = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@slab_rebalance_cond = common dso_local global i32 0, align 4
@REASSIGN_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @do_slabs_reassign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_slabs_reassign(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @slab_rebalance_signal, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @REASSIGN_RUNNING, align 4
  store i32 %10, i32* %3, align 4
  br label %62

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @REASSIGN_SRC_DST_SAME, align 4
  store i32 %16, i32* %3, align 4
  br label %62

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @slabs_reassign_pick_any(i32 %21)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @SLAB_GLOBAL_PAGE_POOL, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @power_largest, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @SLAB_GLOBAL_PAGE_POOL, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @power_largest, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %31, %27, %23
  %40 = load i32, i32* @REASSIGN_BADCLASS, align 4
  store i32 %40, i32* %3, align 4
  br label %62

41:                                               ; preds = %35
  %42 = call i32 @pthread_mutex_lock(i32* @slabs_lock)
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @slabclass, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %48, 2
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store i32 1, i32* %6, align 4
  br label %51

51:                                               ; preds = %50, %41
  %52 = call i32 @pthread_mutex_unlock(i32* @slabs_lock)
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @REASSIGN_NOSPARE, align 4
  store i32 %56, i32* %3, align 4
  br label %62

57:                                               ; preds = %51
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @slab_rebal, i32 0, i32 0), align 4
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @slab_rebal, i32 0, i32 1), align 4
  store i32 1, i32* @slab_rebalance_signal, align 4
  %60 = call i32 @pthread_cond_signal(i32* @slab_rebalance_cond)
  %61 = load i32, i32* @REASSIGN_OK, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %57, %55, %39, %15, %9
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @slabs_reassign_pick_any(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/popen/extr_popen.c_myp_reap.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/popen/extr_popen.c_myp_reap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mypopen = type { i64, %struct.mypopen* }

@myp_tracking = common dso_local global i64 0, align 8
@myp_lock = common dso_local global i32 0, align 4
@mypopen_root = common dso_local global %struct.mypopen* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @myp_reap(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.mypopen*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* @myp_tracking, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

8:                                                ; preds = %1
  %9 = call i32 @netdata_mutex_lock(i32* @myp_lock)
  %10 = load %struct.mypopen*, %struct.mypopen** @mypopen_root, align 8
  store %struct.mypopen* %10, %struct.mypopen** %4, align 8
  br label %11

11:                                               ; preds = %23, %8
  %12 = load %struct.mypopen*, %struct.mypopen** %4, align 8
  %13 = icmp ne %struct.mypopen* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load %struct.mypopen*, %struct.mypopen** %4, align 8
  %16 = getelementptr inbounds %struct.mypopen, %struct.mypopen* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = call i32 @netdata_mutex_unlock(i32* @myp_lock)
  store i32 0, i32* %2, align 4
  br label %29

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.mypopen*, %struct.mypopen** %4, align 8
  %25 = getelementptr inbounds %struct.mypopen, %struct.mypopen* %24, i32 0, i32 1
  %26 = load %struct.mypopen*, %struct.mypopen** %25, align 8
  store %struct.mypopen* %26, %struct.mypopen** %4, align 8
  br label %11

27:                                               ; preds = %11
  %28 = call i32 @netdata_mutex_unlock(i32* @myp_lock)
  store i32 1, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %20, %7
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @netdata_mutex_lock(i32*) #1

declare dso_local i32 @netdata_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

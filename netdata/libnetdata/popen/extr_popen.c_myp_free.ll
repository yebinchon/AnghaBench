; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/popen/extr_popen.c_myp_free.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/popen/extr_popen.c_myp_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mypopen = type { %struct.mypopen* }

@myp_tracking = common dso_local global i64 0, align 8
@myp_lock = common dso_local global i32 0, align 4
@mypopen_root = common dso_local global %struct.mypopen* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @myp_free() #0 {
  %1 = alloca %struct.mypopen*, align 8
  %2 = alloca %struct.mypopen*, align 8
  %3 = load i64, i64* @myp_tracking, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %22

6:                                                ; preds = %0
  %7 = call i32 @netdata_mutex_lock(i32* @myp_lock)
  %8 = load %struct.mypopen*, %struct.mypopen** @mypopen_root, align 8
  store %struct.mypopen* %8, %struct.mypopen** %1, align 8
  br label %9

9:                                                ; preds = %18, %6
  %10 = load %struct.mypopen*, %struct.mypopen** %1, align 8
  %11 = icmp ne %struct.mypopen* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load %struct.mypopen*, %struct.mypopen** %1, align 8
  %14 = getelementptr inbounds %struct.mypopen, %struct.mypopen* %13, i32 0, i32 0
  %15 = load %struct.mypopen*, %struct.mypopen** %14, align 8
  store %struct.mypopen* %15, %struct.mypopen** %2, align 8
  %16 = load %struct.mypopen*, %struct.mypopen** %1, align 8
  %17 = call i32 @freez(%struct.mypopen* %16)
  br label %18

18:                                               ; preds = %12
  %19 = load %struct.mypopen*, %struct.mypopen** %2, align 8
  store %struct.mypopen* %19, %struct.mypopen** %1, align 8
  br label %9

20:                                               ; preds = %9
  store %struct.mypopen* null, %struct.mypopen** @mypopen_root, align 8
  store i64 0, i64* @myp_tracking, align 8
  %21 = call i32 @netdata_mutex_unlock(i32* @myp_lock)
  br label %22

22:                                               ; preds = %20, %5
  ret void
}

declare dso_local i32 @netdata_mutex_lock(i32*) #1

declare dso_local i32 @freez(%struct.mypopen*) #1

declare dso_local i32 @netdata_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

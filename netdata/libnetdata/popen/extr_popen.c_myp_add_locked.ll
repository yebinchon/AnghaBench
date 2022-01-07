; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/popen/extr_popen.c_myp_add_locked.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/popen/extr_popen.c_myp_add_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mypopen = type { %struct.mypopen*, %struct.mypopen*, i32 }

@myp_tracking = common dso_local global i64 0, align 8
@mypopen_root = common dso_local global %struct.mypopen* null, align 8
@myp_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @myp_add_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myp_add_locked(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mypopen*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @myp_tracking, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %26

7:                                                ; preds = %1
  %8 = call %struct.mypopen* @mallocz(i32 24)
  store %struct.mypopen* %8, %struct.mypopen** %3, align 8
  %9 = load i32, i32* %2, align 4
  %10 = load %struct.mypopen*, %struct.mypopen** %3, align 8
  %11 = getelementptr inbounds %struct.mypopen, %struct.mypopen* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 8
  %12 = load %struct.mypopen*, %struct.mypopen** @mypopen_root, align 8
  %13 = load %struct.mypopen*, %struct.mypopen** %3, align 8
  %14 = getelementptr inbounds %struct.mypopen, %struct.mypopen* %13, i32 0, i32 1
  store %struct.mypopen* %12, %struct.mypopen** %14, align 8
  %15 = load %struct.mypopen*, %struct.mypopen** %3, align 8
  %16 = getelementptr inbounds %struct.mypopen, %struct.mypopen* %15, i32 0, i32 0
  store %struct.mypopen* null, %struct.mypopen** %16, align 8
  %17 = load %struct.mypopen*, %struct.mypopen** @mypopen_root, align 8
  %18 = icmp ne %struct.mypopen* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %7
  %20 = load %struct.mypopen*, %struct.mypopen** %3, align 8
  %21 = load %struct.mypopen*, %struct.mypopen** @mypopen_root, align 8
  %22 = getelementptr inbounds %struct.mypopen, %struct.mypopen* %21, i32 0, i32 0
  store %struct.mypopen* %20, %struct.mypopen** %22, align 8
  br label %23

23:                                               ; preds = %19, %7
  %24 = load %struct.mypopen*, %struct.mypopen** %3, align 8
  store %struct.mypopen* %24, %struct.mypopen** @mypopen_root, align 8
  %25 = call i32 @netdata_mutex_unlock(i32* @myp_lock)
  br label %26

26:                                               ; preds = %23, %6
  ret void
}

declare dso_local %struct.mypopen* @mallocz(i32) #1

declare dso_local i32 @netdata_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

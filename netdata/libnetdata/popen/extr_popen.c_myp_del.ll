; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/popen/extr_popen.c_myp_del.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/popen/extr_popen.c_myp_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mypopen = type { i64, %struct.mypopen*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mypopen* }

@myp_tracking = common dso_local global i64 0, align 8
@myp_lock = common dso_local global i32 0, align 4
@mypopen_root = common dso_local global %struct.mypopen* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"Cannot find pid %d.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @myp_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myp_del(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mypopen*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* @myp_tracking, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %69

7:                                                ; preds = %1
  %8 = call i32 @netdata_mutex_lock(i32* @myp_lock)
  %9 = load %struct.mypopen*, %struct.mypopen** @mypopen_root, align 8
  store %struct.mypopen* %9, %struct.mypopen** %3, align 8
  br label %10

10:                                               ; preds = %57, %7
  %11 = load %struct.mypopen*, %struct.mypopen** %3, align 8
  %12 = icmp ne %struct.mypopen* %11, null
  br i1 %12, label %13, label %61

13:                                               ; preds = %10
  %14 = load %struct.mypopen*, %struct.mypopen** %3, align 8
  %15 = getelementptr inbounds %struct.mypopen, %struct.mypopen* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %2, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %13
  %20 = load %struct.mypopen*, %struct.mypopen** %3, align 8
  %21 = getelementptr inbounds %struct.mypopen, %struct.mypopen* %20, i32 0, i32 1
  %22 = load %struct.mypopen*, %struct.mypopen** %21, align 8
  %23 = icmp ne %struct.mypopen* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.mypopen*, %struct.mypopen** %3, align 8
  %26 = getelementptr inbounds %struct.mypopen, %struct.mypopen* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load %struct.mypopen*, %struct.mypopen** %3, align 8
  %29 = getelementptr inbounds %struct.mypopen, %struct.mypopen* %28, i32 0, i32 1
  %30 = load %struct.mypopen*, %struct.mypopen** %29, align 8
  %31 = getelementptr inbounds %struct.mypopen, %struct.mypopen* %30, i32 0, i32 2
  store %struct.TYPE_2__* %27, %struct.TYPE_2__** %31, align 8
  br label %32

32:                                               ; preds = %24, %19
  %33 = load %struct.mypopen*, %struct.mypopen** %3, align 8
  %34 = getelementptr inbounds %struct.mypopen, %struct.mypopen* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.mypopen*, %struct.mypopen** %3, align 8
  %39 = getelementptr inbounds %struct.mypopen, %struct.mypopen* %38, i32 0, i32 1
  %40 = load %struct.mypopen*, %struct.mypopen** %39, align 8
  %41 = load %struct.mypopen*, %struct.mypopen** %3, align 8
  %42 = getelementptr inbounds %struct.mypopen, %struct.mypopen* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store %struct.mypopen* %40, %struct.mypopen** %44, align 8
  br label %45

45:                                               ; preds = %37, %32
  %46 = load %struct.mypopen*, %struct.mypopen** @mypopen_root, align 8
  %47 = load %struct.mypopen*, %struct.mypopen** %3, align 8
  %48 = icmp eq %struct.mypopen* %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load %struct.mypopen*, %struct.mypopen** %3, align 8
  %51 = getelementptr inbounds %struct.mypopen, %struct.mypopen* %50, i32 0, i32 1
  %52 = load %struct.mypopen*, %struct.mypopen** %51, align 8
  store %struct.mypopen* %52, %struct.mypopen** @mypopen_root, align 8
  br label %53

53:                                               ; preds = %49, %45
  %54 = load %struct.mypopen*, %struct.mypopen** %3, align 8
  %55 = call i32 @freez(%struct.mypopen* %54)
  br label %61

56:                                               ; preds = %13
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.mypopen*, %struct.mypopen** %3, align 8
  %59 = getelementptr inbounds %struct.mypopen, %struct.mypopen* %58, i32 0, i32 1
  %60 = load %struct.mypopen*, %struct.mypopen** %59, align 8
  store %struct.mypopen* %60, %struct.mypopen** %3, align 8
  br label %10

61:                                               ; preds = %53, %10
  %62 = load %struct.mypopen*, %struct.mypopen** %3, align 8
  %63 = icmp eq %struct.mypopen* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i64, i64* %2, align 8
  %66 = call i32 @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = call i32 @netdata_mutex_unlock(i32* @myp_lock)
  br label %69

69:                                               ; preds = %67, %6
  ret void
}

declare dso_local i32 @netdata_mutex_lock(i32*) #1

declare dso_local i32 @freez(%struct.mypopen*) #1

declare dso_local i32 @error(i8*, i64) #1

declare dso_local i32 @netdata_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

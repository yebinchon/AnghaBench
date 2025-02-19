; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_pthread_mutex_consistent.c_pthread_mutex_consistent.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_pthread_mutex_consistent.c_pthread_mutex_consistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PTW32_ROBUST_INCONSISTENT = common dso_local global i64 0, align 8
@PTW32_ROBUST_CONSISTENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_mutex_consistent(%struct.TYPE_5__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__**, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %3, align 8
  %6 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = icmp eq %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  store i32 %11, i32* %2, align 4
  br label %32

12:                                               ; preds = %1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %12
  %18 = load i64, i64* @PTW32_ROBUST_INCONSISTENT, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = ptrtoint i32* %22 to i32
  %24 = load i64, i64* @PTW32_ROBUST_CONSISTENT, align 8
  %25 = load i64, i64* @PTW32_ROBUST_INCONSISTENT, align 8
  %26 = call i64 @PTW32_INTERLOCKED_COMPARE_EXCHANGE_LONG(i32 %23, i64 %24, i64 %25)
  %27 = icmp ne i64 %18, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %17, %12
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %28, %17
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %10
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @PTW32_INTERLOCKED_COMPARE_EXCHANGE_LONG(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

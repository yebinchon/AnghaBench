; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_pthread_spin_unlock.c_pthread_spin_unlock.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_pthread_spin_unlock.c_pthread_spin_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PTHREAD_SPINLOCK_INITIALIZER = common dso_local global %struct.TYPE_6__* null, align 8
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_spin_unlock(%struct.TYPE_6__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__**, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %3, align 8
  %5 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %6 = icmp eq %struct.TYPE_6__** null, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = icmp eq %struct.TYPE_6__* null, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %7, %1
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %2, align 4
  br label %34

13:                                               ; preds = %7
  %14 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %4, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PTHREAD_SPINLOCK_INITIALIZER, align 8
  %18 = icmp eq %struct.TYPE_6__* %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @EPERM, align 4
  store i32 %20, i32* %2, align 4
  br label %34

21:                                               ; preds = %13
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = ptrtoint i32* %23 to i32
  %25 = call i64 @PTW32_INTERLOCKED_COMPARE_EXCHANGE_LONG(i32 %24, i32 129, i32 130)
  switch i64 %25, label %32 [
    i64 130, label %26
    i64 129, label %26
    i64 128, label %27
  ]

26:                                               ; preds = %21, %21
  store i32 0, i32* %2, align 4
  br label %34

27:                                               ; preds = %21
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = call i32 @pthread_mutex_unlock(i32* %30)
  store i32 %31, i32* %2, align 4
  br label %34

32:                                               ; preds = %21
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %27, %26, %19, %11
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @PTW32_INTERLOCKED_COMPARE_EXCHANGE_LONG(i32, i32, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

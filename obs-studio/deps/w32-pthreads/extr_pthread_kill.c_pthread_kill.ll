; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_pthread_kill.c_pthread_kill.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_pthread_kill.c_pthread_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@ptw32_thread_reuse_lock = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_kill(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = bitcast %struct.TYPE_7__* %4 to { i64, i64 }*
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  store i64 %0, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = call i32 @ptw32_mcs_lock_acquire(i32* @ptw32_thread_reuse_lock, i32* %8)
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %7, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = icmp eq %struct.TYPE_6__* null, %16
  br i1 %17, label %31, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %20, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %18
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* null, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26, %18, %3
  %32 = load i32, i32* @ESRCH, align 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %31, %26
  %34 = call i32 @ptw32_mcs_lock_release(i32* %8)
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 0, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 0, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %40, %37, %33
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @ptw32_mcs_lock_acquire(i32*, i32*) #1

declare dso_local i32 @ptw32_mcs_lock_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

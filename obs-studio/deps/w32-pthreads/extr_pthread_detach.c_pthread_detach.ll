; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_pthread_detach.c_pthread_detach.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_pthread_detach.c_pthread_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@PTW32_FALSE = common dso_local global i64 0, align 8
@ptw32_thread_reuse_lock = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@PTHREAD_CREATE_DETACHED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PThreadStateLast = common dso_local global i64 0, align 8
@PTW32_TRUE = common dso_local global i64 0, align 8
@INFINITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_detach(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = bitcast %struct.TYPE_8__* %3 to { i64, i64 }*
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  store i64 %0, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  store i64 %1, i64* %11, align 8
  %12 = load i64, i64* @PTW32_FALSE, align 8
  store i64 %12, i64* %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %6, align 8
  %16 = call i32 @ptw32_mcs_lock_acquire(i32* @ptw32_thread_reuse_lock, i32* %7)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = icmp eq %struct.TYPE_7__* null, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %21, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19, %2
  %28 = load i32, i32* @ESRCH, align 4
  store i32 %28, i32* %4, align 4
  br label %62

29:                                               ; preds = %19
  %30 = load i64, i64* @PTHREAD_CREATE_DETACHED, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %4, align 4
  br label %61

37:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 3
  %40 = call i32 @ptw32_mcs_lock_acquire(i32* %39, i32* %8)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PThreadStateLast, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load i64, i64* @PTHREAD_CREATE_DETACHED, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %59

50:                                               ; preds = %37
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PTHREAD_CREATE_DETACHED, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i64, i64* @PTW32_TRUE, align 8
  store i64 %57, i64* %5, align 8
  br label %58

58:                                               ; preds = %56, %50
  br label %59

59:                                               ; preds = %58, %46
  %60 = call i32 @ptw32_mcs_lock_release(i32* %8)
  br label %61

61:                                               ; preds = %59, %35
  br label %62

62:                                               ; preds = %61, %27
  %63 = call i32 @ptw32_mcs_lock_release(i32* %7)
  %64 = load i32, i32* %4, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %62
  %67 = load i64, i64* %5, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @INFINITE, align 4
  %74 = call i32 @WaitForSingleObject(i32 %72, i32 %73)
  %75 = bitcast %struct.TYPE_8__* %3 to { i64, i64 }*
  %76 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %75, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @ptw32_threadDestroy(i64 %77, i64 %79)
  br label %81

81:                                               ; preds = %69, %66
  br label %82

82:                                               ; preds = %81, %62
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @ptw32_mcs_lock_acquire(i32*, i32*) #1

declare dso_local i32 @ptw32_mcs_lock_release(i32*) #1

declare dso_local i32 @WaitForSingleObject(i32, i32) #1

declare dso_local i32 @ptw32_threadDestroy(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

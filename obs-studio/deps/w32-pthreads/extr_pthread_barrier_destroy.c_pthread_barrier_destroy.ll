; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_pthread_barrier_destroy.c_pthread_barrier_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_pthread_barrier_destroy.c_pthread_barrier_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i32, i32 }

@PTW32_OBJECT_INVALID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_barrier_destroy(%struct.TYPE_4__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %8 = icmp eq %struct.TYPE_4__** %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = load i64, i64* @PTW32_OBJECT_INVALID, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_4__*
  %14 = icmp eq %struct.TYPE_4__* %11, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9, %1
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %2, align 4
  br label %65

17:                                               ; preds = %9
  %18 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 4
  %21 = call i64 @ptw32_mcs_lock_try_acquire(i32* %20, i32* %6)
  %22 = icmp ne i64 0, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @EBUSY, align 4
  store i32 %24, i32* %2, align 4
  br label %65

25:                                               ; preds = %17
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %5, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* @EBUSY, align 4
  store i32 %36, i32* %4, align 4
  br label %62

37:                                               ; preds = %25
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = call i32 @sem_destroy(i32* %39)
  store i32 %40, i32* %4, align 4
  %41 = icmp eq i32 0, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i64, i64* @PTW32_OBJECT_INVALID, align 8
  %44 = inttoptr i64 %43 to %struct.TYPE_4__*
  %45 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %45, align 8
  %46 = call i32 @ptw32_mcs_lock_release(i32* %6)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = call i32 @free(%struct.TYPE_4__* %47)
  store i32 0, i32* %2, align 4
  br label %65

49:                                               ; preds = %37
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @sem_init(i32* %51, i32 %54, i32 0)
  br label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @EBUSY, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %56
  br label %62

62:                                               ; preds = %61, %35
  %63 = call i32 @ptw32_mcs_lock_release(i32* %6)
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %62, %42, %23, %15
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i64 @ptw32_mcs_lock_try_acquire(i32*, i32*) #1

declare dso_local i32 @sem_destroy(i32*) #1

declare dso_local i32 @ptw32_mcs_lock_release(i32*) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

declare dso_local i32 @sem_init(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

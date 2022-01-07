; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_pthread_rwlock_timedrdlock.c_pthread_rwlock_timedrdlock.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_pthread_rwlock_timedrdlock.c_pthread_rwlock_timedrdlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i32, i32 }
%struct.timespec = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PTHREAD_RWLOCK_INITIALIZER = common dso_local global %struct.TYPE_5__* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@PTW32_RWLOCK_MAGIC = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_rwlock_timedrdlock(%struct.TYPE_5__** %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__**, align 8
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %4, align 8
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %8 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %9 = icmp eq %struct.TYPE_5__** %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = icmp eq %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %102

16:                                               ; preds = %10
  %17 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @PTHREAD_RWLOCK_INITIALIZER, align 8
  %20 = icmp eq %struct.TYPE_5__* %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %23 = call i32 @ptw32_rwlock_check_need_init(%struct.TYPE_5__** %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @EBUSY, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %102

32:                                               ; preds = %26, %21
  br label %33

33:                                               ; preds = %32, %16
  %34 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %4, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %7, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PTW32_RWLOCK_MAGIC, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %3, align 4
  br label %102

43:                                               ; preds = %33
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  %46 = load %struct.timespec*, %struct.timespec** %5, align 8
  %47 = call i32 @pthread_mutex_timedlock(i32* %45, %struct.timespec* %46)
  store i32 %47, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %102

51:                                               ; preds = %43
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %53, align 8
  %56 = load i64, i64* @INT_MAX, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %98

58:                                               ; preds = %51
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 4
  %61 = load %struct.timespec*, %struct.timespec** %5, align 8
  %62 = call i32 @pthread_mutex_timedlock(i32* %60, %struct.timespec* %61)
  store i32 %62, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %58
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @ETIMEDOUT, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %70, align 8
  br label %73

73:                                               ; preds = %68, %64
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 3
  %76 = call i32 @pthread_mutex_unlock(i32* %75)
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %102

78:                                               ; preds = %58
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %84, %81
  store i64 %85, i64* %83, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  store i64 0, i64* %87, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 4
  %90 = call i32 @pthread_mutex_unlock(i32* %89)
  store i32 %90, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %78
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 3
  %95 = call i32 @pthread_mutex_unlock(i32* %94)
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %3, align 4
  br label %102

97:                                               ; preds = %78
  br label %98

98:                                               ; preds = %97, %51
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 3
  %101 = call i32 @pthread_mutex_unlock(i32* %100)
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %98, %92, %73, %49, %41, %30, %14
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @ptw32_rwlock_check_need_init(%struct.TYPE_5__**) #1

declare dso_local i32 @pthread_mutex_timedlock(i32*, %struct.timespec*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

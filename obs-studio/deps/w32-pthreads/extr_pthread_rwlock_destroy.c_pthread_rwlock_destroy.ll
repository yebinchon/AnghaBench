; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_pthread_rwlock_destroy.c_pthread_rwlock_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_pthread_rwlock_destroy.c_pthread_rwlock_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PTHREAD_RWLOCK_INITIALIZER = common dso_local global %struct.TYPE_5__* null, align 8
@PTW32_RWLOCK_MAGIC = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@ptw32_rwlock_test_init_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_rwlock_destroy(%struct.TYPE_5__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__**, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %10 = icmp eq %struct.TYPE_5__** %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = icmp eq %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %1
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %2, align 4
  br label %131

17:                                               ; preds = %11
  %18 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @PTHREAD_RWLOCK_INITIALIZER, align 8
  %21 = icmp ne %struct.TYPE_5__* %19, %20
  br i1 %21, label %22, label %103

22:                                               ; preds = %17
  %23 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %4, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PTW32_RWLOCK_MAGIC, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %2, align 4
  br label %131

32:                                               ; preds = %22
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 4
  %35 = call i32 @pthread_mutex_lock(i32* %34)
  store i32 %35, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %131

39:                                               ; preds = %32
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 5
  %42 = call i32 @pthread_mutex_lock(i32* %41)
  store i32 %42, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 4
  %47 = call i32 @pthread_mutex_unlock(i32* %46)
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %131

49:                                               ; preds = %39
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %49
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %57, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %54, %49
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 5
  %65 = call i32 @pthread_mutex_unlock(i32* %64)
  store i32 %65, i32* %5, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 4
  %68 = call i32 @pthread_mutex_unlock(i32* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* @EBUSY, align 4
  store i32 %69, i32* %7, align 4
  br label %102

70:                                               ; preds = %54
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 5
  %75 = call i32 @pthread_mutex_unlock(i32* %74)
  store i32 %75, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 4
  %80 = call i32 @pthread_mutex_unlock(i32* %79)
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %131

82:                                               ; preds = %70
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 4
  %85 = call i32 @pthread_mutex_unlock(i32* %84)
  store i32 %85, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* %2, align 4
  br label %131

89:                                               ; preds = %82
  %90 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %90, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 6
  %93 = call i32 @pthread_cond_destroy(i32* %92)
  store i32 %93, i32* %5, align 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 5
  %96 = call i32 @pthread_mutex_destroy(i32* %95)
  store i32 %96, i32* %6, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 4
  %99 = call i32 @pthread_mutex_destroy(i32* %98)
  store i32 %99, i32* %7, align 4
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %101 = call i32 @free(%struct.TYPE_5__* %100)
  br label %102

102:                                              ; preds = %89, %62
  br label %115

103:                                              ; preds = %17
  %104 = call i32 @ptw32_mcs_lock_acquire(i32* @ptw32_rwlock_test_init_lock, i32* %8)
  %105 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** @PTHREAD_RWLOCK_INITIALIZER, align 8
  %108 = icmp eq %struct.TYPE_5__* %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %110, align 8
  br label %113

111:                                              ; preds = %103
  %112 = load i32, i32* @EBUSY, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %111, %109
  %114 = call i32 @ptw32_mcs_lock_release(i32* %8)
  br label %115

115:                                              ; preds = %113, %102
  %116 = load i32, i32* %5, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = load i32, i32* %5, align 4
  br label %129

120:                                              ; preds = %115
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = load i32, i32* %6, align 4
  br label %127

125:                                              ; preds = %120
  %126 = load i32, i32* %7, align 4
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i32 [ %124, %123 ], [ %126, %125 ]
  br label %129

129:                                              ; preds = %127, %118
  %130 = phi i32 [ %119, %118 ], [ %128, %127 ]
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %129, %87, %77, %44, %37, %30, %15
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_cond_destroy(i32*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i32 @ptw32_mcs_lock_acquire(i32*, i32*) #1

declare dso_local i32 @ptw32_mcs_lock_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

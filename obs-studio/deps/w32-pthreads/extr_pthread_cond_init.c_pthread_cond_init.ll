; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_pthread_cond_init.c_pthread_cond_init.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_pthread_cond_init.c_pthread_cond_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__*, %struct.TYPE_9__*, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_8__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@PTHREAD_PROCESS_SHARED = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ptw32_cond_list_lock = common dso_local global i32 0, align 4
@ptw32_cond_list_tail = common dso_local global %struct.TYPE_9__* null, align 8
@ptw32_cond_list_head = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_cond_init(%struct.TYPE_9__** %0, %struct.TYPE_8__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__**, align 8
  %5 = alloca %struct.TYPE_8__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %4, align 8
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %5, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %7, align 8
  %9 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %10 = icmp eq %struct.TYPE_9__** %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %3, align 4
  br label %102

13:                                               ; preds = %2
  %14 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %15 = icmp ne %struct.TYPE_8__** %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PTHREAD_PROCESS_SHARED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOSYS, align 4
  store i32 %28, i32* %6, align 4
  br label %74

29:                                               ; preds = %20, %16, %13
  %30 = call i64 @calloc(i32 1, i32 56)
  %31 = inttoptr i64 %30 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %7, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = icmp eq %struct.TYPE_9__* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  store i32 %35, i32* %6, align 4
  br label %74

36:                                               ; preds = %29
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 7
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 6
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 5
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  %45 = call i64 @sem_init(i32* %44, i32 0, i32 1)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* @errno, align 4
  store i32 %48, i32* %6, align 4
  br label %71

49:                                               ; preds = %36
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 3
  %52 = call i64 @sem_init(i32* %51, i32 0, i32 0)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @errno, align 4
  store i32 %55, i32* %6, align 4
  br label %67

56:                                               ; preds = %49
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 4
  %59 = call i32 @pthread_mutex_init(i32* %58, i32 0)
  store i32 %59, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %63

62:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %74

63:                                               ; preds = %61
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 3
  %66 = call i32 @sem_destroy(i32* %65)
  br label %67

67:                                               ; preds = %63, %54
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = call i32 @sem_destroy(i32* %69)
  br label %71

71:                                               ; preds = %67, %47
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %73 = call i32 @free(%struct.TYPE_9__* %72)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %7, align 8
  br label %74

74:                                               ; preds = %71, %62, %34, %27
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 0, %75
  br i1 %76, label %77, label %98

77:                                               ; preds = %74
  %78 = call i32 @ptw32_mcs_lock_acquire(i32* @ptw32_cond_list_lock, i32* %8)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %80, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ptw32_cond_list_tail, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  store %struct.TYPE_9__* %81, %struct.TYPE_9__** %83, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ptw32_cond_list_tail, align 8
  %85 = icmp ne %struct.TYPE_9__* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %77
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ptw32_cond_list_tail, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  store %struct.TYPE_9__* %87, %struct.TYPE_9__** %89, align 8
  br label %90

90:                                               ; preds = %86, %77
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %91, %struct.TYPE_9__** @ptw32_cond_list_tail, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ptw32_cond_list_head, align 8
  %93 = icmp eq %struct.TYPE_9__* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %95, %struct.TYPE_9__** @ptw32_cond_list_head, align 8
  br label %96

96:                                               ; preds = %94, %90
  %97 = call i32 @ptw32_mcs_lock_release(i32* %8)
  br label %98

98:                                               ; preds = %96, %74
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %100 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  store %struct.TYPE_9__* %99, %struct.TYPE_9__** %100, align 8
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %98, %11
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @sem_init(i32*, i32, i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32) #1

declare dso_local i32 @sem_destroy(i32*) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

declare dso_local i32 @ptw32_mcs_lock_acquire(i32*, i32*) #1

declare dso_local i32 @ptw32_mcs_lock_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

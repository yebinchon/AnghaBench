; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_sem_init.c_sem_init.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_sem_init.c_sem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32, i64 }

@EPERM = common dso_local global i32 0, align 4
@SEM_VALUE_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@PTW32_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sem_init(%struct.TYPE_4__** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @EPERM, align 4
  store i32 %13, i32* %8, align 4
  br label %59

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = load i64, i64* @SEM_VALUE_MAX, align 8
  %17 = trunc i64 %16 to i32
  %18 = icmp ugt i32 %15, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %8, align 4
  br label %58

21:                                               ; preds = %14
  %22 = call i64 @calloc(i32 1, i32 32)
  %23 = inttoptr i64 %22 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %9, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %25 = icmp eq %struct.TYPE_4__* null, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  store i32 %27, i32* %8, align 4
  br label %57

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = call i64 @pthread_mutex_init(i32* %33, i32* null)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %28
  %37 = load i64, i64* @SEM_VALUE_MAX, align 8
  %38 = call i64 @CreateSemaphore(i32* null, i64 0, i64 %37, i32* null)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = icmp eq i64 %38, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = call i32 @pthread_mutex_destroy(i32* %44)
  %46 = load i32, i32* @ENOSPC, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %42, %36
  br label %50

48:                                               ; preds = %28
  %49 = load i32, i32* @ENOSPC, align 4
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %48, %47
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %55 = call i32 @free(%struct.TYPE_4__* %54)
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %56, %26
  br label %58

58:                                               ; preds = %57, %19
  br label %59

59:                                               ; preds = %58, %12
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %67

64:                                               ; preds = %59
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %66 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  store %struct.TYPE_4__* %65, %struct.TYPE_4__** %66, align 8
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %64, %62
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i64 @CreateSemaphore(i32*, i64, i64, i32*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/nanomsg/src/utils/extr_sem.c_nn_sem_wait.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/utils/extr_sem.c_nn_sem_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_sem = type { i32, i64, i32 }

@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_sem_wait(%struct.nn_sem* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nn_sem*, align 8
  %4 = alloca i32, align 4
  store %struct.nn_sem* %0, %struct.nn_sem** %3, align 8
  %5 = load %struct.nn_sem*, %struct.nn_sem** %3, align 8
  %6 = getelementptr inbounds %struct.nn_sem, %struct.nn_sem* %5, i32 0, i32 0
  %7 = call i32 @pthread_mutex_lock(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @errnum_assert(i32 %10, i32 %11)
  %13 = load %struct.nn_sem*, %struct.nn_sem** %3, align 8
  %14 = getelementptr inbounds %struct.nn_sem, %struct.nn_sem* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @nn_fast(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.nn_sem*, %struct.nn_sem** %3, align 8
  %20 = getelementptr inbounds %struct.nn_sem, %struct.nn_sem* %19, i32 0, i32 0
  %21 = call i32 @pthread_mutex_unlock(i32* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @errnum_assert(i32 %24, i32 %25)
  store i32 0, i32* %2, align 4
  br label %68

27:                                               ; preds = %1
  %28 = load %struct.nn_sem*, %struct.nn_sem** %3, align 8
  %29 = getelementptr inbounds %struct.nn_sem, %struct.nn_sem* %28, i32 0, i32 2
  %30 = load %struct.nn_sem*, %struct.nn_sem** %3, align 8
  %31 = getelementptr inbounds %struct.nn_sem, %struct.nn_sem* %30, i32 0, i32 0
  %32 = call i32 @pthread_cond_wait(i32* %29, i32* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @errnum_assert(i32 %35, i32 %36)
  %38 = load %struct.nn_sem*, %struct.nn_sem** %3, align 8
  %39 = getelementptr inbounds %struct.nn_sem, %struct.nn_sem* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @nn_slow(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %27
  %47 = load %struct.nn_sem*, %struct.nn_sem** %3, align 8
  %48 = getelementptr inbounds %struct.nn_sem, %struct.nn_sem* %47, i32 0, i32 0
  %49 = call i32 @pthread_mutex_unlock(i32* %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @errnum_assert(i32 %52, i32 %53)
  %55 = load i32, i32* @EINTR, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %68

57:                                               ; preds = %27
  %58 = load %struct.nn_sem*, %struct.nn_sem** %3, align 8
  %59 = getelementptr inbounds %struct.nn_sem, %struct.nn_sem* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load %struct.nn_sem*, %struct.nn_sem** %3, align 8
  %61 = getelementptr inbounds %struct.nn_sem, %struct.nn_sem* %60, i32 0, i32 0
  %62 = call i32 @pthread_mutex_unlock(i32* %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @errnum_assert(i32 %65, i32 %66)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %57, %46, %18
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @errnum_assert(i32, i32) #1

declare dso_local i64 @nn_fast(i64) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i64 @nn_slow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

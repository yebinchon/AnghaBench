; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_thread_pool.c_thread_pool_add.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_thread_pool.c_thread_pool_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_thread_pool = type { i64, i64, i64, i64, i32, i32, i32 }
%struct.work = type { void (i8*)*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_thread_pool*, void (i8*)*, i8*, i32)* @thread_pool_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_pool_add(%struct.mp_thread_pool* %0, void (i8*)* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.mp_thread_pool*, align 8
  %6 = alloca void (i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.work, align 8
  store %struct.mp_thread_pool* %0, %struct.mp_thread_pool** %5, align 8
  store void (i8*)* %1, void (i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %11 = load void (i8*)*, void (i8*)** %6, align 8
  %12 = call i32 @assert(void (i8*)* %11)
  %13 = load %struct.mp_thread_pool*, %struct.mp_thread_pool** %5, align 8
  %14 = getelementptr inbounds %struct.mp_thread_pool, %struct.mp_thread_pool* %13, i32 0, i32 4
  %15 = call i32 @pthread_mutex_lock(i32* %14)
  %16 = getelementptr inbounds %struct.work, %struct.work* %10, i32 0, i32 0
  %17 = load void (i8*)*, void (i8*)** %6, align 8
  store void (i8*)* %17, void (i8*)** %16, align 8
  %18 = getelementptr inbounds %struct.work, %struct.work* %10, i32 0, i32 1
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** %18, align 8
  %20 = load %struct.mp_thread_pool*, %struct.mp_thread_pool** %5, align 8
  %21 = getelementptr inbounds %struct.mp_thread_pool, %struct.mp_thread_pool* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.mp_thread_pool*, %struct.mp_thread_pool** %5, align 8
  %24 = getelementptr inbounds %struct.mp_thread_pool, %struct.mp_thread_pool* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = add nsw i64 %26, 1
  %28 = load %struct.mp_thread_pool*, %struct.mp_thread_pool** %5, align 8
  %29 = getelementptr inbounds %struct.mp_thread_pool, %struct.mp_thread_pool* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %27, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %4
  %33 = load %struct.mp_thread_pool*, %struct.mp_thread_pool** %5, align 8
  %34 = getelementptr inbounds %struct.mp_thread_pool, %struct.mp_thread_pool* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.mp_thread_pool*, %struct.mp_thread_pool** %5, align 8
  %37 = getelementptr inbounds %struct.mp_thread_pool, %struct.mp_thread_pool* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %32
  %41 = load %struct.mp_thread_pool*, %struct.mp_thread_pool** %5, align 8
  %42 = call i32 @add_thread(%struct.mp_thread_pool* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load %struct.mp_thread_pool*, %struct.mp_thread_pool** %5, align 8
  %49 = getelementptr inbounds %struct.mp_thread_pool, %struct.mp_thread_pool* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 0
  br label %52

52:                                               ; preds = %47, %44
  %53 = phi i1 [ false, %44 ], [ %51, %47 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %52, %40
  br label %56

56:                                               ; preds = %55, %32, %4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %56
  %60 = load %struct.mp_thread_pool*, %struct.mp_thread_pool** %5, align 8
  %61 = load %struct.mp_thread_pool*, %struct.mp_thread_pool** %5, align 8
  %62 = getelementptr inbounds %struct.mp_thread_pool, %struct.mp_thread_pool* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.mp_thread_pool*, %struct.mp_thread_pool** %5, align 8
  %65 = getelementptr inbounds %struct.mp_thread_pool, %struct.mp_thread_pool* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = bitcast %struct.work* %10 to { void (i8*)*, i8* }*
  %68 = getelementptr inbounds { void (i8*)*, i8* }, { void (i8*)*, i8* }* %67, i32 0, i32 0
  %69 = load void (i8*)*, void (i8*)** %68, align 8
  %70 = getelementptr inbounds { void (i8*)*, i8* }, { void (i8*)*, i8* }* %67, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @MP_TARRAY_INSERT_AT(%struct.mp_thread_pool* %60, i32 %63, i64 %66, i32 0, void (i8*)* %69, i8* %71)
  %73 = load %struct.mp_thread_pool*, %struct.mp_thread_pool** %5, align 8
  %74 = getelementptr inbounds %struct.mp_thread_pool, %struct.mp_thread_pool* %73, i32 0, i32 5
  %75 = call i32 @pthread_cond_signal(i32* %74)
  br label %76

76:                                               ; preds = %59, %56
  %77 = load %struct.mp_thread_pool*, %struct.mp_thread_pool** %5, align 8
  %78 = getelementptr inbounds %struct.mp_thread_pool, %struct.mp_thread_pool* %77, i32 0, i32 4
  %79 = call i32 @pthread_mutex_unlock(i32* %78)
  %80 = load i32, i32* %9, align 4
  ret i32 %80
}

declare dso_local i32 @assert(void (i8*)*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @add_thread(%struct.mp_thread_pool*) #1

declare dso_local i32 @MP_TARRAY_INSERT_AT(%struct.mp_thread_pool*, i32, i64, i32, void (i8*)*, i8*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

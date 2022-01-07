; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_thread_pool.c_thread_pool_dtor.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_thread_pool.c_thread_pool_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_thread_pool = type { i32, i32, i64, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @thread_pool_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_pool_dtor(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mp_thread_pool*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.mp_thread_pool*
  store %struct.mp_thread_pool* %8, %struct.mp_thread_pool** %3, align 8
  %9 = load %struct.mp_thread_pool*, %struct.mp_thread_pool** %3, align 8
  %10 = getelementptr inbounds %struct.mp_thread_pool, %struct.mp_thread_pool* %9, i32 0, i32 3
  %11 = call i32 @pthread_mutex_lock(i32* %10)
  %12 = load %struct.mp_thread_pool*, %struct.mp_thread_pool** %3, align 8
  %13 = getelementptr inbounds %struct.mp_thread_pool, %struct.mp_thread_pool* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.mp_thread_pool*, %struct.mp_thread_pool** %3, align 8
  %15 = getelementptr inbounds %struct.mp_thread_pool, %struct.mp_thread_pool* %14, i32 0, i32 4
  %16 = call i32 @pthread_cond_broadcast(i32* %15)
  %17 = load %struct.mp_thread_pool*, %struct.mp_thread_pool** %3, align 8
  %18 = getelementptr inbounds %struct.mp_thread_pool, %struct.mp_thread_pool* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %4, align 8
  %20 = load %struct.mp_thread_pool*, %struct.mp_thread_pool** %3, align 8
  %21 = getelementptr inbounds %struct.mp_thread_pool, %struct.mp_thread_pool* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load %struct.mp_thread_pool*, %struct.mp_thread_pool** %3, align 8
  %24 = getelementptr inbounds %struct.mp_thread_pool, %struct.mp_thread_pool* %23, i32 0, i32 5
  store i32* null, i32** %24, align 8
  %25 = load %struct.mp_thread_pool*, %struct.mp_thread_pool** %3, align 8
  %26 = getelementptr inbounds %struct.mp_thread_pool, %struct.mp_thread_pool* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = load %struct.mp_thread_pool*, %struct.mp_thread_pool** %3, align 8
  %28 = getelementptr inbounds %struct.mp_thread_pool, %struct.mp_thread_pool* %27, i32 0, i32 3
  %29 = call i32 @pthread_mutex_unlock(i32* %28)
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %41, %1
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pthread_join(i32 %39, i32* null)
  br label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %30

44:                                               ; preds = %30
  %45 = load %struct.mp_thread_pool*, %struct.mp_thread_pool** %3, align 8
  %46 = getelementptr inbounds %struct.mp_thread_pool, %struct.mp_thread_pool* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.mp_thread_pool*, %struct.mp_thread_pool** %3, align 8
  %52 = getelementptr inbounds %struct.mp_thread_pool, %struct.mp_thread_pool* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load %struct.mp_thread_pool*, %struct.mp_thread_pool** %3, align 8
  %58 = getelementptr inbounds %struct.mp_thread_pool, %struct.mp_thread_pool* %57, i32 0, i32 4
  %59 = call i32 @pthread_cond_destroy(i32* %58)
  %60 = load %struct.mp_thread_pool*, %struct.mp_thread_pool** %3, align 8
  %61 = getelementptr inbounds %struct.mp_thread_pool, %struct.mp_thread_pool* %60, i32 0, i32 3
  %62 = call i32 @pthread_mutex_destroy(i32* %61)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_broadcast(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_cond_destroy(i32*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

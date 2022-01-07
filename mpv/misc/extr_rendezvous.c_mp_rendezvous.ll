; ModuleID = '/home/carl/AnghaBench/mpv/misc/extr_rendezvous.c_mp_rendezvous.c'
source_filename = "/home/carl/AnghaBench/mpv/misc/extr_rendezvous.c_mp_rendezvous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waiter = type { i8*, i64*, %struct.waiter* }

@lock = common dso_local global i32 0, align 4
@waiters = common dso_local global %struct.waiter* null, align 8
@wakeup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mp_rendezvous(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.waiter, align 8
  %6 = alloca %struct.waiter**, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = getelementptr inbounds %struct.waiter, %struct.waiter* %5, i32 0, i32 0
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %8, align 8
  %10 = getelementptr inbounds %struct.waiter, %struct.waiter* %5, i32 0, i32 1
  store i64* %4, i64** %10, align 8
  %11 = getelementptr inbounds %struct.waiter, %struct.waiter* %5, i32 0, i32 2
  store %struct.waiter* null, %struct.waiter** %11, align 8
  %12 = call i32 @pthread_mutex_lock(i32* @lock)
  store %struct.waiter** @waiters, %struct.waiter*** %6, align 8
  br label %13

13:                                               ; preds = %45, %2
  %14 = load %struct.waiter**, %struct.waiter*** %6, align 8
  %15 = load %struct.waiter*, %struct.waiter** %14, align 8
  %16 = icmp ne %struct.waiter* %15, null
  br i1 %16, label %17, label %49

17:                                               ; preds = %13
  %18 = load %struct.waiter**, %struct.waiter*** %6, align 8
  %19 = load %struct.waiter*, %struct.waiter** %18, align 8
  %20 = getelementptr inbounds %struct.waiter, %struct.waiter* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = icmp eq i8* %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %17
  %25 = load %struct.waiter**, %struct.waiter*** %6, align 8
  %26 = load %struct.waiter*, %struct.waiter** %25, align 8
  %27 = getelementptr inbounds %struct.waiter, %struct.waiter* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.waiter**, %struct.waiter*** %6, align 8
  %32 = load %struct.waiter*, %struct.waiter** %31, align 8
  %33 = getelementptr inbounds %struct.waiter, %struct.waiter* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  store i64 %30, i64* %34, align 8
  %35 = load i64, i64* %7, align 8
  store i64 %35, i64* %4, align 8
  %36 = load %struct.waiter**, %struct.waiter*** %6, align 8
  %37 = load %struct.waiter*, %struct.waiter** %36, align 8
  %38 = getelementptr inbounds %struct.waiter, %struct.waiter* %37, i32 0, i32 1
  store i64* null, i64** %38, align 8
  %39 = load %struct.waiter**, %struct.waiter*** %6, align 8
  %40 = load %struct.waiter*, %struct.waiter** %39, align 8
  %41 = getelementptr inbounds %struct.waiter, %struct.waiter* %40, i32 0, i32 2
  %42 = load %struct.waiter*, %struct.waiter** %41, align 8
  %43 = load %struct.waiter**, %struct.waiter*** %6, align 8
  store %struct.waiter* %42, %struct.waiter** %43, align 8
  %44 = call i32 @pthread_cond_broadcast(i32* @wakeup)
  br label %58

45:                                               ; preds = %17
  %46 = load %struct.waiter**, %struct.waiter*** %6, align 8
  %47 = load %struct.waiter*, %struct.waiter** %46, align 8
  %48 = getelementptr inbounds %struct.waiter, %struct.waiter* %47, i32 0, i32 2
  store %struct.waiter** %48, %struct.waiter*** %6, align 8
  br label %13

49:                                               ; preds = %13
  %50 = load %struct.waiter**, %struct.waiter*** %6, align 8
  store %struct.waiter* %5, %struct.waiter** %50, align 8
  br label %51

51:                                               ; preds = %55, %49
  %52 = getelementptr inbounds %struct.waiter, %struct.waiter* %5, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = icmp ne i64* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i32 @pthread_cond_wait(i32* @wakeup, i32* @lock)
  br label %51

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57, %24
  %59 = call i32 @pthread_mutex_unlock(i32* @lock)
  %60 = load i64, i64* %4, align 8
  ret i64 %60
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_broadcast(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

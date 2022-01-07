; ModuleID = '/home/carl/AnghaBench/nanomsg/src/utils/extr_thread_posix.inc_nn_thread_init.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/utils/extr_thread_posix.inc_nn_thread_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_thread = type { i32, i8*, i32* }

@SIG_BLOCK = common dso_local global i32 0, align 4
@nn_thread_main_routine = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_thread_init(%struct.nn_thread* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.nn_thread*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nn_thread* %0, %struct.nn_thread** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = call i32 @sigfillset(i32* %8)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @errno_assert(i32 %13)
  %15 = load i32, i32* @SIG_BLOCK, align 4
  %16 = call i32 @pthread_sigmask(i32 %15, i32* %8, i32* %9)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @errnum_assert(i32 %19, i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.nn_thread*, %struct.nn_thread** %4, align 8
  %24 = getelementptr inbounds %struct.nn_thread, %struct.nn_thread* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.nn_thread*, %struct.nn_thread** %4, align 8
  %27 = getelementptr inbounds %struct.nn_thread, %struct.nn_thread* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load %struct.nn_thread*, %struct.nn_thread** %4, align 8
  %29 = getelementptr inbounds %struct.nn_thread, %struct.nn_thread* %28, i32 0, i32 0
  %30 = load i32, i32* @nn_thread_main_routine, align 4
  %31 = load %struct.nn_thread*, %struct.nn_thread** %4, align 8
  %32 = bitcast %struct.nn_thread* %31 to i8*
  %33 = call i32 @pthread_create(i32* %29, i32* null, i32 %30, i8* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @errnum_assert(i32 %36, i32 %37)
  %39 = load i32, i32* @SIG_SETMASK, align 4
  %40 = call i32 @pthread_sigmask(i32 %39, i32* %9, i32* null)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @errnum_assert(i32 %43, i32 %44)
  ret void
}

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @errno_assert(i32) #1

declare dso_local i32 @pthread_sigmask(i32, i32*, i32*) #1

declare dso_local i32 @errnum_assert(i32, i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}

; ModuleID = '/home/carl/AnghaBench/nanomsg/src/aio/extr_usock_posix.inc_nn_usock_init_from_fd.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/aio/extr_usock_posix.inc_nn_usock_init_from_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_usock = type { i64, i32 }

@NN_USOCK_STATE_IDLE = common dso_local global i64 0, align 8
@NN_USOCK_STATE_BEING_ACCEPTED = common dso_local global i64 0, align 8
@F_GETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@FD_CLOEXEC = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_NOSIGPIPE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nn_usock*, i32)* @nn_usock_init_from_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_usock_init_from_fd(%struct.nn_usock* %0, i32 %1) #0 {
  %3 = alloca %struct.nn_usock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nn_usock* %0, %struct.nn_usock** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nn_usock*, %struct.nn_usock** %3, align 8
  %8 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @NN_USOCK_STATE_IDLE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.nn_usock*, %struct.nn_usock** %3, align 8
  %14 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NN_USOCK_STATE_BEING_ACCEPTED, align 8
  %17 = icmp eq i64 %15, %16
  br label %18

18:                                               ; preds = %12, %2
  %19 = phi i1 [ true, %2 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @nn_assert(i32 %20)
  %22 = load %struct.nn_usock*, %struct.nn_usock** %3, align 8
  %23 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, -1
  %26 = zext i1 %25 to i32
  %27 = call i32 @nn_assert(i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.nn_usock*, %struct.nn_usock** %3, align 8
  %30 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.nn_usock*, %struct.nn_usock** %3, align 8
  %32 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @F_GETFL, align 4
  %35 = call i32 @fcntl(i32 %33, i32 %34, i32 0)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %38, %18
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @O_NONBLOCK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %39
  %45 = load %struct.nn_usock*, %struct.nn_usock** %3, align 8
  %46 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @F_SETFL, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @O_NONBLOCK, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @fcntl(i32 %47, i32 %48, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, -1
  %55 = zext i1 %54 to i32
  %56 = call i32 @errno_assert(i32 %55)
  br label %57

57:                                               ; preds = %44, %39
  ret void
}

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @errno_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

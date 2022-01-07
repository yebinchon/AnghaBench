; ModuleID = '/home/carl/AnghaBench/nanomsg/src/core/extr_global.c_nn_global_hold_socket_locked.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/core/extr_global.c_nn_global_hold_socket_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.nn_sock** }
%struct.nn_sock = type { i32 }

@NN_MAX_SOCKETS = common dso_local global i32 0, align 4
@self = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_global_hold_socket_locked(%struct.nn_sock** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nn_sock**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nn_sock*, align 8
  store %struct.nn_sock** %0, %struct.nn_sock*** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @NN_MAX_SOCKETS, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load %struct.nn_sock**, %struct.nn_sock*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @self, i32 0, i32 0), align 8
  %15 = icmp eq %struct.nn_sock** %14, null
  br label %16

16:                                               ; preds = %13, %9, %2
  %17 = phi i1 [ true, %9 ], [ true, %2 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = call i64 @nn_slow(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EBADF, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %51

24:                                               ; preds = %16
  %25 = load %struct.nn_sock**, %struct.nn_sock*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @self, i32 0, i32 0), align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.nn_sock*, %struct.nn_sock** %25, i64 %27
  %29 = load %struct.nn_sock*, %struct.nn_sock** %28, align 8
  store %struct.nn_sock* %29, %struct.nn_sock** %6, align 8
  %30 = load %struct.nn_sock*, %struct.nn_sock** %6, align 8
  %31 = icmp eq %struct.nn_sock* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i64 @nn_slow(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load i32, i32* @EBADF, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %51

38:                                               ; preds = %24
  %39 = load %struct.nn_sock*, %struct.nn_sock** %6, align 8
  %40 = call i64 @nn_sock_hold(%struct.nn_sock* %39)
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i64 @nn_slow(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* @EBADF, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %51

48:                                               ; preds = %38
  %49 = load %struct.nn_sock*, %struct.nn_sock** %6, align 8
  %50 = load %struct.nn_sock**, %struct.nn_sock*** %4, align 8
  store %struct.nn_sock* %49, %struct.nn_sock** %50, align 8
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %48, %45, %35, %21
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i64 @nn_sock_hold(%struct.nn_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

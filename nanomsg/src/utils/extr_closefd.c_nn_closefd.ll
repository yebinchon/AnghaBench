; ModuleID = '/home/carl/AnghaBench/nanomsg/src/utils/extr_closefd.c_nn_closefd.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/utils/extr_closefd.c_nn_closefd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@ECONNRESET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_closefd(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i64 @nn_slow(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %43

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @close(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i64 @nn_fast(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %43

19:                                               ; preds = %10
  %20 = load i64, i64* @errno, align 8
  %21 = load i64, i64* @EINTR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %39, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @ETIMEDOUT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @EWOULDBLOCK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* @errno, align 8
  %33 = load i64, i64* @EINPROGRESS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* @errno, align 8
  %37 = load i64, i64* @ECONNRESET, align 8
  %38 = icmp eq i64 %36, %37
  br label %39

39:                                               ; preds = %35, %31, %27, %23, %19
  %40 = phi i1 [ true, %31 ], [ true, %27 ], [ true, %23 ], [ true, %19 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @errno_assert(i32 %41)
  br label %43

43:                                               ; preds = %39, %18, %9
  ret void
}

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @nn_fast(i32) #1

declare dso_local i32 @errno_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

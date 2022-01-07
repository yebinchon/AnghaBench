; ModuleID = '/home/carl/AnghaBench/micropython/ports/windows/extr_sleep.c_usleep_impl.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/windows/extr_sleep.c_usleep_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@waitTimer = common dso_local global i32* null, align 8
@EAGAIN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@LLONG_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usleep_impl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32*, i32** @waitTimer, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @EAGAIN, align 4
  store i32 %8, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %37

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @LLONG_MAX, align 4
  %15 = sdiv i32 %14, 10
  %16 = icmp sgt i32 %13, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %12, %9
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %37

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = mul nsw i32 -10, %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** @waitTimer, align 8
  %24 = call i64 @SetWaitableTimer(i32* %23, %struct.TYPE_3__* %4, i32 0, i32* null, i32* null, i32 0)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %37

28:                                               ; preds = %19
  %29 = load i32*, i32** @waitTimer, align 8
  %30 = load i32, i32* @INFINITE, align 4
  %31 = call i64 @WaitForSingleObject(i32* %29, i32 %30)
  %32 = load i64, i64* @WAIT_OBJECT_0, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @EAGAIN, align 4
  store i32 %35, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %37

36:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %34, %26, %17, %7
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @SetWaitableTimer(i32*, %struct.TYPE_3__*, i32, i32*, i32*, i32) #1

declare dso_local i64 @WaitForSingleObject(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

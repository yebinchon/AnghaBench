; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_threading-windows.c_os_event_timedwait.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_threading-windows.c_os_event_timedwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@WAIT_TIMEOUT = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @os_event_timedwait(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  store i32 %10, i32* %3, align 4
  br label %29

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = ptrtoint i32* %12 to i32
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @WaitForSingleObject(i32 %13, i64 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @WAIT_TIMEOUT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %20, i32* %3, align 4
  br label %29

21:                                               ; preds = %11
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @WAIT_OBJECT_0, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %3, align 4
  br label %29

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %25, %19, %9
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @WaitForSingleObject(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

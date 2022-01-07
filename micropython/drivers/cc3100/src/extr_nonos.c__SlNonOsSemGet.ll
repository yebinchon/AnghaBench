; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3100/src/extr_nonos.c__SlNonOsSemGet.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3100/src/extr_nonos.c__SlNonOsSemGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NONOS_WAIT_FOREVER = common dso_local global i64 0, align 8
@NONOS_RET_ERR = common dso_local global i32 0, align 4
@NONOS_RET_OK = common dso_local global i32 0, align 4
@NONOS_NO_WAIT = common dso_local global i64 0, align 8
@__NON_OS_SYNC_OBJ_SIGNAL_VALUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_SlNonOsSemGet(i64* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  br label %10

10:                                               ; preds = %28, %4
  %11 = load i64, i64* %9, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = load i64, i64* %7, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %14, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i64, i64* %8, align 8
  %20 = load i64*, i64** %6, align 8
  store i64 %19, i64* %20, align 8
  br label %30

21:                                               ; preds = %13
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @NONOS_WAIT_FOREVER, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i64, i64* %9, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %9, align 8
  br label %28

28:                                               ; preds = %25, %21
  %29 = call i32 (...) @_SlNonOsMainLoopTask()
  br label %10

30:                                               ; preds = %18, %10
  %31 = load i64, i64* %9, align 8
  %32 = icmp eq i64 0, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @NONOS_RET_ERR, align 4
  store i32 %34, i32* %5, align 4
  br label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @NONOS_RET_OK, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @_SlNonOsMainLoopTask(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

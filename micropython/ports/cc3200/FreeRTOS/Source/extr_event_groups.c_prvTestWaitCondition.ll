; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/extr_event_groups.c_prvTestWaitCondition.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/FreeRTOS/Source/extr_event_groups.c_prvTestWaitCondition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pdFALSE = common dso_local global i64 0, align 8
@pdTRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i64)* @prvTestWaitCondition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @prvTestWaitCondition(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* @pdFALSE, align 8
  store i64 %8, i64* %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @pdFALSE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i64, i64* @pdTRUE, align 8
  store i64 %18, i64* %7, align 8
  br label %21

19:                                               ; preds = %12
  %20 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %21

21:                                               ; preds = %19, %17
  br label %33

22:                                               ; preds = %3
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i64, i64* @pdTRUE, align 8
  store i64 %29, i64* %7, align 8
  br label %32

30:                                               ; preds = %22
  %31 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %32

32:                                               ; preds = %30, %28
  br label %33

33:                                               ; preds = %32, %21
  %34 = load i64, i64* %7, align 8
  ret i64 %34
}

declare dso_local i32 @mtCOVERAGE_TEST_MARKER(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

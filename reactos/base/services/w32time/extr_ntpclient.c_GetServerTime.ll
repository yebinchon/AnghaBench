; ModuleID = '/home/carl/AnghaBench/reactos/base/services/w32time/extr_ntpclient.c_GetServerTime.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/w32time/extr_ntpclient.c_GetServerTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CP_ACP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetServerTime(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @wcslen(i32 %7)
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = call i32 (...) @GetProcessHeap()
  %11 = call i64 @HeapAlloc(i32 %10, i32 0, i32 4)
  store i64 %11, i64* %3, align 8
  %12 = call i32 (...) @GetProcessHeap()
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @HeapAlloc(i32 %12, i32 0, i32 %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %1
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %17
  %21 = load i32, i32* @CP_ACP, align 4
  %22 = load i32, i32* %2, align 4
  %23 = load i64, i64* %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @WideCharToMultiByte(i32 %21, i32 0, i32 %22, i32 -1, i64 %23, i32 %24, i32* null, i32* null)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %20
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call i64 @InitConnection(i64 %28, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load i64, i64* %3, align 8
  %34 = call i64 @SendData(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @ReceiveData(i64 %37)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %36, %32
  br label %40

40:                                               ; preds = %39, %27
  %41 = call i32 (...) @DestroyConnection()
  br label %42

42:                                               ; preds = %40, %20
  br label %43

43:                                               ; preds = %42, %17, %1
  %44 = load i64, i64* %3, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = call i32 (...) @GetProcessHeap()
  %48 = load i64, i64* %3, align 8
  %49 = call i32 @HeapFree(i32 %47, i32 0, i64 %48)
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i64, i64* %4, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = call i32 (...) @GetProcessHeap()
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @HeapFree(i32 %54, i32 0, i64 %55)
  br label %57

57:                                               ; preds = %53, %50
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @wcslen(i32) #1

declare dso_local i64 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @WideCharToMultiByte(i32, i32, i32, i32, i64, i32, i32*, i32*) #1

declare dso_local i64 @InitConnection(i64, i64) #1

declare dso_local i64 @SendData(i64) #1

declare dso_local i32 @ReceiveData(i64) #1

declare dso_local i32 @DestroyConnection(...) #1

declare dso_local i32 @HeapFree(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

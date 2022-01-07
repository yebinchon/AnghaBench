; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/notepad/extr_dialog.c_GetSelectionText.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/notepad/extr_dialog.c_GetSelectionText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EM_GETSEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetSelectionText(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %71

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @EM_GETSEL, align 4
  %19 = ptrtoint i64* %8 to i32
  %20 = ptrtoint i64* %9 to i32
  %21 = call i32 @SendMessage(i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %71

26:                                               ; preds = %16
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @GetWindowTextLength(i32 %27)
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %10, align 8
  %30 = call i32 (...) @GetProcessHeap()
  %31 = load i64, i64* %10, align 8
  %32 = mul i64 %31, 4
  %33 = call i64 @HeapAlloc(i32 %30, i32 0, i64 %32)
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %12, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %71

37:                                               ; preds = %26
  %38 = load i32, i32* %5, align 4
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i64 @GetWindowText(i32 %38, i64 %39, i64 %40)
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %37
  %45 = call i32 (...) @GetProcessHeap()
  %46 = load i64, i64* %12, align 8
  %47 = call i32 @HeapFree(i32 %45, i32 0, i64 %46)
  store i32 0, i32* %4, align 4
  br label %71

48:                                               ; preds = %37
  %49 = load i64, i64* %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* %8, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %8, align 8
  %56 = sub nsw i64 %54, %55
  %57 = call i32 @StringCchCopyN(i64 %49, i32 %50, i64 %53, i64 %56)
  store i32 %57, i32* %11, align 4
  %58 = call i32 (...) @GetProcessHeap()
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @HeapFree(i32 %58, i32 0, i64 %59)
  %61 = load i32, i32* %11, align 4
  switch i32 %61, label %70 [
    i32 128, label %62
    i32 129, label %67
  ]

62:                                               ; preds = %48
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %8, align 8
  %65 = sub nsw i64 %63, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %4, align 4
  br label %71

67:                                               ; preds = %48
  %68 = load i32, i32* %7, align 4
  %69 = sub nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %71

70:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %67, %62, %44, %36, %25, %15
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i64 @GetWindowTextLength(i32) #1

declare dso_local i64 @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @GetWindowText(i32, i64, i64) #1

declare dso_local i32 @HeapFree(i32, i32, i64) #1

declare dso_local i32 @StringCchCopyN(i64, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

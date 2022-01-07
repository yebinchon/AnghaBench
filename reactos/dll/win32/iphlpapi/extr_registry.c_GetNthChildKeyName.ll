; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_registry.c_GetNthChildKeyName.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_registry.c_GetNthChildKeyName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @GetNthChildKeyName(i32 %0, i64 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @GetLongestChildKeyName(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i64* null, i64** %3, align 8
  br label %45

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %9, align 8
  %18 = call i32 (...) @GetProcessHeap()
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = call i64 @HeapAlloc(i32 %18, i32 0, i32 %22)
  %24 = inttoptr i64 %23 to i64*
  store i64* %24, i64** %8, align 8
  %25 = load i64*, i64** %8, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %15
  store i64* null, i64** %3, align 8
  br label %45

28:                                               ; preds = %15
  %29 = load i32, i32* %4, align 4
  %30 = load i64, i64* %5, align 8
  %31 = load i64*, i64** %8, align 8
  %32 = call i64 @RegEnumKeyExW(i32 %29, i64 %30, i64* %31, i64* %9, i32* null, i32* null, i32* null, i32* null)
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @ERROR_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = call i32 (...) @GetProcessHeap()
  %38 = load i64*, i64** %8, align 8
  %39 = call i32 @HeapFree(i32 %37, i32 0, i64* %38)
  store i64* null, i64** %3, align 8
  br label %45

40:                                               ; preds = %28
  %41 = load i64*, i64** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  store i64 0, i64* %43, align 8
  %44 = load i64*, i64** %8, align 8
  store i64* %44, i64** %3, align 8
  br label %45

45:                                               ; preds = %40, %36, %27, %14
  %46 = load i64*, i64** %3, align 8
  ret i64* %46
}

declare dso_local i32 @GetLongestChildKeyName(i32) #1

declare dso_local i64 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @RegEnumKeyExW(i32, i64, i64*, i64*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

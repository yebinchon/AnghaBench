; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_convert_usages_str_to_usage.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_convert_usages_str_to_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64*)* @convert_usages_str_to_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @convert_usages_str_to_usage(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  store i64* %0, i64** %2, align 8
  %6 = call i32 (...) @GetProcessHeap()
  %7 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %8 = call i32* @HeapAlloc(i32 %6, i32 %7, i32 4)
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %54

11:                                               ; preds = %1
  %12 = load i64*, i64** %2, align 8
  store i64* %12, i64** %4, align 8
  %13 = load i64*, i64** %4, align 8
  %14 = call i64* @strchr(i64* %13, i8 signext 44)
  store i64* %14, i64** %5, align 8
  br label %15

15:                                               ; preds = %51, %11
  %16 = load i32*, i32** %3, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i64*, i64** %4, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i64*, i64** %4, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %21, %18, %15
  %26 = phi i1 [ false, %18 ], [ false, %15 ], [ %24, %21 ]
  br i1 %26, label %27, label %53

27:                                               ; preds = %25
  %28 = load i64*, i64** %5, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i64*, i64** %5, align 8
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i32*, i32** %3, align 8
  %34 = load i64*, i64** %4, align 8
  %35 = call i32* @add_oid_to_usage(i32* %33, i64* %34)
  store i32* %35, i32** %3, align 8
  br label %36

36:                                               ; preds = %32
  %37 = load i64*, i64** %5, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i64*, i64** %5, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  br label %43

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %39
  %44 = phi i64* [ %41, %39 ], [ null, %42 ]
  store i64* %44, i64** %4, align 8
  %45 = load i64*, i64** %4, align 8
  %46 = icmp ne i64* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i64*, i64** %4, align 8
  %49 = call i64* @strchr(i64* %48, i8 signext 44)
  br label %51

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %47
  %52 = phi i64* [ %49, %47 ], [ null, %50 ]
  store i64* %52, i64** %5, align 8
  br label %15

53:                                               ; preds = %25
  br label %54

54:                                               ; preds = %53, %1
  %55 = load i32*, i32** %3, align 8
  ret i32* %55
}

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64* @strchr(i64*, i8 signext) #1

declare dso_local i32* @add_oid_to_usage(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/base/system/msiexec/extr_msiexec.c_msi_strprefix.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/msiexec/extr_msiexec.c_msi_strprefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CP_ACP = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@NORM_IGNORECASE = common dso_local global i32 0, align 4
@CSTR_EQUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @msi_strprefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi_strprefix(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @CP_ACP, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @MultiByteToWideChar(i32 %9, i32 0, i32 %10, i32 -1, i32* null, i32 0)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %3, align 4
  br label %52

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @lstrlenW(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = sub nsw i32 %19, 1
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %3, align 4
  br label %52

24:                                               ; preds = %16
  %25 = call i32 (...) @GetProcessHeap()
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 4, %27
  %29 = trunc i64 %28 to i32
  %30 = call i32* @HeapAlloc(i32 %25, i32 0, i32 %29)
  store i32* %30, i32** %8, align 8
  %31 = load i32, i32* @CP_ACP, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @MultiByteToWideChar(i32 %31, i32 0, i32 %32, i32 -1, i32* %33, i32 %34)
  %36 = call i32 (...) @GetThreadLocale()
  %37 = load i32, i32* @NORM_IGNORECASE, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %42, 1
  %44 = call i32 @CompareStringW(i32 %36, i32 %37, i32 %38, i32 %40, i32* %41, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = call i32 (...) @GetProcessHeap()
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @HeapFree(i32 %45, i32 0, i32* %46)
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @CSTR_EQUAL, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %24, %22, %14
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @lstrlenW(i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @CompareStringW(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @GetThreadLocale(...) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

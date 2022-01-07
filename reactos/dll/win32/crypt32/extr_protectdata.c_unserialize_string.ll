; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_protectdata.c_unserialize_string.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_protectdata.c_unserialize_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64*, i64, i64, i64, i64, i32**, i64*)* @unserialize_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @unserialize_string(i32* %0, i64* %1, i64 %2, i64 %3, i64 %4, i64 %5, i32** %6, i64* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i64*, align 8
  store i32* %0, i32** %10, align 8
  store i64* %1, i64** %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i32** %6, i32*** %16, align 8
  store i64* %7, i64** %17, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %8
  %21 = load i32**, i32*** %16, align 8
  %22 = icmp ne i32** %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20, %8
  %24 = load i64, i64* @FALSE, align 8
  store i64 %24, i64* %9, align 8
  br label %81

25:                                               ; preds = %20
  %26 = load i64, i64* %15, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i32*, i32** %10, align 8
  %30 = load i64*, i64** %11, align 8
  %31 = load i64, i64* %12, align 8
  %32 = call i32 @unserialize_dword(i32* %29, i64* %30, i64 %31, i64* %13)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = load i64, i64* @FALSE, align 8
  store i64 %35, i64* %9, align 8
  br label %81

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %25
  %38 = load i64*, i64** %11, align 8
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* %14, align 8
  %42 = mul nsw i64 %40, %41
  %43 = add nsw i64 %39, %42
  %44 = load i64, i64* %12, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i64, i64* @FALSE, align 8
  store i64 %47, i64* %9, align 8
  br label %81

48:                                               ; preds = %37
  %49 = load i64, i64* %13, align 8
  %50 = load i64, i64* %14, align 8
  %51 = mul nsw i64 %49, %50
  %52 = call i32* @CryptMemAlloc(i64 %51)
  %53 = load i32**, i32*** %16, align 8
  store i32* %52, i32** %53, align 8
  %54 = icmp ne i32* %52, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %48
  %56 = load i64, i64* @FALSE, align 8
  store i64 %56, i64* %9, align 8
  br label %81

57:                                               ; preds = %48
  %58 = load i32**, i32*** %16, align 8
  %59 = load i32*, i32** %58, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = load i64*, i64** %11, align 8
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* %14, align 8
  %66 = mul nsw i64 %64, %65
  %67 = call i32 @memcpy(i32* %59, i32* %63, i64 %66)
  %68 = load i64*, i64** %17, align 8
  %69 = icmp ne i64* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %57
  %71 = load i64, i64* %13, align 8
  %72 = load i64*, i64** %17, align 8
  store i64 %71, i64* %72, align 8
  br label %73

73:                                               ; preds = %70, %57
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* %14, align 8
  %76 = mul nsw i64 %74, %75
  %77 = load i64*, i64** %11, align 8
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, %76
  store i64 %79, i64* %77, align 8
  %80 = load i64, i64* @TRUE, align 8
  store i64 %80, i64* %9, align 8
  br label %81

81:                                               ; preds = %73, %55, %46, %34, %23
  %82 = load i64, i64* %9, align 8
  ret i64 %82
}

declare dso_local i32 @unserialize_dword(i32*, i64*, i64, i64*) #1

declare dso_local i32* @CryptMemAlloc(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

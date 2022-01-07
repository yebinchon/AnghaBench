; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_token.c_kull_m_token_getSidDomainFromName.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_token.c_kull_m_token_getSidDomainFromName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@LPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kull_m_token_getSidDomainFromName(i32 %0, i32** %1, i32** %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32** %1, i32*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %11, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32*, i32** %9, align 8
  br label %22

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32* [ %20, %19 ], [ %12, %21 ]
  store i32* %23, i32** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32*, i32** %13, align 8
  %27 = call i64 @LookupAccountName(i32 %24, i32 %25, i32* null, i32* %14, i32* null, i32* %15, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %82, label %29

29:                                               ; preds = %22
  %30 = call i64 (...) @GetLastError()
  %31 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %82

33:                                               ; preds = %29
  %34 = load i32, i32* @LPTR, align 4
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call i64 @LocalAlloc(i32 %34, i32 %38)
  %40 = inttoptr i64 %39 to i32*
  %41 = load i32**, i32*** %7, align 8
  store i32* %40, i32** %41, align 8
  %42 = icmp ne i32* %40, null
  br i1 %42, label %43, label %81

43:                                               ; preds = %33
  %44 = load i32, i32* @LPTR, align 4
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = trunc i64 %47 to i32
  %49 = call i64 @LocalAlloc(i32 %44, i32 %48)
  %50 = inttoptr i64 %49 to i32*
  %51 = load i32**, i32*** %8, align 8
  store i32* %50, i32** %51, align 8
  %52 = icmp ne i32* %50, null
  br i1 %52, label %53, label %71

53:                                               ; preds = %43
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32**, i32*** %7, align 8
  %57 = load i32*, i32** %56, align 8
  %58 = load i32**, i32*** %8, align 8
  %59 = load i32*, i32** %58, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = call i64 @LookupAccountName(i32 %54, i32 %55, i32* %57, i32* %14, i32* %59, i32* %15, i32* %60)
  store i64 %61, i64* %11, align 8
  %62 = load i64, i64* %11, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %53
  %65 = load i32**, i32*** %8, align 8
  %66 = load i32*, i32** %65, align 8
  %67 = call i64 @LocalFree(i32* %66)
  %68 = inttoptr i64 %67 to i32*
  %69 = load i32**, i32*** %8, align 8
  store i32* %68, i32** %69, align 8
  br label %70

70:                                               ; preds = %64, %53
  br label %71

71:                                               ; preds = %70, %43
  %72 = load i64, i64* %11, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = load i32**, i32*** %7, align 8
  %76 = load i32*, i32** %75, align 8
  %77 = call i64 @LocalFree(i32* %76)
  %78 = inttoptr i64 %77 to i32*
  %79 = load i32**, i32*** %7, align 8
  store i32* %78, i32** %79, align 8
  br label %80

80:                                               ; preds = %74, %71
  br label %81

81:                                               ; preds = %80, %33
  br label %82

82:                                               ; preds = %81, %29, %22
  %83 = load i64, i64* %11, align 8
  ret i64 %83
}

declare dso_local i64 @LookupAccountName(i32, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i64 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

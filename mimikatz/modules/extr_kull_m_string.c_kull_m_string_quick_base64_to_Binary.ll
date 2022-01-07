; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_string.c_kull_m_string_quick_base64_to_Binary.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_string.c_kull_m_string_quick_base64_to_Binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@CRYPT_STRING_BASE64 = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kull_m_string_quick_base64_to_Binary(i32 %0, i32** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load i64, i64* @FALSE, align 8
  store i64 %8, i64* %7, align 8
  %9 = load i32**, i32*** %5, align 8
  store i32* null, i32** %9, align 8
  %10 = load i64*, i64** %6, align 8
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @CRYPT_STRING_BASE64, align 4
  %13 = load i64*, i64** %6, align 8
  %14 = call i64 @CryptStringToBinary(i32 %11, i32 0, i32 %12, i32* null, i64* %13, i32* null, i32* null)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %3
  %17 = load i32, i32* @LPTR, align 4
  %18 = load i64*, i64** %6, align 8
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @LocalAlloc(i32 %17, i64 %19)
  %21 = inttoptr i64 %20 to i32*
  %22 = load i32**, i32*** %5, align 8
  store i32* %21, i32** %22, align 8
  %23 = icmp ne i32* %21, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @CRYPT_STRING_BASE64, align 4
  %27 = load i32**, i32*** %5, align 8
  %28 = load i32*, i32** %27, align 8
  %29 = load i64*, i64** %6, align 8
  %30 = call i64 @CryptStringToBinary(i32 %25, i32 0, i32 %26, i32* %28, i64* %29, i32* null, i32* null)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %24
  %34 = load i32**, i32*** %5, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @LocalFree(i32* %35)
  %37 = inttoptr i64 %36 to i32*
  %38 = load i32**, i32*** %5, align 8
  store i32* %37, i32** %38, align 8
  br label %39

39:                                               ; preds = %33, %24
  br label %40

40:                                               ; preds = %39, %16
  br label %41

41:                                               ; preds = %40, %3
  %42 = load i64, i64* %7, align 8
  ret i64 %42
}

declare dso_local i64 @CryptStringToBinary(i32, i32, i32, i32*, i64*, i32*, i32*) #1

declare dso_local i64 @LocalAlloc(i32, i64) #1

declare dso_local i64 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

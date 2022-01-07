; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_dh_simpleEncrypt.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_dh_simpleEncrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kull_m_crypto_dh_simpleEncrypt(i32 %0, i32* %1, i32 %2, i32** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* %11, align 8
  %14 = load i32**, i32*** %9, align 8
  store i32* null, i32** %14, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32*, i32** %10, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @CryptDuplicateKey(i32 %17, i32* null, i32 0, i32* %12)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %57

20:                                               ; preds = %5
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @TRUE, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = call i64 @CryptEncrypt(i32 %21, i32 0, i32 %22, i32 0, i32* null, i32* %23, i32 0)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %20
  %27 = load i32, i32* @LPTR, align 4
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32* @LocalAlloc(i32 %27, i32 %29)
  %31 = load i32**, i32*** %9, align 8
  store i32* %30, i32** %31, align 8
  %32 = icmp ne i32* %30, null
  br i1 %32, label %33, label %53

33:                                               ; preds = %26
  %34 = load i32**, i32*** %9, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @RtlCopyMemory(i32* %35, i32* %36, i32 %37)
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @TRUE, align 4
  %41 = load i32**, i32*** %9, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @CryptEncrypt(i32 %39, i32 0, i32 %40, i32 0, i32* %42, i32* %8, i32 %44)
  store i64 %45, i64* %11, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %33
  %48 = load i32**, i32*** %9, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = call i32* @LocalFree(i32* %49)
  %51 = load i32**, i32*** %9, align 8
  store i32* %50, i32** %51, align 8
  br label %52

52:                                               ; preds = %47, %33
  br label %53

53:                                               ; preds = %52, %26
  br label %54

54:                                               ; preds = %53, %20
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @CryptDestroyKey(i32 %55)
  br label %57

57:                                               ; preds = %54, %5
  %58 = load i64, i64* %11, align 8
  ret i64 %58
}

declare dso_local i64 @CryptDuplicateKey(i32, i32*, i32, i32*) #1

declare dso_local i64 @CryptEncrypt(i32, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32* @LocalAlloc(i32, i32) #1

declare dso_local i32 @RtlCopyMemory(i32*, i32*, i32) #1

declare dso_local i32* @LocalFree(i32*) #1

declare dso_local i32 @CryptDestroyKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

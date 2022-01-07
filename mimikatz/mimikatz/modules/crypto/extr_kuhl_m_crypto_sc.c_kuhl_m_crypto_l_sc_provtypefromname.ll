; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/crypto/extr_kuhl_m_crypto_sc.c_kuhl_m_crypto_l_sc_provtypefromname.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/crypto/extr_kuhl_m_crypto_sc.c_kuhl_m_crypto_l_sc_provtypefromname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LPTR = common dso_local global i32 0, align 4
@ERROR_NO_MORE_ITEMS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i32] [i32 67, i32 114, i32 121, i32 112, i32 116, i32 69, i32 110, i32 117, i32 109, i32 80, i32 114, i32 111, i32 118, i32 105, i32 100, i32 101, i32 114, i32 115, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kuhl_m_crypto_l_sc_provtypefromname(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  store i64 0, i64* %3, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %3, align 8
  br label %8

8:                                                ; preds = %40, %1
  %9 = load i64, i64* %3, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @CryptEnumProviders(i64 %12, i32* null, i32 0, i64* %4, i32* null, i64* %5)
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i1 [ false, %8 ], [ %14, %11 ]
  br i1 %16, label %17, label %43

17:                                               ; preds = %15
  %18 = load i32, i32* @LPTR, align 4
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @LocalAlloc(i32 %18, i64 %19)
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %7, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %17
  %24 = load i64, i64* %6, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i64 @CryptEnumProviders(i64 %24, i32* null, i32 0, i64* %4, i32* %25, i64* %5)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load i32, i32* %2, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = call i64 @_wcsicmp(i32 %29, i32* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i64, i64* %4, align 8
  store i64 %34, i64* %3, align 8
  br label %35

35:                                               ; preds = %33, %28
  br label %36

36:                                               ; preds = %35, %23
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @LocalFree(i32* %37)
  br label %39

39:                                               ; preds = %36, %17
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %6, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %6, align 8
  br label %8

43:                                               ; preds = %15
  %44 = load i64, i64* %3, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = call i64 (...) @GetLastError()
  %48 = load i64, i64* @ERROR_NO_MORE_ITEMS, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([19 x i32]* @.str to i8*))
  br label %52

52:                                               ; preds = %50, %46, %43
  %53 = load i64, i64* %4, align 8
  ret i64 %53
}

declare dso_local i64 @CryptEnumProviders(i64, i32*, i32, i64*, i32*, i64*) #1

declare dso_local i64 @LocalAlloc(i32, i64) #1

declare dso_local i64 @_wcsicmp(i32, i32*) #1

declare dso_local i32 @LocalFree(i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

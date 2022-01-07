; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_close_hprov_delete_container.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_close_hprov_delete_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@PP_CONTAINER = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@PP_NAME = common dso_local global i32 0, align 4
@PP_PROVTYPE = common dso_local global i32 0, align 4
@CRYPT_DELETEKEYSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i32] [i32 67, i32 114, i32 121, i32 112, i32 116, i32 71, i32 101, i32 116, i32 80, i32 114, i32 111, i32 118, i32 80, i32 97, i32 114, i32 97, i32 109, i32 47, i32 67, i32 114, i32 121, i32 112, i32 116, i32 65, i32 99, i32 113, i32 117, i32 105, i32 114, i32 101, i32 67, i32 111, i32 110, i32 116, i32 101, i32 120, i32 116, i32 65, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_crypto_close_hprov_delete_container(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @PP_CONTAINER, align 4
  %11 = call i64 @CryptGetProvParam(i32 %9, i32 %10, i32* null, i32* %5, i32 0)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %65

13:                                               ; preds = %1
  %14 = load i32, i32* @LPTR, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @LocalAlloc(i32 %14, i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %64

18:                                               ; preds = %13
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @PP_CONTAINER, align 4
  %21 = load i64, i64* %6, align 8
  %22 = inttoptr i64 %21 to i32*
  %23 = call i64 @CryptGetProvParam(i32 %19, i32 %20, i32* %22, i32* %5, i32 0)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %63

25:                                               ; preds = %18
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @PP_NAME, align 4
  %28 = call i64 @CryptGetProvParam(i32 %26, i32 %27, i32* null, i32* %5, i32 0)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %25
  %31 = load i32, i32* @LPTR, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @LocalAlloc(i32 %31, i32 %32)
  store i64 %33, i64* %7, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %30
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @PP_NAME, align 4
  %38 = load i64, i64* %7, align 8
  %39 = inttoptr i64 %38 to i32*
  %40 = call i64 @CryptGetProvParam(i32 %36, i32 %37, i32* %39, i32* %5, i32 0)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %35
  store i32 4, i32* %5, align 4
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @PP_PROVTYPE, align 4
  %45 = call i64 @CryptGetProvParam(i32 %43, i32 %44, i32* %4, i32* %5, i32 0)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @CryptReleaseContext(i32 %48, i32 0)
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @CRYPT_DELETEKEYSET, align 4
  %54 = call i32 @CryptAcquireContextA(i32* %2, i64 %50, i64 %51, i32 %52, i32 %53)
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %47, %42
  br label %56

56:                                               ; preds = %55, %35
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @LocalFree(i64 %57)
  br label %59

59:                                               ; preds = %56, %30
  br label %60

60:                                               ; preds = %59, %25
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @LocalFree(i64 %61)
  br label %63

63:                                               ; preds = %60, %18
  br label %64

64:                                               ; preds = %63, %13
  br label %65

65:                                               ; preds = %64, %1
  %66 = load i32, i32* %3, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([39 x i32]* @.str to i8*))
  br label %70

70:                                               ; preds = %68, %65
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @CryptGetProvParam(i32, i32, i32*, i32*, i32) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i32 @CryptReleaseContext(i32, i32) #1

declare dso_local i32 @CryptAcquireContextA(i32*, i64, i64, i32, i32) #1

declare dso_local i32 @LocalFree(i64) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

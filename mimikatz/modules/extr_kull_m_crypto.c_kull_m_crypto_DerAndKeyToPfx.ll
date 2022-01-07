; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_DerAndKeyToPfx.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_DerAndKeyToPfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32* }

@FALSE = common dso_local global i32 0, align 4
@MS_ENHANCED_PROV = common dso_local global i32 0, align 4
@PROV_RSA_FULL = common dso_local global i32 0, align 4
@AT_KEYEXCHANGE = common dso_local global i32 0, align 4
@CRYPT_NEWKEYSET = common dso_local global i32 0, align 4
@CRYPT_EXPORTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i32] [i32 67, i32 114, i32 121, i32 112, i32 116, i32 73, i32 109, i32 112, i32 111, i32 114, i32 116, i32 75, i32 101, i32 121, i32 0], align 4
@.str.1 = private unnamed_addr constant [20 x i32] [i32 67, i32 114, i32 121, i32 112, i32 116, i32 65, i32 99, i32 113, i32 117, i32 105, i32 114, i32 101, i32 67, i32 111, i32 110, i32 116, i32 101, i32 120, i32 116, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_crypto_DerAndKeyToPfx(i64 %0, i32 %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_3__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %13, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %20 = load i32, i32* @MS_ENHANCED_PROV, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %22 = load i32, i32* @PROV_RSA_FULL, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 4
  store i32* null, i32** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 5
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 6
  %27 = load i32, i32* @AT_KEYEXCHANGE, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 7
  store i32 0, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 8
  store i32 0, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 9
  store i32* null, i32** %30, align 8
  %31 = call i32 (...) @kull_m_string_getRandomGUID()
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = icmp ne i32 %31, 0
  br i1 %33, label %34, label %70

34:                                               ; preds = %6
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CRYPT_NEWKEYSET, align 4
  %42 = call i64 @CryptAcquireContext(i32* %15, i32 %36, i32 %38, i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %34
  %45 = load i32, i32* %15, align 4
  %46 = load i64, i64* %9, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @CRYPT_EXPORTABLE, align 4
  %50 = call i64 @CryptImportKey(i32 %45, i32 %47, i32 %48, i32 0, i32 %49, i32* %16)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %44
  %53 = load i64, i64* %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @kull_m_crypto_DerAndKeyInfoToPfx(i64 %53, i32 %54, %struct.TYPE_3__* %14, i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @CryptDestroyKey(i32 %57)
  br label %61

59:                                               ; preds = %44
  %60 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([15 x i32]* @.str to i8*))
  br label %61

61:                                               ; preds = %59, %52
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @kull_m_crypto_close_hprov_delete_container(i32 %62)
  br label %66

64:                                               ; preds = %34
  %65 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([20 x i32]* @.str.1 to i8*))
  br label %66

66:                                               ; preds = %64, %61
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @LocalFree(i32 %68)
  br label %70

70:                                               ; preds = %66, %6
  %71 = load i32, i32* %13, align 4
  ret i32 %71
}

declare dso_local i32 @kull_m_string_getRandomGUID(...) #1

declare dso_local i64 @CryptAcquireContext(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @CryptImportKey(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @kull_m_crypto_DerAndKeyInfoToPfx(i64, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @CryptDestroyKey(i32) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

declare dso_local i32 @kull_m_crypto_close_hprov_delete_container(i32) #1

declare dso_local i32 @LocalFree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

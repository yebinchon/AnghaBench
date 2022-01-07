; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_get_dcc.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_get_dcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32* }

@LM_NTLM_HASH_LENGTH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@CALG_SHA1 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_crypto_get_dcc(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca %struct.TYPE_5__, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* @LM_NTLM_HASH_LENGTH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %12, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %13, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @TRUE, align 4
  %20 = call i32 @RtlDowncaseUnicodeString(%struct.TYPE_5__* %11, i32 %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @NT_SUCCESS(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %90

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @LM_NTLM_HASH_LENGTH, align 4
  %28 = add nsw i32 %26, %27
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @LPTR, align 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @LocalAlloc(i32 %31, i32 %33)
  %35 = inttoptr i64 %34 to i32*
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  store i32* %35, i32** %36, align 8
  %37 = icmp ne i32* %35, null
  br i1 %37, label %38, label %88

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = ptrtoint i32* %40 to i32
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @LM_NTLM_HASH_LENGTH, align 4
  %44 = call i32 @RtlCopyMemory(i32 %41, i32 %42, i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = ptrtoint i32* %46 to i32
  %48 = load i32, i32* @LM_NTLM_HASH_LENGTH, align 4
  %49 = add nsw i32 %47, %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = ptrtoint i32* %51 to i32
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @RtlCopyMemory(i32 %49, i32 %52, i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @RtlDigestNTLM(%struct.TYPE_5__* %10, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %38
  %61 = load i32, i32* %9, align 4
  %62 = call i64 @NT_SUCCESS(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %60
  %65 = load i32, i32* @CALG_SHA1, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @LM_NTLM_HASH_LENGTH, align 4
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @LM_NTLM_HASH_LENGTH, align 4
  %74 = load i32, i32* @FALSE, align 4
  %75 = call i64 @kull_m_crypto_pkcs5_pbkdf2_hmac(i32 %65, i32 %66, i32 %67, i32* %69, i32 %71, i32 %72, i32* %17, i32 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %64
  %78 = load i32, i32* %5, align 4
  %79 = ptrtoint i32* %17 to i32
  %80 = load i32, i32* @LM_NTLM_HASH_LENGTH, align 4
  %81 = call i32 @RtlCopyMemory(i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %77, %64
  br label %84

84:                                               ; preds = %83, %60, %38
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @LocalFree(i32* %86)
  br label %88

88:                                               ; preds = %84, %24
  %89 = call i32 @RtlFreeUnicodeString(%struct.TYPE_5__* %11)
  br label %90

90:                                               ; preds = %88, %4
  %91 = load i32, i32* %9, align 4
  %92 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %92)
  ret i32 %91
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RtlDowncaseUnicodeString(%struct.TYPE_5__*, i32, i32) #2

declare dso_local i64 @NT_SUCCESS(i32) #2

declare dso_local i64 @LocalAlloc(i32, i32) #2

declare dso_local i32 @RtlCopyMemory(i32, i32, i32) #2

declare dso_local i32 @RtlDigestNTLM(%struct.TYPE_5__*, i32) #2

declare dso_local i64 @kull_m_crypto_pkcs5_pbkdf2_hmac(i32, i32, i32, i32*, i32, i32, i32*, i32, i32) #2

declare dso_local i32 @LocalFree(i32*) #2

declare dso_local i32 @RtlFreeUnicodeString(%struct.TYPE_5__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

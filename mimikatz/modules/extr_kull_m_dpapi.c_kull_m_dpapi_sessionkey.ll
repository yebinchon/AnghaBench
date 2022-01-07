; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_dpapi.c_kull_m_dpapi_sessionkey.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_dpapi.c_kull_m_dpapi_sessionkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@CALG_SHA1 = common dso_local global i64 0, align 8
@LPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_dpapi_sessionkey(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i64 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32* %2, i32** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32* %4, i32** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32* %6, i32** %18, align 8
  store i32 %7, i32* %19, align 4
  store i64 %8, i64* %20, align 8
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %23, align 4
  store i32* null, i32** %24, align 8
  %29 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %25, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %26, align 8
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %11
  %37 = load i32*, i32** %12, align 8
  store i32* %37, i32** %24, align 8
  br label %47

38:                                               ; preds = %11
  %39 = load i64, i64* @CALG_SHA1, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %43 = call i64 @kull_m_crypto_hash(i64 %39, i32* %40, i32 %41, i32* %32, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32* %32, i32** %24, align 8
  br label %46

46:                                               ; preds = %45, %38
  br label %47

47:                                               ; preds = %46, %36
  %48 = load i32*, i32** %24, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %130

50:                                               ; preds = %47
  %51 = load i64, i64* %20, align 8
  %52 = load i64, i64* @CALG_SHA1, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %50
  %55 = load i32*, i32** %16, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32*, i32** %18, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %57, %54
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i32*, i32** %14, align 8
  %64 = load i32, i32* %15, align 4
  %65 = load i32*, i32** %16, align 8
  %66 = load i32, i32* %17, align 4
  %67 = load i32*, i32** %18, align 8
  %68 = load i32, i32* %19, align 4
  %69 = load i32, i32* %21, align 4
  %70 = call i32 @kull_m_dpapi_hmac_sha1_incorrect(i32* %61, i32 %62, i32* %63, i32 %64, i32* %65, i32 %66, i32* %67, i32 %68, i32 %69)
  store i32 %70, i32* %23, align 4
  br label %129

71:                                               ; preds = %57, %50
  %72 = load i32, i32* @LPTR, align 4
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %17, align 4
  %75 = add nsw i32 %73, %74
  %76 = load i32, i32* %19, align 4
  %77 = add nsw i32 %75, %76
  %78 = call i64 @LocalAlloc(i32 %72, i32 %77)
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %27, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %128

81:                                               ; preds = %71
  %82 = load i32, i32* %27, align 4
  %83 = load i32*, i32** %14, align 8
  %84 = load i32, i32* %15, align 4
  %85 = call i32 @RtlCopyMemory(i32 %82, i32* %83, i32 %84)
  %86 = load i32*, i32** %16, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %98

88:                                               ; preds = %81
  %89 = load i32, i32* %17, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load i32, i32* %27, align 4
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %92, %93
  %95 = load i32*, i32** %16, align 8
  %96 = load i32, i32* %17, align 4
  %97 = call i32 @RtlCopyMemory(i32 %94, i32* %95, i32 %96)
  br label %98

98:                                               ; preds = %91, %88, %81
  %99 = load i32*, i32** %18, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %113

101:                                              ; preds = %98
  %102 = load i32, i32* %19, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = load i32, i32* %27, align 4
  %106 = load i32, i32* %15, align 4
  %107 = add nsw i32 %105, %106
  %108 = load i32, i32* %17, align 4
  %109 = add nsw i32 %107, %108
  %110 = load i32*, i32** %18, align 8
  %111 = load i32, i32* %19, align 4
  %112 = call i32 @RtlCopyMemory(i32 %109, i32* %110, i32 %111)
  br label %113

113:                                              ; preds = %104, %101, %98
  %114 = load i64, i64* %20, align 8
  %115 = load i32*, i32** %24, align 8
  %116 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %117 = load i32, i32* %27, align 4
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* %17, align 4
  %120 = add nsw i32 %118, %119
  %121 = load i32, i32* %19, align 4
  %122 = add nsw i32 %120, %121
  %123 = load i32, i32* %21, align 4
  %124 = load i32, i32* %22, align 4
  %125 = call i32 @kull_m_crypto_hmac(i64 %114, i32* %115, i32 %116, i32 %117, i32 %122, i32 %123, i32 %124)
  store i32 %125, i32* %23, align 4
  %126 = load i32, i32* %27, align 4
  %127 = call i32 @LocalFree(i32 %126)
  br label %128

128:                                              ; preds = %113, %71
  br label %129

129:                                              ; preds = %128, %60
  br label %130

130:                                              ; preds = %129, %47
  %131 = load i32, i32* %23, align 4
  %132 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %132)
  ret i32 %131
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @kull_m_crypto_hash(i64, i32*, i32, i32*, i32) #2

declare dso_local i32 @kull_m_dpapi_hmac_sha1_incorrect(i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32) #2

declare dso_local i64 @LocalAlloc(i32, i32) #2

declare dso_local i32 @RtlCopyMemory(i32, i32*, i32) #2

declare dso_local i32 @kull_m_crypto_hmac(i64, i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @LocalFree(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

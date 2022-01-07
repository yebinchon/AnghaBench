; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_dpapi.c_kull_m_dpapi_hmac_sha1_incorrect.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_dpapi.c_kull_m_dpapi_hmac_sha1_incorrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@CALG_SHA1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kull_m_dpapi_hmac_sha1_incorrect(i32* %0, i64 %1, i32* %2, i64 %3, i32* %4, i64 %5, i32* %6, i64 %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca [64 x i32], align 16
  %21 = alloca [64 x i32], align 16
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32* %2, i32** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32* %4, i32** %14, align 8
  store i64 %5, i64* %15, align 8
  store i32* %6, i32** %16, align 8
  store i64 %7, i64* %17, align 8
  store i32* %8, i32** %18, align 8
  %27 = load i64, i64* @FALSE, align 8
  store i64 %27, i64* %19, align 8
  %28 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %22, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %23, align 8
  %32 = getelementptr inbounds [64 x i32], [64 x i32]* %20, i64 0, i64 0
  %33 = call i32 @RtlFillMemory(i32* %32, i32 256, i8 signext 54)
  %34 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 0
  %35 = call i32 @RtlFillMemory(i32* %34, i32 256, i8 signext 92)
  store i64 0, i64* %26, align 8
  br label %36

36:                                               ; preds = %57, %9
  %37 = load i64, i64* %26, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %36
  %41 = load i32*, i32** %10, align 8
  %42 = load i64, i64* %26, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %26, align 8
  %46 = getelementptr inbounds [64 x i32], [64 x i32]* %20, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = load i64, i64* %26, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %26, align 8
  %54 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = xor i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %40
  %58 = load i64, i64* %26, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %26, align 8
  br label %36

60:                                               ; preds = %36
  %61 = load i32, i32* @LPTR, align 4
  %62 = load i64, i64* %13, align 8
  %63 = add i64 256, %62
  %64 = trunc i64 %63 to i32
  %65 = call i64 @LocalAlloc(i32 %61, i32 %64)
  %66 = inttoptr i64 %65 to i32*
  store i32* %66, i32** %24, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %158

68:                                               ; preds = %60
  %69 = load i32*, i32** %24, align 8
  %70 = getelementptr inbounds [64 x i32], [64 x i32]* %20, i64 0, i64 0
  %71 = call i32 @RtlCopyMemory(i32* %69, i32* %70, i64 256)
  %72 = load i32*, i32** %24, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 256
  %74 = load i32*, i32** %12, align 8
  %75 = load i64, i64* %13, align 8
  %76 = call i32 @RtlCopyMemory(i32* %73, i32* %74, i64 %75)
  %77 = load i32, i32* @CALG_SHA1, align 4
  %78 = load i32*, i32** %24, align 8
  %79 = load i64, i64* %13, align 8
  %80 = add i64 256, %79
  %81 = trunc i64 %80 to i32
  %82 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %83 = call i64 @kull_m_crypto_hash(i32 %77, i32* %78, i32 %81, i32* %31, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %155

85:                                               ; preds = %68
  %86 = load i32, i32* @LPTR, align 4
  %87 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %88 = sext i32 %87 to i64
  %89 = add i64 256, %88
  %90 = load i64, i64* %15, align 8
  %91 = add i64 %89, %90
  %92 = load i64, i64* %17, align 8
  %93 = add i64 %91, %92
  %94 = trunc i64 %93 to i32
  %95 = call i64 @LocalAlloc(i32 %86, i32 %94)
  %96 = inttoptr i64 %95 to i32*
  store i32* %96, i32** %25, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %154

98:                                               ; preds = %85
  %99 = load i32*, i32** %25, align 8
  %100 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 0
  %101 = call i32 @RtlCopyMemory(i32* %99, i32* %100, i64 256)
  %102 = load i32*, i32** %25, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 256
  %104 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %105 = sext i32 %104 to i64
  %106 = call i32 @RtlCopyMemory(i32* %103, i32* %31, i64 %105)
  %107 = load i32*, i32** %14, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %121

109:                                              ; preds = %98
  %110 = load i64, i64* %15, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %109
  %113 = load i32*, i32** %25, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 256
  %115 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32*, i32** %14, align 8
  %119 = load i64, i64* %15, align 8
  %120 = call i32 @RtlCopyMemory(i32* %117, i32* %118, i64 %119)
  br label %121

121:                                              ; preds = %112, %109, %98
  %122 = load i32*, i32** %16, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %138

124:                                              ; preds = %121
  %125 = load i64, i64* %17, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %124
  %128 = load i32*, i32** %25, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 256
  %130 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i64, i64* %15, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load i32*, i32** %16, align 8
  %136 = load i64, i64* %17, align 8
  %137 = call i32 @RtlCopyMemory(i32* %134, i32* %135, i64 %136)
  br label %138

138:                                              ; preds = %127, %124, %121
  %139 = load i32, i32* @CALG_SHA1, align 4
  %140 = load i32*, i32** %25, align 8
  %141 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %142 = sext i32 %141 to i64
  %143 = add i64 256, %142
  %144 = load i64, i64* %15, align 8
  %145 = add i64 %143, %144
  %146 = load i64, i64* %17, align 8
  %147 = add i64 %145, %146
  %148 = trunc i64 %147 to i32
  %149 = load i32*, i32** %18, align 8
  %150 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %151 = call i64 @kull_m_crypto_hash(i32 %139, i32* %140, i32 %148, i32* %149, i32 %150)
  store i64 %151, i64* %19, align 8
  %152 = load i32*, i32** %25, align 8
  %153 = call i32 @LocalFree(i32* %152)
  br label %154

154:                                              ; preds = %138, %85
  br label %155

155:                                              ; preds = %154, %68
  %156 = load i32*, i32** %24, align 8
  %157 = call i32 @LocalFree(i32* %156)
  br label %158

158:                                              ; preds = %155, %60
  %159 = load i64, i64* %19, align 8
  %160 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %160)
  ret i64 %159
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RtlFillMemory(i32*, i32, i8 signext) #2

declare dso_local i64 @LocalAlloc(i32, i32) #2

declare dso_local i32 @RtlCopyMemory(i32*, i32*, i64) #2

declare dso_local i64 @kull_m_crypto_hash(i32, i32*, i32, i32*, i32) #2

declare dso_local i32 @LocalFree(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

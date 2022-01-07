; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_pkcs5_pbkdf2_hmac.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_pkcs5_pbkdf2_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@PROV_RSA_AES = common dso_local global i32 0, align 4
@CRYPT_VERIFYCONTEXT = common dso_local global i32 0, align 4
@HP_HASHVAL = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kull_m_crypto_pkcs5_pbkdf2_hmac(i64 %0, i32* %1, i64 %2, i32* %3, i64 %4, i64 %5, i32* %6, i64 %7, i64 %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  store i64 %0, i64* %10, align 8
  store i32* %1, i32** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32* %3, i32** %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i32* %6, i32** %16, align 8
  store i64 %7, i64* %17, align 8
  store i64 %8, i64* %18, align 8
  %30 = load i64, i64* @FALSE, align 8
  store i64 %30, i64* %19, align 8
  %31 = load i32, i32* @PROV_RSA_AES, align 4
  %32 = load i32, i32* @CRYPT_VERIFYCONTEXT, align 4
  %33 = call i64 @CryptAcquireContext(i32* %20, i32* null, i32* null, i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %167

35:                                               ; preds = %9
  %36 = load i32, i32* %20, align 4
  %37 = load i64, i64* %10, align 8
  %38 = call i64 @CryptCreateHash(i32 %36, i64 %37, i32 0, i32 0, i32* %21)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %164

40:                                               ; preds = %35
  %41 = load i32, i32* %21, align 4
  %42 = load i32, i32* @HP_HASHVAL, align 4
  %43 = call i64 @CryptGetHashParam(i32 %41, i32 %42, i32* null, i64* %22, i32 0)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %161

45:                                               ; preds = %40
  %46 = load i32, i32* @LPTR, align 4
  %47 = load i64, i64* %14, align 8
  %48 = add i64 %47, 8
  %49 = call i64 @LocalAlloc(i32 %46, i64 %48)
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %27, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %160

52:                                               ; preds = %45
  %53 = load i32, i32* @LPTR, align 4
  %54 = load i64, i64* %22, align 8
  %55 = call i64 @LocalAlloc(i32 %53, i64 %54)
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %28, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %157

58:                                               ; preds = %52
  %59 = load i32, i32* @LPTR, align 4
  %60 = load i64, i64* %22, align 8
  %61 = call i64 @LocalAlloc(i32 %59, i64 %60)
  %62 = inttoptr i64 %61 to i32*
  store i32* %62, i32** %29, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %154

64:                                               ; preds = %58
  %65 = load i64, i64* @TRUE, align 8
  store i64 %65, i64* %19, align 8
  %66 = load i32*, i32** %27, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = load i64, i64* %14, align 8
  %69 = call i32 @RtlCopyMemory(i32* %66, i32* %67, i64 %68)
  store i64 1, i64* %23, align 8
  br label %70

70:                                               ; preds = %148, %64
  %71 = load i64, i64* %17, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %151

73:                                               ; preds = %70
  %74 = load i64, i64* %23, align 8
  %75 = call i32 @_byteswap_ulong(i64 %74)
  %76 = load i32*, i32** %27, align 8
  %77 = load i64, i64* %14, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32 %75, i32* %78, align 4
  %79 = load i64, i64* %10, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = load i64, i64* %12, align 8
  %82 = load i32*, i32** %27, align 8
  %83 = load i64, i64* %14, align 8
  %84 = add nsw i64 %83, 4
  %85 = load i32*, i32** %29, align 8
  %86 = load i64, i64* %22, align 8
  %87 = call i32 @kull_m_crypto_hmac(i64 %79, i32* %80, i64 %81, i32* %82, i64 %84, i32* %85, i64 %86)
  %88 = load i32*, i32** %28, align 8
  %89 = load i32*, i32** %29, align 8
  %90 = load i64, i64* %22, align 8
  %91 = call i32 @RtlCopyMemory(i32* %88, i32* %89, i64 %90)
  store i64 1, i64* %24, align 8
  br label %92

92:                                               ; preds = %131, %73
  %93 = load i64, i64* %24, align 8
  %94 = load i64, i64* %15, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %134

96:                                               ; preds = %92
  %97 = load i64, i64* %10, align 8
  %98 = load i32*, i32** %11, align 8
  %99 = load i64, i64* %12, align 8
  %100 = load i32*, i32** %29, align 8
  %101 = load i64, i64* %22, align 8
  %102 = load i32*, i32** %29, align 8
  %103 = load i64, i64* %22, align 8
  %104 = call i32 @kull_m_crypto_hmac(i64 %97, i32* %98, i64 %99, i32* %100, i64 %101, i32* %102, i64 %103)
  store i64 0, i64* %25, align 8
  br label %105

105:                                              ; preds = %119, %96
  %106 = load i64, i64* %25, align 8
  %107 = load i64, i64* %22, align 8
  %108 = icmp slt i64 %106, %107
  br i1 %108, label %109, label %122

109:                                              ; preds = %105
  %110 = load i32*, i32** %29, align 8
  %111 = load i64, i64* %25, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %28, align 8
  %115 = load i64, i64* %25, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = xor i32 %117, %113
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %109
  %120 = load i64, i64* %25, align 8
  %121 = add nsw i64 %120, 1
  store i64 %121, i64* %25, align 8
  br label %105

122:                                              ; preds = %105
  %123 = load i64, i64* %18, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load i32*, i32** %29, align 8
  %127 = load i32*, i32** %28, align 8
  %128 = load i64, i64* %22, align 8
  %129 = call i32 @RtlCopyMemory(i32* %126, i32* %127, i64 %128)
  br label %130

130:                                              ; preds = %125, %122
  br label %131

131:                                              ; preds = %130
  %132 = load i64, i64* %24, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %24, align 8
  br label %92

134:                                              ; preds = %92
  %135 = load i64, i64* %17, align 8
  %136 = load i64, i64* %22, align 8
  %137 = call i64 @min(i64 %135, i64 %136)
  store i64 %137, i64* %26, align 8
  %138 = load i32*, i32** %16, align 8
  %139 = load i32*, i32** %28, align 8
  %140 = load i64, i64* %26, align 8
  %141 = call i32 @RtlCopyMemory(i32* %138, i32* %139, i64 %140)
  %142 = load i64, i64* %26, align 8
  %143 = load i32*, i32** %16, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 %142
  store i32* %144, i32** %16, align 8
  %145 = load i64, i64* %26, align 8
  %146 = load i64, i64* %17, align 8
  %147 = sub nsw i64 %146, %145
  store i64 %147, i64* %17, align 8
  br label %148

148:                                              ; preds = %134
  %149 = load i64, i64* %23, align 8
  %150 = add nsw i64 %149, 1
  store i64 %150, i64* %23, align 8
  br label %70

151:                                              ; preds = %70
  %152 = load i32*, i32** %29, align 8
  %153 = call i32 @LocalFree(i32* %152)
  br label %154

154:                                              ; preds = %151, %58
  %155 = load i32*, i32** %28, align 8
  %156 = call i32 @LocalFree(i32* %155)
  br label %157

157:                                              ; preds = %154, %52
  %158 = load i32*, i32** %27, align 8
  %159 = call i32 @LocalFree(i32* %158)
  br label %160

160:                                              ; preds = %157, %45
  br label %161

161:                                              ; preds = %160, %40
  %162 = load i32, i32* %21, align 4
  %163 = call i32 @CryptDestroyHash(i32 %162)
  br label %164

164:                                              ; preds = %161, %35
  %165 = load i32, i32* %20, align 4
  %166 = call i32 @CryptReleaseContext(i32 %165, i32 0)
  br label %167

167:                                              ; preds = %164, %9
  %168 = load i64, i64* %19, align 8
  ret i64 %168
}

declare dso_local i64 @CryptAcquireContext(i32*, i32*, i32*, i32, i32) #1

declare dso_local i64 @CryptCreateHash(i32, i64, i32, i32, i32*) #1

declare dso_local i64 @CryptGetHashParam(i32, i32, i32*, i64*, i32) #1

declare dso_local i64 @LocalAlloc(i32, i64) #1

declare dso_local i32 @RtlCopyMemory(i32*, i32*, i64) #1

declare dso_local i32 @_byteswap_ulong(i64) #1

declare dso_local i32 @kull_m_crypto_hmac(i64, i32*, i64, i32*, i64, i32*, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @LocalFree(i32*) #1

declare dso_local i32 @CryptDestroyHash(i32) #1

declare dso_local i32 @CryptReleaseContext(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

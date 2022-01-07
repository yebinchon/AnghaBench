; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_dpapi.c_kull_m_dpapi_unprotect_masterkey_with_shaDerivedkey.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_dpapi.c_kull_m_dpapi_unprotect_masterkey_with_shaDerivedkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@CALG_HMAC = common dso_local global i64 0, align 8
@CALG_SHA1 = common dso_local global i64 0, align 8
@LPTR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@KP_IV = common dso_local global i32 0, align 4
@CALG_3DES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 99, i32 114, i32 121, i32 112, i32 116, i32 111, i32 95, i32 99, i32 108, i32 111, i32 115, i32 101, i32 95, i32 104, i32 112, i32 114, i32 111, i32 118, i32 95, i32 100, i32 101, i32 108, i32 101, i32 116, i32 101, i32 95, i32 99, i32 111, i32 110, i32 116, i32 97, i32 105, i32 110, i32 101, i32 114, i32 0], align 4
@.str.1 = private unnamed_addr constant [27 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 99, i32 114, i32 121, i32 112, i32 116, i32 111, i32 95, i32 104, i32 107, i32 101, i32 121, i32 95, i32 115, i32 101, i32 115, i32 115, i32 105, i32 111, i32 110, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_dpapi_unprotect_masterkey_with_shaDerivedkey(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CALG_HMAC, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i64, i64* @CALG_SHA1, align 8
  br label %35

31:                                               ; preds = %5
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  br label %35

35:                                               ; preds = %31, %29
  %36 = phi i64 [ %30, %29 ], [ %34, %31 ]
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %14, align 8
  %38 = call i32 @kull_m_crypto_hash_len(i64 %37)
  store i32 %38, i32* %15, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @kull_m_crypto_cipher_keylen(i64 %41)
  store i32 %42, i32* %17, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @kull_m_crypto_cipher_blocklen(i64 %45)
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* @LPTR, align 4
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %16, align 4
  %50 = add nsw i32 %48, %49
  %51 = call i32 @LocalAlloc(i32 %47, i32 %50)
  store i32 %51, i32* %19, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %209

53:                                               ; preds = %35
  %54 = load i64, i64* %14, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %16, align 4
  %66 = add nsw i32 %64, %65
  %67 = load i32, i32* @TRUE, align 4
  %68 = call i64 @kull_m_crypto_pkcs5_pbkdf2_hmac(i64 %54, i32 %55, i32 %56, i32 %59, i32 4, i32 %62, i32 %63, i32 %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %206

70:                                               ; preds = %53
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %19, align 4
  %75 = load i32, i32* %17, align 4
  %76 = call i64 @kull_m_crypto_hkey_session(i64 %73, i32 %74, i32 %75, i32 0, i32* %13, i32* %12)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %203

78:                                               ; preds = %70
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @KP_IV, align 4
  %81 = load i32, i32* %19, align 4
  %82 = load i32, i32* %17, align 4
  %83 = add nsw i32 %81, %82
  %84 = call i64 @CryptSetKeyParam(i32 %79, i32 %80, i32 %83, i32 0)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %194

86:                                               ; preds = %78
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* @LPTR, align 4
  %91 = load i32, i32* %18, align 4
  %92 = call i32 @LocalAlloc(i32 %90, i32 %91)
  store i32 %92, i32* %20, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %193

94:                                               ; preds = %86
  %95 = load i32, i32* %20, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %18, align 4
  %100 = call i32 @RtlCopyMemory(i32 %95, i32 %98, i32 %99)
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* @FALSE, align 4
  %103 = load i32, i32* %20, align 4
  %104 = call i64 @CryptDecrypt(i32 %101, i32 0, i32 %102, i32 0, i32 %103, i32* %18)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %190

106:                                              ; preds = %94
  %107 = load i32, i32* %18, align 4
  %108 = sub nsw i32 %107, 16
  %109 = load i32, i32* %15, align 4
  %110 = sub nsw i32 %108, %109
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @CALG_3DES, align 8
  %115 = icmp eq i64 %113, %114
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i32 4, i32 0
  %118 = sub nsw i32 %110, %117
  %119 = load i32*, i32** %10, align 8
  store i32 %118, i32* %119, align 4
  %120 = load i32, i32* @LPTR, align 4
  %121 = load i32, i32* %15, align 4
  %122 = call i32 @LocalAlloc(i32 %120, i32 %121)
  store i32 %122, i32* %21, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %189

124:                                              ; preds = %106
  %125 = load i64, i64* %14, align 8
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %20, align 4
  %129 = load i32, i32* %21, align 4
  %130 = load i32, i32* %15, align 4
  %131 = call i64 @kull_m_crypto_hmac(i64 %125, i32 %126, i32 %127, i32 %128, i32 16, i32 %129, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %186

133:                                              ; preds = %124
  %134 = load i32, i32* @LPTR, align 4
  %135 = load i32, i32* %15, align 4
  %136 = call i32 @LocalAlloc(i32 %134, i32 %135)
  store i32 %136, i32* %22, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %185

138:                                              ; preds = %133
  %139 = load i64, i64* %14, align 8
  %140 = load i32, i32* %21, align 4
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* %20, align 4
  %143 = load i32, i32* %18, align 4
  %144 = add nsw i32 %142, %143
  %145 = load i32*, i32** %10, align 8
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %144, %146
  %148 = load i32*, i32** %10, align 8
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %22, align 4
  %151 = load i32, i32* %15, align 4
  %152 = call i64 @kull_m_crypto_hmac(i64 %139, i32 %140, i32 %141, i32 %147, i32 %149, i32 %150, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %182

154:                                              ; preds = %138
  %155 = load i32, i32* %22, align 4
  %156 = load i32, i32* %20, align 4
  %157 = add nsw i32 %156, 16
  %158 = load i32, i32* %15, align 4
  %159 = call i32 @RtlEqualMemory(i32 %155, i32 %157, i32 %158)
  store i32 %159, i32* %11, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %181

161:                                              ; preds = %154
  %162 = load i32, i32* @LPTR, align 4
  %163 = load i32*, i32** %10, align 8
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @LocalAlloc(i32 %162, i32 %164)
  %166 = load i32*, i32** %9, align 8
  store i32 %165, i32* %166, align 4
  %167 = icmp ne i32 %165, 0
  br i1 %167, label %168, label %180

168:                                              ; preds = %161
  %169 = load i32*, i32** %9, align 8
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %20, align 4
  %172 = load i32, i32* %18, align 4
  %173 = add nsw i32 %171, %172
  %174 = load i32*, i32** %10, align 8
  %175 = load i32, i32* %174, align 4
  %176 = sub nsw i32 %173, %175
  %177 = load i32*, i32** %10, align 8
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @RtlCopyMemory(i32 %170, i32 %176, i32 %178)
  br label %180

180:                                              ; preds = %168, %161
  br label %181

181:                                              ; preds = %180, %154
  br label %182

182:                                              ; preds = %181, %138
  %183 = load i32, i32* %22, align 4
  %184 = call i32 @LocalFree(i32 %183)
  br label %185

185:                                              ; preds = %182, %133
  br label %186

186:                                              ; preds = %185, %124
  %187 = load i32, i32* %21, align 4
  %188 = call i32 @LocalFree(i32 %187)
  br label %189

189:                                              ; preds = %186, %106
  br label %190

190:                                              ; preds = %189, %94
  %191 = load i32, i32* %20, align 4
  %192 = call i32 @LocalFree(i32 %191)
  br label %193

193:                                              ; preds = %190, %86
  br label %194

194:                                              ; preds = %193, %78
  %195 = load i32, i32* %13, align 4
  %196 = call i32 @CryptDestroyKey(i32 %195)
  %197 = load i32, i32* %12, align 4
  %198 = call i32 @kull_m_crypto_close_hprov_delete_container(i32 %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %194
  %201 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([43 x i32]* @.str to i8*))
  br label %202

202:                                              ; preds = %200, %194
  br label %205

203:                                              ; preds = %70
  %204 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([27 x i32]* @.str.1 to i8*))
  br label %205

205:                                              ; preds = %203, %202
  br label %206

206:                                              ; preds = %205, %53
  %207 = load i32, i32* %19, align 4
  %208 = call i32 @LocalFree(i32 %207)
  br label %209

209:                                              ; preds = %206, %35
  %210 = load i32, i32* %11, align 4
  ret i32 %210
}

declare dso_local i32 @kull_m_crypto_hash_len(i64) #1

declare dso_local i32 @kull_m_crypto_cipher_keylen(i64) #1

declare dso_local i32 @kull_m_crypto_cipher_blocklen(i64) #1

declare dso_local i32 @LocalAlloc(i32, i32) #1

declare dso_local i64 @kull_m_crypto_pkcs5_pbkdf2_hmac(i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @kull_m_crypto_hkey_session(i64, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @CryptSetKeyParam(i32, i32, i32, i32) #1

declare dso_local i32 @RtlCopyMemory(i32, i32, i32) #1

declare dso_local i64 @CryptDecrypt(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @kull_m_crypto_hmac(i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RtlEqualMemory(i32, i32, i32) #1

declare dso_local i32 @LocalFree(i32) #1

declare dso_local i32 @CryptDestroyKey(i32) #1

declare dso_local i32 @kull_m_crypto_close_hprov_delete_container(i32) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

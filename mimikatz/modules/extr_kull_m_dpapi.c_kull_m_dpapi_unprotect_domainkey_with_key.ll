; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_dpapi.c_kull_m_dpapi_unprotect_domainkey_with_key.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_dpapi.c_kull_m_dpapi_unprotect_domainkey_with_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@PROV_RSA_AES = common dso_local global i32 0, align 4
@CRYPT_VERIFYCONTEXT = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CALG_3DES = common dso_local global i32 0, align 4
@KP_IV = common dso_local global i32 0, align 4
@CALG_SHA1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i32] [i32 67, i32 114, i32 121, i32 112, i32 116, i32 68, i32 101, i32 99, i32 114, i32 121, i32 112, i32 116, i32 0], align 4
@.str.1 = private unnamed_addr constant [17 x i32] [i32 67, i32 114, i32 121, i32 112, i32 116, i32 83, i32 101, i32 116, i32 75, i32 101, i32 121, i32 80, i32 97, i32 114, i32 97, i32 109, i32 0], align 4
@.str.2 = private unnamed_addr constant [43 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 99, i32 114, i32 121, i32 112, i32 116, i32 111, i32 95, i32 99, i32 108, i32 111, i32 115, i32 101, i32 95, i32 104, i32 112, i32 114, i32 111, i32 118, i32 95, i32 100, i32 101, i32 108, i32 101, i32 116, i32 101, i32 95, i32 99, i32 111, i32 110, i32 116, i32 97, i32 105, i32 110, i32 101, i32 114, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_dpapi_unprotect_domainkey_with_key(%struct.TYPE_18__* %0, i64 %1, i32 %2, %struct.TYPE_17__** %3, i32* %4, %struct.TYPE_17__** %5) #0 {
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_17__**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca %struct.TYPE_17__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_17__** %3, %struct.TYPE_17__*** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.TYPE_17__** %5, %struct.TYPE_17__*** %12, align 8
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %20, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %21, align 8
  %29 = load i32, i32* @PROV_RSA_AES, align 4
  %30 = load i32, i32* @CRYPT_VERIFYCONTEXT, align 4
  %31 = call i64 @CryptAcquireContext(i32* %14, i32* null, i32* null, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %230

33:                                               ; preds = %6
  %34 = load i32, i32* %14, align 4
  %35 = load i64, i64* %8, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* %9, align 4
  %38 = call i64 @CryptImportKey(i32 %34, i32 %36, i32 %37, i32 0, i32 0, i32* %16)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %227

40:                                               ; preds = %33
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %22, align 4
  %44 = load i32, i32* @LPTR, align 4
  %45 = load i32, i32* %22, align 4
  %46 = call %struct.TYPE_17__* @LocalAlloc(i32 %44, i32 %45)
  store %struct.TYPE_17__* %46, %struct.TYPE_17__** %18, align 8
  %47 = icmp ne %struct.TYPE_17__* %46, null
  br i1 %47, label %48, label %224

48:                                               ; preds = %40
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %22, align 4
  %54 = call i32 @RtlCopyMemory(%struct.TYPE_17__* %49, i32 %52, i32 %53)
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* @TRUE, align 4
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %58 = ptrtoint %struct.TYPE_17__* %57 to i32
  %59 = call i64 @CryptDecrypt(i32 %55, i32 0, i32 %56, i32 0, i32 %58, i32* %22)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %219

61:                                               ; preds = %48
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @CALG_3DES, align 4
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %66, %69
  %71 = call i64 @kull_m_crypto_hkey(i32 %62, i32 %63, i32 %70, i32 24, i32 0, i32* %17, i32* %15)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %218

73:                                               ; preds = %61
  %74 = load i32, i32* %17, align 4
  %75 = load i32, i32* @KP_IV, align 4
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %78, %81
  %83 = add nsw i32 %82, 24
  %84 = call i64 @CryptSetKeyParam(i32 %74, i32 %75, i32 %83, i32 0)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %207

86:                                               ; preds = %73
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %22, align 4
  %90 = load i32, i32* @LPTR, align 4
  %91 = load i32, i32* %22, align 4
  %92 = call %struct.TYPE_17__* @LocalAlloc(i32 %90, i32 %91)
  store %struct.TYPE_17__* %92, %struct.TYPE_17__** %19, align 8
  %93 = icmp ne %struct.TYPE_17__* %92, null
  br i1 %93, label %94, label %206

94:                                               ; preds = %86
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %22, align 4
  %100 = call i32 @RtlCopyMemory(%struct.TYPE_17__* %95, i32 %98, i32 %99)
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* @FALSE, align 4
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %104 = ptrtoint %struct.TYPE_17__* %103 to i32
  %105 = call i64 @CryptDecrypt(i32 %101, i32 0, i32 %102, i32 0, i32 %104, i32* %22)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %201

107:                                              ; preds = %94
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %110, %113
  %115 = inttoptr i64 %114 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %115, %struct.TYPE_17__** %23, align 8
  %116 = load i32, i32* @CALG_SHA1, align 4
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %118 = load i32, i32* %22, align 4
  %119 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %120 = sub nsw i32 %118, %119
  %121 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %122 = call i64 @kull_m_crypto_hash(i32 %116, %struct.TYPE_17__* %117, i32 %120, i32* %28, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %200

124:                                              ; preds = %107
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %126 = ptrtoint %struct.TYPE_17__* %125 to i32
  %127 = load i32, i32* %22, align 4
  %128 = add nsw i32 %126, %127
  %129 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %130 = sub nsw i32 %128, %129
  %131 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %132 = call i64 @RtlEqualMemory(i32 %130, i32* %28, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %199

134:                                              ; preds = %124
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %11, align 8
  store i32 %137, i32* %138, align 4
  %139 = load i32, i32* @LPTR, align 4
  %140 = load i32*, i32** %11, align 8
  %141 = load i32, i32* %140, align 4
  %142 = call %struct.TYPE_17__* @LocalAlloc(i32 %139, i32 %141)
  %143 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %10, align 8
  store %struct.TYPE_17__* %142, %struct.TYPE_17__** %143, align 8
  %144 = icmp ne %struct.TYPE_17__* %142, null
  br i1 %144, label %145, label %198

145:                                              ; preds = %134
  %146 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %10, align 8
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %146, align 8
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32*, i32** %11, align 8
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @RtlCopyMemory(%struct.TYPE_17__* %147, i32 %150, i32 %152)
  %154 = load i32, i32* @TRUE, align 4
  store i32 %154, i32* %13, align 4
  %155 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %12, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %155, align 8
  %156 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %12, align 8
  %157 = icmp ne %struct.TYPE_17__** %156, null
  br i1 %157, label %158, label %174

158:                                              ; preds = %145
  %159 = load i32, i32* @FALSE, align 4
  store i32 %159, i32* %13, align 4
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %161 = call i32 @GetLengthSid(%struct.TYPE_17__* %160)
  store i32 %161, i32* %22, align 4
  %162 = load i32, i32* @LPTR, align 4
  %163 = load i32, i32* %22, align 4
  %164 = call %struct.TYPE_17__* @LocalAlloc(i32 %162, i32 %163)
  %165 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %12, align 8
  store %struct.TYPE_17__* %164, %struct.TYPE_17__** %165, align 8
  %166 = icmp ne %struct.TYPE_17__* %164, null
  br i1 %166, label %167, label %173

167:                                              ; preds = %158
  %168 = load i32, i32* %22, align 4
  %169 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %12, align 8
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %169, align 8
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %172 = call i32 @CopySid(i32 %168, %struct.TYPE_17__* %170, %struct.TYPE_17__* %171)
  store i32 %172, i32* %13, align 4
  br label %173

173:                                              ; preds = %167, %158
  br label %174

174:                                              ; preds = %173, %145
  %175 = load i32, i32* %13, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %197, label %177

177:                                              ; preds = %174
  %178 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %10, align 8
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %178, align 8
  %180 = icmp ne %struct.TYPE_17__* %179, null
  br i1 %180, label %181, label %186

181:                                              ; preds = %177
  %182 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %10, align 8
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %182, align 8
  %184 = call %struct.TYPE_17__* @LocalFree(%struct.TYPE_17__* %183)
  %185 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %10, align 8
  store %struct.TYPE_17__* %184, %struct.TYPE_17__** %185, align 8
  br label %186

186:                                              ; preds = %181, %177
  %187 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %12, align 8
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %187, align 8
  %189 = icmp ne %struct.TYPE_17__* %188, null
  br i1 %189, label %190, label %195

190:                                              ; preds = %186
  %191 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %12, align 8
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %191, align 8
  %193 = call %struct.TYPE_17__* @LocalFree(%struct.TYPE_17__* %192)
  %194 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %12, align 8
  store %struct.TYPE_17__* %193, %struct.TYPE_17__** %194, align 8
  br label %195

195:                                              ; preds = %190, %186
  %196 = load i32*, i32** %11, align 8
  store i32 0, i32* %196, align 4
  br label %197

197:                                              ; preds = %195, %174
  br label %198

198:                                              ; preds = %197, %134
  br label %199

199:                                              ; preds = %198, %124
  br label %200

200:                                              ; preds = %199, %107
  br label %203

201:                                              ; preds = %94
  %202 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([13 x i32]* @.str to i8*))
  br label %203

203:                                              ; preds = %201, %200
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %205 = call %struct.TYPE_17__* @LocalFree(%struct.TYPE_17__* %204)
  br label %206

206:                                              ; preds = %203, %86
  br label %209

207:                                              ; preds = %73
  %208 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([17 x i32]* @.str.1 to i8*))
  br label %209

209:                                              ; preds = %207, %206
  %210 = load i32, i32* %17, align 4
  %211 = call i32 @CryptDestroyKey(i32 %210)
  %212 = load i32, i32* %15, align 4
  %213 = call i32 @kull_m_crypto_close_hprov_delete_container(i32 %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %217, label %215

215:                                              ; preds = %209
  %216 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([43 x i32]* @.str.2 to i8*))
  br label %217

217:                                              ; preds = %215, %209
  br label %218

218:                                              ; preds = %217, %61
  br label %221

219:                                              ; preds = %48
  %220 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([13 x i32]* @.str to i8*))
  br label %221

221:                                              ; preds = %219, %218
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %223 = call %struct.TYPE_17__* @LocalFree(%struct.TYPE_17__* %222)
  br label %224

224:                                              ; preds = %221, %40
  %225 = load i32, i32* %16, align 4
  %226 = call i32 @CryptDestroyKey(i32 %225)
  br label %227

227:                                              ; preds = %224, %33
  %228 = load i32, i32* %14, align 4
  %229 = call i32 @CryptReleaseContext(i32 %228, i32 0)
  br label %230

230:                                              ; preds = %227, %6
  %231 = load i32, i32* %13, align 4
  %232 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %232)
  ret i32 %231
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @CryptAcquireContext(i32*, i32*, i32*, i32, i32) #2

declare dso_local i64 @CryptImportKey(i32, i32, i32, i32, i32, i32*) #2

declare dso_local %struct.TYPE_17__* @LocalAlloc(i32, i32) #2

declare dso_local i32 @RtlCopyMemory(%struct.TYPE_17__*, i32, i32) #2

declare dso_local i64 @CryptDecrypt(i32, i32, i32, i32, i32, i32*) #2

declare dso_local i64 @kull_m_crypto_hkey(i32, i32, i32, i32, i32, i32*, i32*) #2

declare dso_local i64 @CryptSetKeyParam(i32, i32, i32, i32) #2

declare dso_local i64 @kull_m_crypto_hash(i32, %struct.TYPE_17__*, i32, i32*, i32) #2

declare dso_local i64 @RtlEqualMemory(i32, i32*, i32) #2

declare dso_local i32 @GetLengthSid(%struct.TYPE_17__*) #2

declare dso_local i32 @CopySid(i32, %struct.TYPE_17__*, %struct.TYPE_17__*) #2

declare dso_local %struct.TYPE_17__* @LocalFree(%struct.TYPE_17__*) #2

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #2

declare dso_local i32 @CryptDestroyKey(i32) #2

declare dso_local i32 @kull_m_crypto_close_hprov_delete_container(i32) #2

declare dso_local i32 @CryptReleaseContext(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

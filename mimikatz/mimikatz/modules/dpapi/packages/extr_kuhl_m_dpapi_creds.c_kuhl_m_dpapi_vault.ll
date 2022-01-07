; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/packages/extr_kuhl_m_dpapi_creds.c_kuhl_m_dpapi_vault.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/packages/extr_kuhl_m_dpapi_creds.c_kuhl_m_dpapi_vault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__** }
%struct.TYPE_14__ = type { i32, i64, i64 }

@CRYPT_MODE_CBC = common dso_local global i64 0, align 8
@AES_128_KEY_SIZE = common dso_local global i32 0, align 4
@AES_256_KEY_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i32] [i32 99, i32 114, i32 101, i32 100, i32 0], align 4
@.str.1 = private unnamed_addr constant [7 x i32] [i32 112, i32 111, i32 108, i32 105, i32 99, i32 121, i32 0], align 4
@.str.2 = private unnamed_addr constant [25 x i32] [i32 68, i32 101, i32 99, i32 114, i32 121, i32 112, i32 116, i32 105, i32 110, i32 103, i32 32, i32 80, i32 111, i32 108, i32 105, i32 99, i32 121, i32 32, i32 75, i32 101, i32 121, i32 115, i32 58, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [15 x i32] [i32 32, i32 32, i32 65, i32 69, i32 83, i32 49, i32 50, i32 56, i32 32, i32 107, i32 101, i32 121, i32 58, i32 32, i32 0], align 4
@.str.4 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [15 x i32] [i32 32, i32 32, i32 65, i32 69, i32 83, i32 50, i32 53, i32 54, i32 32, i32 107, i32 101, i32 121, i32 58, i32 32, i32 0], align 4
@.str.6 = private unnamed_addr constant [3 x i32] [i32 10, i32 10, i32 0], align 4
@PROV_RSA_AES = common dso_local global i32 0, align 4
@CRYPT_VERIFYCONTEXT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i32] [i32 32, i32 32, i32 62, i32 32, i32 65, i32 116, i32 116, i32 114, i32 105, i32 98, i32 117, i32 116, i32 101, i32 32, i32 37, i32 117, i32 32, i32 58, i32 32, i32 0], align 4
@LPTR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i32] [i32 67, i32 114, i32 121, i32 112, i32 116, i32 68, i32 101, i32 99, i32 114, i32 121, i32 112, i32 116, i32 0], align 4
@.str.9 = private unnamed_addr constant [30 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 102, i32 105, i32 108, i32 101, i32 95, i32 114, i32 101, i32 97, i32 100, i32 68, i32 97, i32 116, i32 97, i32 32, i32 40, i32 112, i32 111, i32 108, i32 105, i32 99, i32 121, i32 41, i32 0], align 4
@.str.10 = private unnamed_addr constant [28 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 102, i32 105, i32 108, i32 101, i32 95, i32 114, i32 101, i32 97, i32 100, i32 68, i32 97, i32 116, i32 97, i32 32, i32 40, i32 99, i32 114, i32 101, i32 100, i32 41, i32 0], align 4
@.str.11 = private unnamed_addr constant [37 x i32] [i32 73, i32 110, i32 112, i32 117, i32 116, i32 32, i32 67, i32 114, i32 101, i32 100, i32 32, i32 102, i32 105, i32 108, i32 101, i32 32, i32 110, i32 101, i32 101, i32 100, i32 101, i32 100, i32 32, i32 40, i32 47, i32 99, i32 114, i32 101, i32 100, i32 58, i32 102, i32 105, i32 108, i32 101, i32 41, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_dpapi_vault(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_13__*, align 8
  %20 = alloca %struct.TYPE_15__*, align 8
  %21 = alloca %struct.TYPE_14__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %27 = load i64, i64* @CRYPT_MODE_CBC, align 8
  store i64 %27, i64* %15, align 8
  %28 = load i32, i32* @AES_128_KEY_SIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %16, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %17, align 8
  %32 = load i32, i32* @AES_256_KEY_SIZE, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %18, align 8
  %35 = load i32, i32* %3, align 4
  %36 = load i32**, i32*** %4, align 8
  %37 = call i64 @kull_m_string_args_byName(i32 %35, i32** %36, i8* bitcast ([5 x i32]* @.str to i8*), i32* %6, i32* null)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %226

39:                                               ; preds = %2
  %40 = load i32, i32* %6, align 4
  %41 = bitcast i32** %8 to i32*
  %42 = call i64 @kull_m_file_readData(i32 %40, i32* %41, i64* %11)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %223

44:                                               ; preds = %39
  %45 = load i32*, i32** %8, align 8
  %46 = call %struct.TYPE_15__* @kull_m_cred_vault_credential_create(i32* %45)
  store %struct.TYPE_15__* %46, %struct.TYPE_15__** %20, align 8
  %47 = icmp ne %struct.TYPE_15__* %46, null
  br i1 %47, label %48, label %220

48:                                               ; preds = %44
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %50 = call i32 @kull_m_cred_vault_credential_descr(i32 0, %struct.TYPE_15__* %49)
  %51 = load i32, i32* %3, align 4
  %52 = load i32**, i32*** %4, align 8
  %53 = call i64 @kull_m_string_args_byName(i32 %51, i32** %52, i8* bitcast ([7 x i32]* @.str.1 to i8*), i32* %5, i32* null)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %217

55:                                               ; preds = %48
  %56 = load i32, i32* %5, align 4
  %57 = bitcast i32** %7 to i32*
  %58 = call i64 @kull_m_file_readData(i32 %56, i32* %57, i64* %10)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %214

60:                                               ; preds = %55
  %61 = load i32*, i32** %7, align 8
  %62 = call %struct.TYPE_13__* @kull_m_cred_vault_policy_create(i32* %61)
  store %struct.TYPE_13__* %62, %struct.TYPE_13__** %19, align 8
  %63 = icmp ne %struct.TYPE_13__* %62, null
  br i1 %63, label %64, label %211

64:                                               ; preds = %60
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %66 = call i32 @kull_m_cred_vault_policy_descr(i32 0, %struct.TYPE_13__* %65)
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %3, align 4
  %78 = load i32**, i32*** %4, align 8
  %79 = call i64 @kuhl_m_dpapi_unprotect_raw_or_blob(i32 %71, i32 %76, i32* null, i32 %77, i32** %78, i32* null, i32 0, i32** %9, i64* %12, i8* bitcast ([25 x i32]* @.str.2 to i8*))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %208

81:                                               ; preds = %64
  %82 = load i32*, i32** %9, align 8
  %83 = load i64, i64* %12, align 8
  %84 = call i64 @kull_m_cred_vault_policy_key(i32* %82, i64 %83, i32* %31, i32* %34)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %205

86:                                               ; preds = %81
  %87 = call i32 (i8*, ...) @kprintf(i8* bitcast ([15 x i32]* @.str.3 to i8*))
  %88 = load i32, i32* @AES_128_KEY_SIZE, align 4
  %89 = sext i32 %88 to i64
  %90 = call i32 @kull_m_string_wprintf_hex(i32* %31, i64 %89, i32 0)
  %91 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.4 to i8*))
  %92 = call i32 (i8*, ...) @kprintf(i8* bitcast ([15 x i32]* @.str.5 to i8*))
  %93 = load i32, i32* @AES_256_KEY_SIZE, align 4
  %94 = sext i32 %93 to i64
  %95 = call i32 @kull_m_string_wprintf_hex(i32* %34, i64 %94, i32 0)
  %96 = call i32 (i8*, ...) @kprintf(i8* bitcast ([3 x i32]* @.str.6 to i8*))
  %97 = load i32, i32* @PROV_RSA_AES, align 4
  %98 = load i32, i32* @CRYPT_VERIFYCONTEXT, align 4
  %99 = call i64 @CryptAcquireContext(i32* %25, i32* null, i32* null, i32 %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %204

101:                                              ; preds = %86
  store i64 0, i64* %14, align 8
  br label %102

102:                                              ; preds = %198, %101
  %103 = load i64, i64* %14, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ult i64 %103, %106
  br i1 %107, label %108, label %201

108:                                              ; preds = %102
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %110, align 8
  %112 = load i64, i64* %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %111, i64 %112
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %113, align 8
  store %struct.TYPE_14__* %114, %struct.TYPE_14__** %21, align 8
  %115 = icmp ne %struct.TYPE_14__* %114, null
  br i1 %115, label %116, label %197

116:                                              ; preds = %108
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i8*, ...) @kprintf(i8* bitcast ([20 x i32]* @.str.7 to i8*), i32 %119)
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %195

125:                                              ; preds = %116
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %13, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %195

130:                                              ; preds = %125
  %131 = load i32, i32* @LPTR, align 4
  %132 = load i64, i64* %13, align 8
  %133 = call i32* @LocalAlloc(i32 %131, i64 %132)
  store i32* %133, i32** %23, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %194

135:                                              ; preds = %130
  %136 = load i32*, i32** %23, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %13, align 8
  %141 = call i32 @RtlCopyMemory(i32* %136, i64 %139, i64 %140)
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %143 = load i32, i32* %25, align 4
  %144 = call i64 @kuhl_m_dpapi_vault_key_type(%struct.TYPE_14__* %142, i32 %143, i32* %31, i32* %34, i32* %26, i64* %24)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %191

146:                                              ; preds = %135
  %147 = load i32, i32* %26, align 4
  %148 = load i32, i32* @TRUE, align 4
  %149 = load i32*, i32** %23, align 8
  %150 = ptrtoint i32* %149 to i32
  %151 = call i64 @CryptDecrypt(i32 %147, i32 0, i32 %148, i32 0, i32 %150, i64* %13)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %188

153:                                              ; preds = %146
  %154 = load i64, i64* %24, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load i32*, i32** %23, align 8
  %158 = load i64, i64* %13, align 8
  %159 = call i32 @kull_m_string_wprintf_hex(i32* %157, i64 %158, i32 0)
  br label %187

160:                                              ; preds = %153
  %161 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.4 to i8*))
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %160
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 100
  br i1 %170, label %171, label %181

171:                                              ; preds = %166, %160
  %172 = load i32*, i32** %23, align 8
  %173 = call i32 @kull_m_cred_vault_clear_create(i32* %172)
  store i32 %173, i32* %22, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %171
  %176 = load i32, i32* %22, align 4
  %177 = call i32 @kull_m_cred_vault_clear_descr(i32 1, i32 %176)
  %178 = load i32, i32* %22, align 4
  %179 = call i32 @kull_m_cred_vault_clear_delete(i32 %178)
  br label %180

180:                                              ; preds = %175, %171
  br label %185

181:                                              ; preds = %166
  %182 = load i32*, i32** %23, align 8
  %183 = load i64, i64* %13, align 8
  %184 = call i32 @kull_m_string_wprintf_hex(i32* %182, i64 %183, i32 1048577)
  br label %185

185:                                              ; preds = %181, %180
  %186 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.4 to i8*))
  br label %187

187:                                              ; preds = %185, %156
  br label %190

188:                                              ; preds = %146
  %189 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([13 x i32]* @.str.8 to i8*))
  br label %190

190:                                              ; preds = %188, %187
  br label %191

191:                                              ; preds = %190, %135
  %192 = load i32*, i32** %23, align 8
  %193 = call i32 @LocalFree(i32* %192)
  br label %194

194:                                              ; preds = %191, %130
  br label %195

195:                                              ; preds = %194, %125, %116
  %196 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.4 to i8*))
  br label %197

197:                                              ; preds = %195, %108
  br label %198

198:                                              ; preds = %197
  %199 = load i64, i64* %14, align 8
  %200 = add i64 %199, 1
  store i64 %200, i64* %14, align 8
  br label %102

201:                                              ; preds = %102
  %202 = load i32, i32* %25, align 4
  %203 = call i32 @CryptReleaseContext(i32 %202, i32 0)
  br label %204

204:                                              ; preds = %201, %86
  br label %205

205:                                              ; preds = %204, %81
  %206 = load i32*, i32** %9, align 8
  %207 = call i32 @LocalFree(i32* %206)
  br label %208

208:                                              ; preds = %205, %64
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %210 = call i32 @kull_m_cred_vault_policy_delete(%struct.TYPE_13__* %209)
  br label %211

211:                                              ; preds = %208, %60
  %212 = load i32*, i32** %7, align 8
  %213 = call i32 @LocalFree(i32* %212)
  br label %216

214:                                              ; preds = %55
  %215 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([30 x i32]* @.str.9 to i8*))
  br label %216

216:                                              ; preds = %214, %211
  br label %217

217:                                              ; preds = %216, %48
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %219 = call i32 @kull_m_cred_vault_credential_delete(%struct.TYPE_15__* %218)
  br label %220

220:                                              ; preds = %217, %44
  %221 = load i32*, i32** %8, align 8
  %222 = call i32 @LocalFree(i32* %221)
  br label %225

223:                                              ; preds = %39
  %224 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([28 x i32]* @.str.10 to i8*))
  br label %225

225:                                              ; preds = %223, %220
  br label %228

226:                                              ; preds = %2
  %227 = call i32 @PRINT_ERROR(i8* bitcast ([37 x i32]* @.str.11 to i8*))
  br label %228

228:                                              ; preds = %226, %225
  %229 = load i32, i32* @STATUS_SUCCESS, align 4
  %230 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %230)
  ret i32 %229
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @kull_m_string_args_byName(i32, i32**, i8*, i32*, i32*) #2

declare dso_local i64 @kull_m_file_readData(i32, i32*, i64*) #2

declare dso_local %struct.TYPE_15__* @kull_m_cred_vault_credential_create(i32*) #2

declare dso_local i32 @kull_m_cred_vault_credential_descr(i32, %struct.TYPE_15__*) #2

declare dso_local %struct.TYPE_13__* @kull_m_cred_vault_policy_create(i32*) #2

declare dso_local i32 @kull_m_cred_vault_policy_descr(i32, %struct.TYPE_13__*) #2

declare dso_local i64 @kuhl_m_dpapi_unprotect_raw_or_blob(i32, i32, i32*, i32, i32**, i32*, i32, i32**, i64*, i8*) #2

declare dso_local i64 @kull_m_cred_vault_policy_key(i32*, i64, i32*, i32*) #2

declare dso_local i32 @kprintf(i8*, ...) #2

declare dso_local i32 @kull_m_string_wprintf_hex(i32*, i64, i32) #2

declare dso_local i64 @CryptAcquireContext(i32*, i32*, i32*, i32, i32) #2

declare dso_local i32* @LocalAlloc(i32, i64) #2

declare dso_local i32 @RtlCopyMemory(i32*, i64, i64) #2

declare dso_local i64 @kuhl_m_dpapi_vault_key_type(%struct.TYPE_14__*, i32, i32*, i32*, i32*, i64*) #2

declare dso_local i64 @CryptDecrypt(i32, i32, i32, i32, i32, i64*) #2

declare dso_local i32 @kull_m_cred_vault_clear_create(i32*) #2

declare dso_local i32 @kull_m_cred_vault_clear_descr(i32, i32) #2

declare dso_local i32 @kull_m_cred_vault_clear_delete(i32) #2

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #2

declare dso_local i32 @LocalFree(i32*) #2

declare dso_local i32 @CryptReleaseContext(i32, i32) #2

declare dso_local i32 @kull_m_cred_vault_policy_delete(%struct.TYPE_13__*) #2

declare dso_local i32 @kull_m_cred_vault_credential_delete(%struct.TYPE_15__*) #2

declare dso_local i32 @PRINT_ERROR(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

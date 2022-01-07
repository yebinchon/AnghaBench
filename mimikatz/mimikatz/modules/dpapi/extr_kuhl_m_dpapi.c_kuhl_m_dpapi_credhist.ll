; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/extr_kuhl_m_dpapi.c_kuhl_m_dpapi_credhist.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/extr_kuhl_m_dpapi.c_kuhl_m_dpapi_credhist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_19__**, %struct.TYPE_14__ }
%struct.TYPE_19__ = type { i32*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32* }

@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@LM_NTLM_HASH_LENGTH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i32] [i32 105, i32 110, i32 0], align 4
@.str.1 = private unnamed_addr constant [4 x i32] [i32 115, i32 105, i32 100, i32 0], align 4
@.str.2 = private unnamed_addr constant [22 x i32] [i32 67, i32 111, i32 110, i32 118, i32 101, i32 114, i32 116, i32 83, i32 116, i32 114, i32 105, i32 110, i32 103, i32 83, i32 105, i32 100, i32 84, i32 111, i32 83, i32 105, i32 100, i32 0], align 4
@.str.3 = private unnamed_addr constant [9 x i32] [i32 112, i32 97, i32 115, i32 115, i32 119, i32 111, i32 114, i32 100, i32 0], align 4
@CALG_SHA1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i32] [i32 115, i32 104, i32 97, i32 49, i32 0], align 4
@KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_SHA1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i32] [i32 10, i32 32, i32 32, i32 91, i32 101, i32 110, i32 116, i32 114, i32 121, i32 32, i32 37, i32 117, i32 93, i32 32, i32 119, i32 105, i32 116, i32 104, i32 32, i32 118, i32 111, i32 108, i32 97, i32 116, i32 105, i32 108, i32 101, i32 32, i32 99, i32 97, i32 99, i32 104, i32 101, i32 58, i32 32, i32 0], align 4
@.str.6 = private unnamed_addr constant [34 x i32] [i32 10, i32 32, i32 32, i32 91, i32 101, i32 110, i32 116, i32 114, i32 121, i32 32, i32 37, i32 117, i32 93, i32 32, i32 119, i32 105, i32 116, i32 104, i32 32, i32 83, i32 72, i32 65, i32 49, i32 32, i32 97, i32 110, i32 100, i32 32, i32 83, i32 73, i32 68, i32 58, i32 32, i32 0], align 4
@.str.7 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.8 = private unnamed_addr constant [39 x i32] [i32 73, i32 110, i32 112, i32 117, i32 116, i32 32, i32 99, i32 114, i32 101, i32 100, i32 104, i32 105, i32 115, i32 116, i32 32, i32 102, i32 105, i32 108, i32 101, i32 32, i32 110, i32 101, i32 101, i32 100, i32 101, i32 100, i32 32, i32 40, i32 47, i32 105, i32 110, i32 58, i32 102, i32 105, i32 108, i32 101, i32 41, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_dpapi_credhist(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %17, align 8
  %24 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %18, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %19, align 8
  %28 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %20, align 8
  %31 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %21, align 8
  %34 = load i32, i32* @LM_NTLM_HASH_LENGTH, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %22, align 8
  %37 = load i64, i64* @FALSE, align 8
  store i64 %37, i64* %23, align 8
  %38 = load i32, i32* %3, align 4
  %39 = load i32**, i32*** %4, align 8
  %40 = call i64 @kull_m_string_args_byName(i32 %38, i32** %39, i8* bitcast ([3 x i32]* @.str to i8*), i32** %8, i32* null)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %271

42:                                               ; preds = %2
  %43 = load i32*, i32** %8, align 8
  %44 = call i64 @kull_m_file_readData(i32* %43, i32** %5, i32* %6)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %270

46:                                               ; preds = %42
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call %struct.TYPE_17__* @kull_m_dpapi_credhist_create(i32* %47, i32 %48)
  store %struct.TYPE_17__* %49, %struct.TYPE_17__** %16, align 8
  %50 = icmp ne %struct.TYPE_17__* %49, null
  br i1 %50, label %51, label %267

51:                                               ; preds = %46
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %53 = call i32 @kull_m_dpapi_credhist_descr(i32 0, %struct.TYPE_17__* %52)
  %54 = load i32, i32* %3, align 4
  %55 = load i32**, i32*** %4, align 8
  %56 = call i64 @kull_m_string_args_byName(i32 %54, i32** %55, i8* bitcast ([4 x i32]* @.str.1 to i8*), i32** %9, i32* null)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %51
  %59 = load i32*, i32** %9, align 8
  %60 = call i64 @ConvertStringSidToSid(i32* %59, i32** %13)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32*, i32** %13, align 8
  store i32* %63, i32** %14, align 8
  br label %66

64:                                               ; preds = %58
  %65 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([22 x i32]* @.str.2 to i8*))
  br label %66

66:                                               ; preds = %64, %62
  br label %67

67:                                               ; preds = %66, %51
  %68 = load i32, i32* %3, align 4
  %69 = load i32**, i32*** %4, align 8
  %70 = call i64 @kull_m_string_args_byName(i32 %68, i32** %69, i8* bitcast ([9 x i32]* @.str.3 to i8*), i32** %11, i32* null)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %67
  %73 = load i32, i32* @CALG_SHA1, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = call i64 @wcslen(i32* %75)
  %77 = trunc i64 %76 to i32
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = trunc i64 %79 to i32
  %81 = mul nuw i64 4, %25
  %82 = trunc i64 %81 to i32
  %83 = call i64 @kull_m_crypto_hash(i32 %73, i32* %74, i32 %80, i32* %27, i32 %82)
  store i64 %83, i64* %23, align 8
  br label %95

84:                                               ; preds = %67
  %85 = load i32, i32* %3, align 4
  %86 = load i32**, i32*** %4, align 8
  %87 = call i64 @kull_m_string_args_byName(i32 %85, i32** %86, i8* bitcast ([5 x i32]* @.str.4 to i8*), i32** %10, i32* null)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i32*, i32** %10, align 8
  %91 = mul nuw i64 4, %25
  %92 = trunc i64 %91 to i32
  %93 = call i64 @kull_m_string_stringToHex(i32* %90, i32* %27, i32 %92)
  store i64 %93, i64* %23, align 8
  br label %94

94:                                               ; preds = %89, %84
  br label %95

95:                                               ; preds = %94, %72
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  store i32* %98, i32** %15, align 8
  %99 = load i32*, i32** %14, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %114, label %101

101:                                              ; preds = %95
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %109, i64 0
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  store i32* %113, i32** %14, align 8
  br label %114

114:                                              ; preds = %106, %101, %95
  store i32 0, i32* %7, align 4
  br label %115

115:                                              ; preds = %255, %114
  %116 = load i32*, i32** %14, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %119, %122
  br label %124

124:                                              ; preds = %118, %115
  %125 = phi i1 [ false, %115 ], [ %123, %118 ]
  br i1 %125, label %126, label %258

126:                                              ; preds = %124
  %127 = load i32*, i32** %14, align 8
  %128 = call i64 @ConvertSidToStringSid(i32* %127, i32** %12)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %236

130:                                              ; preds = %126
  %131 = load i32*, i32** %15, align 8
  %132 = call %struct.TYPE_18__* @kuhl_m_dpapi_oe_credential_get(i32* null, i32* %131)
  store %struct.TYPE_18__* %132, %struct.TYPE_18__** %17, align 8
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %134 = icmp ne %struct.TYPE_18__* %133, null
  br i1 %134, label %138, label %135

135:                                              ; preds = %130
  %136 = load i32*, i32** %12, align 8
  %137 = call %struct.TYPE_18__* @kuhl_m_dpapi_oe_credential_get(i32* %136, i32* null)
  store %struct.TYPE_18__* %137, %struct.TYPE_18__** %17, align 8
  br label %138

138:                                              ; preds = %135, %130
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %140 = icmp ne %struct.TYPE_18__* %139, null
  br i1 %140, label %141, label %180

141:                                              ; preds = %138
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_SHA1, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %180

149:                                              ; preds = %141
  %150 = load i32, i32* %7, align 4
  %151 = call i32 (i8*, ...) @kprintf(i8* bitcast ([36 x i32]* @.str.5 to i8*), i32 %150)
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %153 = call i32 @kuhl_m_dpapi_oe_credential_descr(%struct.TYPE_18__* %152)
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %156, i64 %158
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %159, align 8
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = call i64 @kull_m_dpapi_unprotect_credhist_entry_with_shaDerivedkey(%struct.TYPE_19__* %160, i32* %164, i32 8, i32* %36, i32* %33)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %179

167:                                              ; preds = %149
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %169 = load i32*, i32** %15, align 8
  %170 = call i32 @kuhl_m_dpapi_oe_credential_copyEntryWithNewGuid(%struct.TYPE_18__* %168, i32* %169)
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %172, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %173, i64 %175
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %176, align 8
  %178 = call i32 @kuhl_m_dpapi_display_CredHist(%struct.TYPE_19__* %177, i32* %36, i32* %33)
  br label %179

179:                                              ; preds = %167, %149
  br label %233

180:                                              ; preds = %141, %138
  %181 = load i64, i64* %23, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %232

183:                                              ; preds = %180
  %184 = load i32, i32* %7, align 4
  %185 = call i32 (i8*, ...) @kprintf(i8* bitcast ([34 x i32]* @.str.6 to i8*), i32 %184)
  %186 = mul nuw i64 4, %25
  %187 = trunc i64 %186 to i32
  %188 = call i32 @kull_m_string_wprintf_hex(i32* %27, i32 %187, i32 0)
  %189 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.7 to i8*))
  %190 = load i32, i32* @CALG_SHA1, align 4
  %191 = mul nuw i64 4, %25
  %192 = trunc i64 %191 to i32
  %193 = load i32*, i32** %12, align 8
  %194 = load i32*, i32** %12, align 8
  %195 = call i64 @wcslen(i32* %194)
  %196 = add nsw i64 %195, 1
  %197 = trunc i64 %196 to i32
  %198 = sext i32 %197 to i64
  %199 = mul i64 %198, 4
  %200 = trunc i64 %199 to i32
  %201 = mul nuw i64 4, %29
  %202 = trunc i64 %201 to i32
  %203 = call i64 @kull_m_crypto_hmac(i32 %190, i32* %27, i32 %192, i32* %193, i32 %200, i32* %30, i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %231

205:                                              ; preds = %183
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %207, align 8
  %209 = load i32, i32* %7, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %208, i64 %210
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %211, align 8
  %213 = mul nuw i64 4, %29
  %214 = trunc i64 %213 to i32
  %215 = call i64 @kull_m_dpapi_unprotect_credhist_entry_with_shaDerivedkey(%struct.TYPE_19__* %212, i32* %30, i32 %214, i32* %36, i32* %33)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %230

217:                                              ; preds = %205
  %218 = load i32*, i32** %12, align 8
  %219 = load i32*, i32** %15, align 8
  %220 = load i32*, i32** %11, align 8
  %221 = call i32 @kuhl_m_dpapi_oe_credential_add(i32* %218, i32* %219, i32* null, i32* %27, i32* null, i32* %220)
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %223, align 8
  %225 = load i32, i32* %7, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %224, i64 %226
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %227, align 8
  %229 = call i32 @kuhl_m_dpapi_display_CredHist(%struct.TYPE_19__* %228, i32* %36, i32* %33)
  br label %230

230:                                              ; preds = %217, %205
  br label %231

231:                                              ; preds = %230, %183
  br label %232

232:                                              ; preds = %231, %180
  br label %233

233:                                              ; preds = %232, %179
  %234 = load i32*, i32** %12, align 8
  %235 = call i32 @LocalFree(i32* %234)
  br label %236

236:                                              ; preds = %233, %126
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %238, align 8
  %240 = load i32, i32* %7, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %239, i64 %241
  %243 = load %struct.TYPE_19__*, %struct.TYPE_19__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 0
  store i32* %245, i32** %15, align 8
  %246 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %247, align 8
  %249 = load i32, i32* %7, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %248, i64 %250
  %252 = load %struct.TYPE_19__*, %struct.TYPE_19__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  store i32* %254, i32** %14, align 8
  br label %255

255:                                              ; preds = %236
  %256 = load i32, i32* %7, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %7, align 4
  br label %115

258:                                              ; preds = %124
  %259 = load i32*, i32** %13, align 8
  %260 = icmp ne i32* %259, null
  br i1 %260, label %261, label %264

261:                                              ; preds = %258
  %262 = load i32*, i32** %13, align 8
  %263 = call i32 @LocalFree(i32* %262)
  br label %264

264:                                              ; preds = %261, %258
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %266 = call i32 @kull_m_dpapi_credhist_delete(%struct.TYPE_17__* %265)
  br label %267

267:                                              ; preds = %264, %46
  %268 = load i32*, i32** %5, align 8
  %269 = call i32 @LocalFree(i32* %268)
  br label %270

270:                                              ; preds = %267, %42
  br label %273

271:                                              ; preds = %2
  %272 = call i32 @PRINT_ERROR(i8* bitcast ([39 x i32]* @.str.8 to i8*))
  br label %273

273:                                              ; preds = %271, %270
  %274 = load i32, i32* @STATUS_SUCCESS, align 4
  %275 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %275)
  ret i32 %274
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @kull_m_string_args_byName(i32, i32**, i8*, i32**, i32*) #2

declare dso_local i64 @kull_m_file_readData(i32*, i32**, i32*) #2

declare dso_local %struct.TYPE_17__* @kull_m_dpapi_credhist_create(i32*, i32) #2

declare dso_local i32 @kull_m_dpapi_credhist_descr(i32, %struct.TYPE_17__*) #2

declare dso_local i64 @ConvertStringSidToSid(i32*, i32**) #2

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #2

declare dso_local i64 @kull_m_crypto_hash(i32, i32*, i32, i32*, i32) #2

declare dso_local i64 @wcslen(i32*) #2

declare dso_local i64 @kull_m_string_stringToHex(i32*, i32*, i32) #2

declare dso_local i64 @ConvertSidToStringSid(i32*, i32**) #2

declare dso_local %struct.TYPE_18__* @kuhl_m_dpapi_oe_credential_get(i32*, i32*) #2

declare dso_local i32 @kprintf(i8*, ...) #2

declare dso_local i32 @kuhl_m_dpapi_oe_credential_descr(%struct.TYPE_18__*) #2

declare dso_local i64 @kull_m_dpapi_unprotect_credhist_entry_with_shaDerivedkey(%struct.TYPE_19__*, i32*, i32, i32*, i32*) #2

declare dso_local i32 @kuhl_m_dpapi_oe_credential_copyEntryWithNewGuid(%struct.TYPE_18__*, i32*) #2

declare dso_local i32 @kuhl_m_dpapi_display_CredHist(%struct.TYPE_19__*, i32*, i32*) #2

declare dso_local i32 @kull_m_string_wprintf_hex(i32*, i32, i32) #2

declare dso_local i64 @kull_m_crypto_hmac(i32, i32*, i32, i32*, i32, i32*, i32) #2

declare dso_local i32 @kuhl_m_dpapi_oe_credential_add(i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @LocalFree(i32*) #2

declare dso_local i32 @kull_m_dpapi_credhist_delete(%struct.TYPE_17__*) #2

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

; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_pkey_mac.c_pkey_mac_ctrl.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_pkey_mac.c_pkey_mac_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i32*, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i8*, i32 }
%struct.TYPE_15__ = type { i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@OSSL_MAC_PARAM_CIPHER = common dso_local global i8* null, align 8
@OSSL_PARAM_END = common dso_local global i32 0, align 4
@OSSL_MAC_PARAM_SIZE = common dso_local global i32 0, align 4
@OSSL_MAC_PARAM_KEY = common dso_local global i32 0, align 4
@OSSL_MAC_PARAM_DIGEST = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, i32, i8*)* @pkey_mac_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_mac_ctrl(%struct.TYPE_14__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca [3 x i32], align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [2 x i32], align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca [2 x i32], align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_15__*, align 8
  %22 = alloca [4 x i32], align 16
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %27 = call %struct.TYPE_13__* @EVP_PKEY_CTX_get_data(%struct.TYPE_14__* %26)
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %10, align 8
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %262 [
    i32 134, label %29
    i32 132, label %74
    i32 131, label %111
    i32 130, label %145
    i32 133, label %187
  ]

29:                                               ; preds = %4
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %72 [
    i32 128, label %33
    i32 129, label %34
  ]

33:                                               ; preds = %29
  store i32 -2, i32* %5, align 4
  br label %264

34:                                               ; preds = %29
  store i64 0, i64* %12, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @EVP_CIPHER_nid(i8* %35)
  %37 = call i64 @OBJ_nid2sn(i32 %36)
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %13, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i64 @ENGINE_get_id(i32* %41)
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %14, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = call i32 @OSSL_PARAM_construct_utf8_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %44, i32 0)
  %46 = load i64, i64* %12, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %12, align 8
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %46
  store i32 %45, i32* %48, align 4
  %49 = load i8*, i8** @OSSL_MAC_PARAM_CIPHER, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = call i32 @OSSL_PARAM_construct_utf8_string(i8* %49, i8* %50, i32 0)
  %52 = load i64, i64* %12, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %12, align 8
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %52
  store i32 %51, i32* %54, align 4
  %55 = call i32 (...) @OSSL_PARAM_construct_end()
  %56 = load i64, i64* %12, align 8
  %57 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %56
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %62 = call i32 @EVP_MAC_CTX_set_params(i32* %60, i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %34
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @EVP_MAC_init(i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %64, %34
  store i32 0, i32* %5, align 4
  br label %264

71:                                               ; preds = %64
  br label %73

72:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %264

73:                                               ; preds = %71
  br label %263

74:                                               ; preds = %4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  switch i32 %77, label %109 [
    i32 128, label %78
    i32 129, label %83
  ]

78:                                               ; preds = %74
  %79 = load i8*, i8** %9, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  store i8* %79, i8** %82, align 8
  br label %110

83:                                               ; preds = %74
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = icmp eq %struct.TYPE_11__* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 0, i32* %5, align 4
  br label %264

89:                                               ; preds = %83
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i32*
  %97 = call i32* @EVP_MAC_CTX_dup(i32* %96)
  store i32* %97, i32** %15, align 8
  %98 = load i32*, i32** %15, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  store i32 0, i32* %5, align 4
  br label %264

101:                                              ; preds = %89
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @EVP_MAC_CTX_free(i32* %104)
  %106 = load i32*, i32** %15, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  store i32* %106, i32** %108, align 8
  br label %110

109:                                              ; preds = %74
  store i32 0, i32* %5, align 4
  br label %264

110:                                              ; preds = %101, %78
  br label %263

111:                                              ; preds = %4
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %113 = load i32, i32* @OSSL_PARAM_END, align 4
  store i32 %113, i32* %112, align 4
  %114 = getelementptr inbounds i32, i32* %112, i64 1
  %115 = load i32, i32* @OSSL_PARAM_END, align 4
  store i32 %115, i32* %114, align 4
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  store i64 %117, i64* %17, align 8
  store i64 0, i64* %18, align 8
  %118 = load i32, i32* @OSSL_MAC_PARAM_SIZE, align 4
  %119 = call i32 @OSSL_PARAM_construct_size_t(i32 %118, i64* %17)
  %120 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  store i32 %119, i32* %120, align 4
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %125 = call i32 @EVP_MAC_CTX_set_params(i32* %123, i32* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %111
  store i32 0, i32* %5, align 4
  br label %264

128:                                              ; preds = %111
  %129 = load i32, i32* @OSSL_MAC_PARAM_SIZE, align 4
  %130 = call i32 @OSSL_PARAM_construct_size_t(i32 %129, i64* %18)
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  store i32 %130, i32* %131, align 4
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %136 = call i32 @EVP_MAC_CTX_get_params(i32* %134, i32* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %128
  store i32 0, i32* %5, align 4
  br label %264

139:                                              ; preds = %128
  %140 = load i64, i64* %18, align 8
  %141 = load i64, i64* %17, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  store i32 -2, i32* %5, align 4
  br label %264

144:                                              ; preds = %139
  br label %263

145:                                              ; preds = %4
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  switch i32 %148, label %185 [
    i32 128, label %149
    i32 129, label %169
  ]

149:                                              ; preds = %145
  %150 = load i8*, i8** %9, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %155, label %152

152:                                              ; preds = %149
  %153 = load i32, i32* %8, align 4
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %152, %149
  %156 = load i32, i32* %8, align 4
  %157 = icmp slt i32 %156, -1
  br i1 %157, label %158, label %159

158:                                              ; preds = %155, %152
  store i32 0, i32* %5, align 4
  br label %264

159:                                              ; preds = %155
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 1
  %163 = load i8*, i8** %9, align 8
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @ASN1_OCTET_STRING_set(i32* %162, i8* %163, i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %159
  store i32 0, i32* %5, align 4
  br label %264

168:                                              ; preds = %159
  br label %186

169:                                              ; preds = %145
  store i64 0, i64* %20, align 8
  %170 = load i32, i32* @OSSL_MAC_PARAM_KEY, align 4
  %171 = load i8*, i8** %9, align 8
  %172 = load i32, i32* %8, align 4
  %173 = call i32 @OSSL_PARAM_construct_octet_string(i32 %170, i8* %171, i32 %172)
  %174 = load i64, i64* %20, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* %20, align 8
  %176 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 %174
  store i32 %173, i32* %176, align 4
  %177 = call i32 (...) @OSSL_PARAM_construct_end()
  %178 = load i64, i64* %20, align 8
  %179 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 %178
  store i32 %177, i32* %179, align 4
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %184 = call i32 @EVP_MAC_CTX_set_params(i32* %182, i32* %183)
  store i32 %184, i32* %5, align 4
  br label %264

185:                                              ; preds = %145
  store i32 0, i32* %5, align 4
  br label %264

186:                                              ; preds = %168
  br label %263

187:                                              ; preds = %4
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  switch i32 %190, label %261 [
    i32 128, label %191
    i32 129, label %260
  ]

191:                                              ; preds = %187
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = call i32 @EVP_MAC_init(i32* %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %191
  store i32 0, i32* %5, align 4
  br label %264

198:                                              ; preds = %191
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = inttoptr i64 %204 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %205, %struct.TYPE_15__** %21, align 8
  store i64 0, i64* %23, align 8
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 @EVP_MD_nid(i8* %209)
  %211 = call i64 @OBJ_nid2sn(i32 %210)
  %212 = inttoptr i64 %211 to i8*
  store i8* %212, i8** %24, align 8
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = icmp eq i32* %215, null
  br i1 %216, label %217, label %218

217:                                              ; preds = %198
  br label %224

218:                                              ; preds = %198
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = call i64 @ENGINE_get_id(i32* %221)
  %223 = inttoptr i64 %222 to i8*
  br label %224

224:                                              ; preds = %218, %217
  %225 = phi i8* [ null, %217 ], [ %223, %218 ]
  store i8* %225, i8** %25, align 8
  %226 = load i8*, i8** %25, align 8
  %227 = icmp ne i8* %226, null
  br i1 %227, label %228, label %234

228:                                              ; preds = %224
  %229 = load i8*, i8** %25, align 8
  %230 = call i32 @OSSL_PARAM_construct_utf8_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %229, i32 0)
  %231 = load i64, i64* %23, align 8
  %232 = add i64 %231, 1
  store i64 %232, i64* %23, align 8
  %233 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 %231
  store i32 %230, i32* %233, align 4
  br label %234

234:                                              ; preds = %228, %224
  %235 = load i8*, i8** @OSSL_MAC_PARAM_DIGEST, align 8
  %236 = load i8*, i8** %24, align 8
  %237 = call i32 @OSSL_PARAM_construct_utf8_string(i8* %235, i8* %236, i32 0)
  %238 = load i64, i64* %23, align 8
  %239 = add i64 %238, 1
  store i64 %239, i64* %23, align 8
  %240 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 %238
  store i32 %237, i32* %240, align 4
  %241 = load i32, i32* @OSSL_MAC_PARAM_KEY, align 4
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 0
  %244 = load i8*, i8** %243, align 8
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @OSSL_PARAM_construct_octet_string(i32 %241, i8* %244, i32 %247)
  %249 = load i64, i64* %23, align 8
  %250 = add i64 %249, 1
  store i64 %250, i64* %23, align 8
  %251 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 %249
  store i32 %248, i32* %251, align 4
  %252 = call i32 (...) @OSSL_PARAM_construct_end()
  %253 = load i64, i64* %23, align 8
  %254 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 %253
  store i32 %252, i32* %254, align 4
  %255 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds [4 x i32], [4 x i32]* %22, i64 0, i64 0
  %259 = call i32 @EVP_MAC_CTX_set_params(i32* %257, i32* %258)
  store i32 %259, i32* %5, align 4
  br label %264

260:                                              ; preds = %187
  store i32 -2, i32* %5, align 4
  br label %264

261:                                              ; preds = %187
  store i32 0, i32* %5, align 4
  br label %264

262:                                              ; preds = %4
  store i32 -2, i32* %5, align 4
  br label %264

263:                                              ; preds = %186, %144, %110, %73
  store i32 1, i32* %5, align 4
  br label %264

264:                                              ; preds = %263, %262, %261, %260, %234, %197, %185, %169, %167, %158, %143, %138, %127, %109, %100, %88, %72, %70, %33
  %265 = load i32, i32* %5, align 4
  ret i32 %265
}

declare dso_local %struct.TYPE_13__* @EVP_PKEY_CTX_get_data(%struct.TYPE_14__*) #1

declare dso_local i64 @OBJ_nid2sn(i32) #1

declare dso_local i32 @EVP_CIPHER_nid(i8*) #1

declare dso_local i64 @ENGINE_get_id(i32*) #1

declare dso_local i32 @OSSL_PARAM_construct_utf8_string(i8*, i8*, i32) #1

declare dso_local i32 @OSSL_PARAM_construct_end(...) #1

declare dso_local i32 @EVP_MAC_CTX_set_params(i32*, i32*) #1

declare dso_local i32 @EVP_MAC_init(i32*) #1

declare dso_local i32* @EVP_MAC_CTX_dup(i32*) #1

declare dso_local i32 @EVP_MAC_CTX_free(i32*) #1

declare dso_local i32 @OSSL_PARAM_construct_size_t(i32, i64*) #1

declare dso_local i32 @EVP_MAC_CTX_get_params(i32*, i32*) #1

declare dso_local i32 @ASN1_OCTET_STRING_set(i32*, i8*, i32) #1

declare dso_local i32 @OSSL_PARAM_construct_octet_string(i32, i8*, i32) #1

declare dso_local i32 @EVP_MD_nid(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

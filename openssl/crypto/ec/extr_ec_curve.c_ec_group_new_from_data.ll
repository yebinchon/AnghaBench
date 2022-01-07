; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_curve.c_ec_group_new_from_data.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_curve.c_ec_group_new_from_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_19__*, i32*, i32*, i32*, i32*)* }
%struct.TYPE_18__ = type { i32, i32* (...)*, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, i64, i64 }

@EC_F_EC_GROUP_NEW_FROM_DATA = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4
@ERR_R_EC_LIB = common dso_local global i32 0, align 4
@NID_X9_62_prime_field = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (i32*, %struct.TYPE_18__*)* @ec_group_new_from_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @ec_group_new_from_data(i32* %0, %struct.TYPE_18__* byval(%struct.TYPE_18__) align 8 %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_20__*, align 8
  %19 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1, i32 0, i32 2
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %22 = icmp eq %struct.TYPE_20__* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %2
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1, i32 0, i32 1
  %26 = load i32* (...)*, i32* (...)** %25, align 8
  %27 = icmp ne i32* (...)* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1, i32 0, i32 1
  %30 = load i32* (...)*, i32* (...)** %29, align 8
  %31 = call i32* (...) %30()
  br label %33

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i32* [ %31, %28 ], [ null, %32 ]
  %35 = call %struct.TYPE_19__* @EC_GROUP_new_ex(i32* %24, i32* %34)
  store %struct.TYPE_19__* %35, %struct.TYPE_19__** %3, align 8
  br label %272

36:                                               ; preds = %2
  %37 = load i32*, i32** %4, align 8
  %38 = call i32* @BN_CTX_new_ex(i32* %37)
  store i32* %38, i32** %7, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_DATA, align 4
  %42 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %43 = call i32 @ECerr(i32 %41, i32 %42)
  br label %248

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1, i32 0, i32 2
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %45, align 8
  store %struct.TYPE_20__* %46, %struct.TYPE_20__** %18, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %15, align 4
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %16, align 4
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i64 1
  %55 = bitcast %struct.TYPE_20__* %54 to i8*
  store i8* %55, i8** %19, align 8
  %56 = load i32, i32* %15, align 4
  %57 = load i8*, i8** %19, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %19, align 8
  %60 = load i8*, i8** %19, align 8
  %61 = load i32, i32* %16, align 4
  %62 = mul nsw i32 0, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  %65 = load i32, i32* %16, align 4
  %66 = call i32* @BN_bin2bn(i8* %64, i32 %65, i32* null)
  store i32* %66, i32** %8, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %86, label %68

68:                                               ; preds = %44
  %69 = load i8*, i8** %19, align 8
  %70 = load i32, i32* %16, align 4
  %71 = mul nsw i32 1, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  %74 = load i32, i32* %16, align 4
  %75 = call i32* @BN_bin2bn(i8* %73, i32 %74, i32* null)
  store i32* %75, i32** %9, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %86, label %77

77:                                               ; preds = %68
  %78 = load i8*, i8** %19, align 8
  %79 = load i32, i32* %16, align 4
  %80 = mul nsw i32 2, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  %83 = load i32, i32* %16, align 4
  %84 = call i32* @BN_bin2bn(i8* %82, i32 %83, i32* null)
  store i32* %84, i32** %10, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %77, %68, %44
  %87 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_DATA, align 4
  %88 = load i32, i32* @ERR_R_BN_LIB, align 4
  %89 = call i32 @ECerr(i32 %87, i32 %88)
  br label %248

90:                                               ; preds = %77
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1, i32 0, i32 1
  %92 = load i32* (...)*, i32* (...)** %91, align 8
  %93 = icmp ne i32* (...)* %92, null
  br i1 %93, label %94, label %120

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1, i32 0, i32 1
  %96 = load i32* (...)*, i32* (...)** %95, align 8
  %97 = call i32* (...) %96()
  store i32* %97, i32** %17, align 8
  %98 = load i32*, i32** %4, align 8
  %99 = load i32*, i32** %17, align 8
  %100 = call %struct.TYPE_19__* @EC_GROUP_new_ex(i32* %98, i32* %99)
  store %struct.TYPE_19__* %100, %struct.TYPE_19__** %5, align 8
  %101 = icmp eq %struct.TYPE_19__* %100, null
  br i1 %101, label %115, label %102

102:                                              ; preds = %94
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = load i32 (%struct.TYPE_19__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_19__*, i32*, i32*, i32*, i32*)** %106, align 8
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = load i32*, i32** %9, align 8
  %111 = load i32*, i32** %10, align 8
  %112 = load i32*, i32** %7, align 8
  %113 = call i32 %107(%struct.TYPE_19__* %108, i32* %109, i32* %110, i32* %111, i32* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %102, %94
  %116 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_DATA, align 4
  %117 = load i32, i32* @ERR_R_EC_LIB, align 4
  %118 = call i32 @ECerr(i32 %116, i32 %117)
  br label %248

119:                                              ; preds = %102
  br label %151

120:                                              ; preds = %90
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @NID_X9_62_prime_field, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %138

126:                                              ; preds = %120
  %127 = load i32*, i32** %8, align 8
  %128 = load i32*, i32** %9, align 8
  %129 = load i32*, i32** %10, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = call %struct.TYPE_19__* @EC_GROUP_new_curve_GFp(i32* %127, i32* %128, i32* %129, i32* %130)
  store %struct.TYPE_19__* %131, %struct.TYPE_19__** %5, align 8
  %132 = icmp eq %struct.TYPE_19__* %131, null
  br i1 %132, label %133, label %137

133:                                              ; preds = %126
  %134 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_DATA, align 4
  %135 = load i32, i32* @ERR_R_EC_LIB, align 4
  %136 = call i32 @ECerr(i32 %134, i32 %135)
  br label %248

137:                                              ; preds = %126
  br label %150

138:                                              ; preds = %120
  %139 = load i32*, i32** %8, align 8
  %140 = load i32*, i32** %9, align 8
  %141 = load i32*, i32** %10, align 8
  %142 = load i32*, i32** %7, align 8
  %143 = call %struct.TYPE_19__* @EC_GROUP_new_curve_GF2m(i32* %139, i32* %140, i32* %141, i32* %142)
  store %struct.TYPE_19__* %143, %struct.TYPE_19__** %5, align 8
  %144 = icmp eq %struct.TYPE_19__* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %138
  %146 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_DATA, align 4
  %147 = load i32, i32* @ERR_R_EC_LIB, align 4
  %148 = call i32 @ECerr(i32 %146, i32 %147)
  br label %248

149:                                              ; preds = %138
  br label %150

150:                                              ; preds = %149, %137
  br label %151

151:                                              ; preds = %150, %119
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %1, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @EC_GROUP_set_curve_name(%struct.TYPE_19__* %152, i32 %154)
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %157 = call i32* @EC_POINT_new(%struct.TYPE_19__* %156)
  store i32* %157, i32** %6, align 8
  %158 = icmp eq i32* %157, null
  br i1 %158, label %159, label %163

159:                                              ; preds = %151
  %160 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_DATA, align 4
  %161 = load i32, i32* @ERR_R_EC_LIB, align 4
  %162 = call i32 @ECerr(i32 %160, i32 %161)
  br label %248

163:                                              ; preds = %151
  %164 = load i8*, i8** %19, align 8
  %165 = load i32, i32* %16, align 4
  %166 = mul nsw i32 3, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %164, i64 %167
  %169 = load i32, i32* %16, align 4
  %170 = call i32* @BN_bin2bn(i8* %168, i32 %169, i32* null)
  store i32* %170, i32** %11, align 8
  %171 = icmp eq i32* %170, null
  br i1 %171, label %181, label %172

172:                                              ; preds = %163
  %173 = load i8*, i8** %19, align 8
  %174 = load i32, i32* %16, align 4
  %175 = mul nsw i32 4, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %173, i64 %176
  %178 = load i32, i32* %16, align 4
  %179 = call i32* @BN_bin2bn(i8* %177, i32 %178, i32* null)
  store i32* %179, i32** %12, align 8
  %180 = icmp eq i32* %179, null
  br i1 %180, label %181, label %185

181:                                              ; preds = %172, %163
  %182 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_DATA, align 4
  %183 = load i32, i32* @ERR_R_BN_LIB, align 4
  %184 = call i32 @ECerr(i32 %182, i32 %183)
  br label %248

185:                                              ; preds = %172
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %187 = load i32*, i32** %6, align 8
  %188 = load i32*, i32** %11, align 8
  %189 = load i32*, i32** %12, align 8
  %190 = load i32*, i32** %7, align 8
  %191 = call i32 @EC_POINT_set_affine_coordinates(%struct.TYPE_19__* %186, i32* %187, i32* %188, i32* %189, i32* %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %185
  %194 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_DATA, align 4
  %195 = load i32, i32* @ERR_R_EC_LIB, align 4
  %196 = call i32 @ECerr(i32 %194, i32 %195)
  br label %248

197:                                              ; preds = %185
  %198 = load i8*, i8** %19, align 8
  %199 = load i32, i32* %16, align 4
  %200 = mul nsw i32 5, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %198, i64 %201
  %203 = load i32, i32* %16, align 4
  %204 = call i32* @BN_bin2bn(i8* %202, i32 %203, i32* null)
  store i32* %204, i32** %13, align 8
  %205 = icmp eq i32* %204, null
  br i1 %205, label %214, label %206

206:                                              ; preds = %197
  %207 = load i32*, i32** %11, align 8
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = trunc i64 %210 to i32
  %212 = call i32 @BN_set_word(i32* %207, i32 %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %218, label %214

214:                                              ; preds = %206, %197
  %215 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_DATA, align 4
  %216 = load i32, i32* @ERR_R_BN_LIB, align 4
  %217 = call i32 @ECerr(i32 %215, i32 %216)
  br label %248

218:                                              ; preds = %206
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %220 = load i32*, i32** %6, align 8
  %221 = load i32*, i32** %13, align 8
  %222 = load i32*, i32** %11, align 8
  %223 = call i32 @EC_GROUP_set_generator(%struct.TYPE_19__* %219, i32* %220, i32* %221, i32* %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %229, label %225

225:                                              ; preds = %218
  %226 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_DATA, align 4
  %227 = load i32, i32* @ERR_R_EC_LIB, align 4
  %228 = call i32 @ECerr(i32 %226, i32 %227)
  br label %248

229:                                              ; preds = %218
  %230 = load i32, i32* %15, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %247

232:                                              ; preds = %229
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %234 = load i8*, i8** %19, align 8
  %235 = load i32, i32* %15, align 4
  %236 = sext i32 %235 to i64
  %237 = sub i64 0, %236
  %238 = getelementptr inbounds i8, i8* %234, i64 %237
  %239 = load i32, i32* %15, align 4
  %240 = call i32 @EC_GROUP_set_seed(%struct.TYPE_19__* %233, i8* %238, i32 %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %246, label %242

242:                                              ; preds = %232
  %243 = load i32, i32* @EC_F_EC_GROUP_NEW_FROM_DATA, align 4
  %244 = load i32, i32* @ERR_R_EC_LIB, align 4
  %245 = call i32 @ECerr(i32 %243, i32 %244)
  br label %248

246:                                              ; preds = %232
  br label %247

247:                                              ; preds = %246, %229
  store i32 1, i32* %14, align 4
  br label %248

248:                                              ; preds = %247, %242, %225, %214, %193, %181, %159, %145, %133, %115, %86, %40
  %249 = load i32, i32* %14, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %254, label %251

251:                                              ; preds = %248
  %252 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %253 = call i32 @EC_GROUP_free(%struct.TYPE_19__* %252)
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %5, align 8
  br label %254

254:                                              ; preds = %251, %248
  %255 = load i32*, i32** %6, align 8
  %256 = call i32 @EC_POINT_free(i32* %255)
  %257 = load i32*, i32** %7, align 8
  %258 = call i32 @BN_CTX_free(i32* %257)
  %259 = load i32*, i32** %8, align 8
  %260 = call i32 @BN_free(i32* %259)
  %261 = load i32*, i32** %9, align 8
  %262 = call i32 @BN_free(i32* %261)
  %263 = load i32*, i32** %10, align 8
  %264 = call i32 @BN_free(i32* %263)
  %265 = load i32*, i32** %13, align 8
  %266 = call i32 @BN_free(i32* %265)
  %267 = load i32*, i32** %11, align 8
  %268 = call i32 @BN_free(i32* %267)
  %269 = load i32*, i32** %12, align 8
  %270 = call i32 @BN_free(i32* %269)
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_19__* %271, %struct.TYPE_19__** %3, align 8
  br label %272

272:                                              ; preds = %254, %33
  %273 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  ret %struct.TYPE_19__* %273
}

declare dso_local %struct.TYPE_19__* @EC_GROUP_new_ex(i32*, i32*) #1

declare dso_local i32* @BN_CTX_new_ex(i32*) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32* @BN_bin2bn(i8*, i32, i32*) #1

declare dso_local %struct.TYPE_19__* @EC_GROUP_new_curve_GFp(i32*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_19__* @EC_GROUP_new_curve_GF2m(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_GROUP_set_curve_name(%struct.TYPE_19__*, i32) #1

declare dso_local i32* @EC_POINT_new(%struct.TYPE_19__*) #1

declare dso_local i32 @EC_POINT_set_affine_coordinates(%struct.TYPE_19__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_set_word(i32*, i32) #1

declare dso_local i32 @EC_GROUP_set_generator(%struct.TYPE_19__*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_GROUP_set_seed(%struct.TYPE_19__*, i8*, i32) #1

declare dso_local i32 @EC_GROUP_free(%struct.TYPE_19__*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

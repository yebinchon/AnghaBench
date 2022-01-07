; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_eck_prn.c_ECPKParameters_print.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_eck_prn.c_ECPKParameters_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERR_R_BIO_LIB = common dso_local global i32 0, align 4
@ECPKParameters_print.gen_compressed = internal global i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [24 x i8] c"Generator (compressed):\00", align 1
@ECPKParameters_print.gen_uncompressed = internal global i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Generator (uncompressed):\00", align 1
@ECPKParameters_print.gen_hybrid = internal global i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"Generator (hybrid):\00", align 1
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"ASN1 OID: %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"NIST CURVE: %s\0A\00", align 1
@NID_X9_62_characteristic_two_field = common dso_local global i32 0, align 4
@ERR_R_EC_LIB = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"Field Type: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Basis Type: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Polynomial:\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Prime:\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"A:   \00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"B:   \00", align 1
@POINT_CONVERSION_COMPRESSED = common dso_local global i64 0, align 8
@POINT_CONVERSION_UNCOMPRESSED = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"Order: \00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Cofactor: \00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"Seed:\00", align 1
@EC_F_ECPKPARAMETERS_PRINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ECPKParameters_print(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %25 = load i32, i32* @ERR_R_BIO_LIB, align 4
  store i32 %25, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i64 0, i64* %18, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  store i32 %29, i32* %8, align 4
  br label %300

30:                                               ; preds = %3
  %31 = call i32* (...) @BN_CTX_new()
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  store i32 %35, i32* %8, align 4
  br label %300

36:                                               ; preds = %30
  %37 = load i32*, i32** %5, align 8
  %38 = call i64 @EC_GROUP_get_asn1_flag(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %83

40:                                               ; preds = %36
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @BIO_indent(i32* %41, i32 %42, i32 128)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %300

46:                                               ; preds = %40
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @EC_GROUP_get_curve_name(i32* %47)
  store i32 %48, i32* %19, align 4
  %49 = load i32, i32* %19, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %300

52:                                               ; preds = %46
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %19, align 4
  %55 = call i8* @OBJ_nid2sn(i32 %54)
  %56 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  %57 = icmp sle i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %300

59:                                               ; preds = %52
  %60 = load i32*, i32** %4, align 8
  %61 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %62 = icmp sle i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %300

64:                                               ; preds = %59
  %65 = load i32, i32* %19, align 4
  %66 = call i8* @EC_curve_nid2nist(i32 %65)
  store i8* %66, i8** %20, align 8
  %67 = load i8*, i8** %20, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %82

69:                                               ; preds = %64
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @BIO_indent(i32* %70, i32 %71, i32 128)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  br label %300

75:                                               ; preds = %69
  %76 = load i32*, i32** %4, align 8
  %77 = load i8*, i8** %20, align 8
  %78 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %77)
  %79 = icmp sle i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %300

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81, %64
  br label %299

83:                                               ; preds = %36
  store i32 0, i32* %21, align 4
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @EC_GROUP_method_of(i32* %84)
  %86 = call i32 @EC_METHOD_get_field_type(i32 %85)
  store i32 %86, i32* %23, align 4
  %87 = load i32, i32* %23, align 4
  %88 = load i32, i32* @NID_X9_62_characteristic_two_field, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  store i32 1, i32* %21, align 4
  br label %91

91:                                               ; preds = %90, %83
  %92 = call i32* (...) @BN_new()
  store i32* %92, i32** %11, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %100, label %94

94:                                               ; preds = %91
  %95 = call i32* (...) @BN_new()
  store i32* %95, i32** %12, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = call i32* (...) @BN_new()
  store i32* %98, i32** %13, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %97, %94, %91
  %101 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  store i32 %101, i32* %8, align 4
  br label %300

102:                                              ; preds = %97
  %103 = load i32*, i32** %5, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = load i32*, i32** %12, align 8
  %106 = load i32*, i32** %13, align 8
  %107 = load i32*, i32** %9, align 8
  %108 = call i32 @EC_GROUP_get_curve(i32* %103, i32* %104, i32* %105, i32* %106, i32* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %102
  %111 = load i32, i32* @ERR_R_EC_LIB, align 4
  store i32 %111, i32* %8, align 4
  br label %300

112:                                              ; preds = %102
  %113 = load i32*, i32** %5, align 8
  %114 = call i32* @EC_GROUP_get0_generator(i32* %113)
  store i32* %114, i32** %10, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load i32, i32* @ERR_R_EC_LIB, align 4
  store i32 %117, i32* %8, align 4
  br label %300

118:                                              ; preds = %112
  %119 = load i32*, i32** %5, align 8
  %120 = call i32* @EC_GROUP_get0_order(i32* %119)
  store i32* %120, i32** %15, align 8
  %121 = load i32*, i32** %5, align 8
  %122 = call i32* @EC_GROUP_get0_cofactor(i32* %121)
  store i32* %122, i32** %16, align 8
  %123 = load i32*, i32** %15, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = load i32, i32* @ERR_R_EC_LIB, align 4
  store i32 %126, i32* %8, align 4
  br label %300

127:                                              ; preds = %118
  %128 = load i32*, i32** %5, align 8
  %129 = call i64 @EC_GROUP_get_point_conversion_form(i32* %128)
  store i64 %129, i64* %22, align 8
  %130 = load i32*, i32** %5, align 8
  %131 = load i32*, i32** %10, align 8
  %132 = load i64, i64* %22, align 8
  %133 = load i32*, i32** %9, align 8
  %134 = call i32* @EC_POINT_point2bn(i32* %130, i32* %131, i64 %132, i32* null, i32* %133)
  store i32* %134, i32** %14, align 8
  %135 = icmp eq i32* %134, null
  br i1 %135, label %136, label %138

136:                                              ; preds = %127
  %137 = load i32, i32* @ERR_R_EC_LIB, align 4
  store i32 %137, i32* %8, align 4
  br label %300

138:                                              ; preds = %127
  %139 = load i32*, i32** %5, align 8
  %140 = call i8* @EC_GROUP_get0_seed(i32* %139)
  store i8* %140, i8** %17, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load i32*, i32** %5, align 8
  %144 = call i64 @EC_GROUP_get_seed_len(i32* %143)
  store i64 %144, i64* %18, align 8
  br label %145

145:                                              ; preds = %142, %138
  %146 = load i32*, i32** %4, align 8
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @BIO_indent(i32* %146, i32 %147, i32 128)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %145
  br label %300

151:                                              ; preds = %145
  %152 = load i32*, i32** %4, align 8
  %153 = load i32, i32* %23, align 4
  %154 = call i8* @OBJ_nid2sn(i32 %153)
  %155 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %152, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %154)
  %156 = icmp sle i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  br label %300

158:                                              ; preds = %151
  %159 = load i32, i32* %21, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %191

161:                                              ; preds = %158
  %162 = load i32*, i32** %5, align 8
  %163 = call i32 @EC_GROUP_get_basis_type(i32* %162)
  store i32 %163, i32* %24, align 4
  %164 = load i32, i32* %24, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  br label %300

167:                                              ; preds = %161
  %168 = load i32*, i32** %4, align 8
  %169 = load i32, i32* %6, align 4
  %170 = call i32 @BIO_indent(i32* %168, i32 %169, i32 128)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %167
  br label %300

173:                                              ; preds = %167
  %174 = load i32*, i32** %4, align 8
  %175 = load i32, i32* %24, align 4
  %176 = call i8* @OBJ_nid2sn(i32 %175)
  %177 = call i64 (i32*, i8*, ...) @BIO_printf(i32* %174, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %176)
  %178 = icmp sle i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %173
  br label %300

180:                                              ; preds = %173
  %181 = load i32*, i32** %11, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %183, label %190

183:                                              ; preds = %180
  %184 = load i32*, i32** %4, align 8
  %185 = load i32*, i32** %11, align 8
  %186 = load i32, i32* %6, align 4
  %187 = call i32 @ASN1_bn_print(i32* %184, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32* %185, i32* null, i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %183
  br label %300

190:                                              ; preds = %183, %180
  br label %202

191:                                              ; preds = %158
  %192 = load i32*, i32** %11, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %201

194:                                              ; preds = %191
  %195 = load i32*, i32** %4, align 8
  %196 = load i32*, i32** %11, align 8
  %197 = load i32, i32* %6, align 4
  %198 = call i32 @ASN1_bn_print(i32* %195, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32* %196, i32* null, i32 %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %194
  br label %300

201:                                              ; preds = %194, %191
  br label %202

202:                                              ; preds = %201, %190
  %203 = load i32*, i32** %12, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %212

205:                                              ; preds = %202
  %206 = load i32*, i32** %4, align 8
  %207 = load i32*, i32** %12, align 8
  %208 = load i32, i32* %6, align 4
  %209 = call i32 @ASN1_bn_print(i32* %206, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32* %207, i32* null, i32 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %205
  br label %300

212:                                              ; preds = %205, %202
  %213 = load i32*, i32** %13, align 8
  %214 = icmp ne i32* %213, null
  br i1 %214, label %215, label %222

215:                                              ; preds = %212
  %216 = load i32*, i32** %4, align 8
  %217 = load i32*, i32** %13, align 8
  %218 = load i32, i32* %6, align 4
  %219 = call i32 @ASN1_bn_print(i32* %216, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32* %217, i32* null, i32 %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %215
  br label %300

222:                                              ; preds = %215, %212
  %223 = load i64, i64* %22, align 8
  %224 = load i64, i64* @POINT_CONVERSION_COMPRESSED, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %238

226:                                              ; preds = %222
  %227 = load i32*, i32** %14, align 8
  %228 = icmp ne i32* %227, null
  br i1 %228, label %229, label %237

229:                                              ; preds = %226
  %230 = load i32*, i32** %4, align 8
  %231 = load i8*, i8** @ECPKParameters_print.gen_compressed, align 8
  %232 = load i32*, i32** %14, align 8
  %233 = load i32, i32* %6, align 4
  %234 = call i32 @ASN1_bn_print(i32* %230, i8* %231, i32* %232, i32* null, i32 %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %229
  br label %300

237:                                              ; preds = %229, %226
  br label %267

238:                                              ; preds = %222
  %239 = load i64, i64* %22, align 8
  %240 = load i64, i64* @POINT_CONVERSION_UNCOMPRESSED, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %254

242:                                              ; preds = %238
  %243 = load i32*, i32** %14, align 8
  %244 = icmp ne i32* %243, null
  br i1 %244, label %245, label %253

245:                                              ; preds = %242
  %246 = load i32*, i32** %4, align 8
  %247 = load i8*, i8** @ECPKParameters_print.gen_uncompressed, align 8
  %248 = load i32*, i32** %14, align 8
  %249 = load i32, i32* %6, align 4
  %250 = call i32 @ASN1_bn_print(i32* %246, i8* %247, i32* %248, i32* null, i32 %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %253, label %252

252:                                              ; preds = %245
  br label %300

253:                                              ; preds = %245, %242
  br label %266

254:                                              ; preds = %238
  %255 = load i32*, i32** %14, align 8
  %256 = icmp ne i32* %255, null
  br i1 %256, label %257, label %265

257:                                              ; preds = %254
  %258 = load i32*, i32** %4, align 8
  %259 = load i8*, i8** @ECPKParameters_print.gen_hybrid, align 8
  %260 = load i32*, i32** %14, align 8
  %261 = load i32, i32* %6, align 4
  %262 = call i32 @ASN1_bn_print(i32* %258, i8* %259, i32* %260, i32* null, i32 %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %257
  br label %300

265:                                              ; preds = %257, %254
  br label %266

266:                                              ; preds = %265, %253
  br label %267

267:                                              ; preds = %266, %237
  %268 = load i32*, i32** %15, align 8
  %269 = icmp ne i32* %268, null
  br i1 %269, label %270, label %277

270:                                              ; preds = %267
  %271 = load i32*, i32** %4, align 8
  %272 = load i32*, i32** %15, align 8
  %273 = load i32, i32* %6, align 4
  %274 = call i32 @ASN1_bn_print(i32* %271, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32* %272, i32* null, i32 %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %270
  br label %300

277:                                              ; preds = %270, %267
  %278 = load i32*, i32** %16, align 8
  %279 = icmp ne i32* %278, null
  br i1 %279, label %280, label %287

280:                                              ; preds = %277
  %281 = load i32*, i32** %4, align 8
  %282 = load i32*, i32** %16, align 8
  %283 = load i32, i32* %6, align 4
  %284 = call i32 @ASN1_bn_print(i32* %281, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32* %282, i32* null, i32 %283)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %287, label %286

286:                                              ; preds = %280
  br label %300

287:                                              ; preds = %280, %277
  %288 = load i8*, i8** %17, align 8
  %289 = icmp ne i8* %288, null
  br i1 %289, label %290, label %298

290:                                              ; preds = %287
  %291 = load i32*, i32** %4, align 8
  %292 = load i8*, i8** %17, align 8
  %293 = load i64, i64* %18, align 8
  %294 = load i32, i32* %6, align 4
  %295 = call i32 @print_bin(i32* %291, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* %292, i64 %293, i32 %294)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %298, label %297

297:                                              ; preds = %290
  br label %300

298:                                              ; preds = %290, %287
  br label %299

299:                                              ; preds = %298, %82
  store i32 1, i32* %7, align 4
  br label %300

300:                                              ; preds = %299, %297, %286, %276, %264, %252, %236, %221, %211, %200, %189, %179, %172, %166, %157, %150, %136, %125, %116, %110, %100, %80, %74, %63, %58, %51, %45, %34, %28
  %301 = load i32, i32* %7, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %307, label %303

303:                                              ; preds = %300
  %304 = load i32, i32* @EC_F_ECPKPARAMETERS_PRINT, align 4
  %305 = load i32, i32* %8, align 4
  %306 = call i32 @ECerr(i32 %304, i32 %305)
  br label %307

307:                                              ; preds = %303, %300
  %308 = load i32*, i32** %11, align 8
  %309 = call i32 @BN_free(i32* %308)
  %310 = load i32*, i32** %12, align 8
  %311 = call i32 @BN_free(i32* %310)
  %312 = load i32*, i32** %13, align 8
  %313 = call i32 @BN_free(i32* %312)
  %314 = load i32*, i32** %14, align 8
  %315 = call i32 @BN_free(i32* %314)
  %316 = load i32*, i32** %9, align 8
  %317 = call i32 @BN_CTX_free(i32* %316)
  %318 = load i32, i32* %7, align 4
  ret i32 %318
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i64 @EC_GROUP_get_asn1_flag(i32*) #1

declare dso_local i32 @BIO_indent(i32*, i32, i32) #1

declare dso_local i32 @EC_GROUP_get_curve_name(i32*) #1

declare dso_local i64 @BIO_printf(i32*, i8*, ...) #1

declare dso_local i8* @OBJ_nid2sn(i32) #1

declare dso_local i8* @EC_curve_nid2nist(i32) #1

declare dso_local i32 @EC_METHOD_get_field_type(i32) #1

declare dso_local i32 @EC_GROUP_method_of(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @EC_GROUP_get_curve(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @EC_GROUP_get0_generator(i32*) #1

declare dso_local i32* @EC_GROUP_get0_order(i32*) #1

declare dso_local i32* @EC_GROUP_get0_cofactor(i32*) #1

declare dso_local i64 @EC_GROUP_get_point_conversion_form(i32*) #1

declare dso_local i32* @EC_POINT_point2bn(i32*, i32*, i64, i32*, i32*) #1

declare dso_local i8* @EC_GROUP_get0_seed(i32*) #1

declare dso_local i64 @EC_GROUP_get_seed_len(i32*) #1

declare dso_local i32 @EC_GROUP_get_basis_type(i32*) #1

declare dso_local i32 @ASN1_bn_print(i32*, i8*, i32*, i32*, i32) #1

declare dso_local i32 @print_bin(i32*, i8*, i8*, i64, i32) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

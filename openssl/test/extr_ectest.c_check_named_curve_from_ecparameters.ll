; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ectest.c_check_named_curve_from_ecparameters.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ectest.c_check_named_curve_from_ecparameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@check_named_curve_from_ecparameters.invalid_seed = internal constant [25 x i8] c"THIS IS NOT A VALID SEED\00", align 16
@check_named_curve_from_ecparameters.invalid_seed_len = internal global i64 25, align 8
@curves = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"Curve %s\00", align 1
@NID_undef = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"nid = %s, tnid = %s\00", align 1
@OPENSSL_EC_EXPLICIT_CURVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @check_named_curve_from_ecparameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_named_curve_from_ecparameters(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca [8 x i32*], align 16
  %22 = alloca i32**, align 8
  %23 = alloca [8 x i32*], align 16
  %24 = alloca i32**, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  %25 = bitcast [8 x i32*]* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 64, i1 false)
  %26 = getelementptr inbounds [8 x i32*], [8 x i32*]* %21, i64 0, i64 0
  store i32** %26, i32*** %22, align 8
  %27 = bitcast [8 x i32*]* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 64, i1 false)
  %28 = getelementptr inbounds [8 x i32*], [8 x i32*]* %23, i64 0, i64 0
  store i32** %28, i32*** %24, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curves, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @OBJ_nid2sn(i32 %35)
  %37 = call i32 @TEST_note(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = call i32* (...) @BN_CTX_new()
  store i32* %38, i32** %18, align 8
  %39 = call i32 @TEST_ptr(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %1
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %534

43:                                               ; preds = %1
  %44 = load i32*, i32** %18, align 8
  %45 = call i32 @BN_CTX_start(i32* %44)
  %46 = load i32*, i32** %18, align 8
  %47 = call i32* @BN_CTX_get(i32* %46)
  store i32* %47, i32** %12, align 8
  %48 = call i32 @TEST_ptr(i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %147

50:                                               ; preds = %43
  %51 = load i32*, i32** %18, align 8
  %52 = call i32* @BN_CTX_get(i32* %51)
  store i32* %52, i32** %14, align 8
  %53 = call i32 @TEST_ptr(i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %147

55:                                               ; preds = %50
  %56 = load i32*, i32** %18, align 8
  %57 = call i32* @BN_CTX_get(i32* %56)
  store i32* %57, i32** %15, align 8
  %58 = call i32 @TEST_ptr(i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %147

60:                                               ; preds = %55
  %61 = load i32*, i32** %18, align 8
  %62 = call i32* @BN_CTX_get(i32* %61)
  store i32* %62, i32** %17, align 8
  %63 = call i32 @TEST_ptr(i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %147

65:                                               ; preds = %60
  %66 = load i32*, i32** %18, align 8
  %67 = call i32* @BN_CTX_get(i32* %66)
  store i32* %67, i32** %13, align 8
  %68 = call i32 @TEST_ptr(i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %147

70:                                               ; preds = %65
  %71 = load i32, i32* %5, align 4
  %72 = call i32* @EC_GROUP_new_by_curve_name(i32 %71)
  store i32* %72, i32** %7, align 8
  %73 = call i32 @TEST_ptr(i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %147

75:                                               ; preds = %70
  %76 = load i32*, i32** %7, align 8
  %77 = call i8* @EC_GROUP_get_ecparameters(i32* %76, i32* null)
  %78 = bitcast i8* %77 to i32*
  store i32* %78, i32** %19, align 8
  %79 = call i32 @TEST_ptr(i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %147

81:                                               ; preds = %75
  %82 = load i32*, i32** %7, align 8
  %83 = call i32* @EC_GROUP_get0_generator(i32* %82)
  store i32* %83, i32** %10, align 8
  %84 = call i32 @TEST_ptr(i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %147

86:                                               ; preds = %81
  %87 = load i32*, i32** %7, align 8
  %88 = call i32* @EC_GROUP_get0_order(i32* %87)
  store i32* %88, i32** %16, align 8
  %89 = call i32 @TEST_ptr(i32* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %147

91:                                               ; preds = %86
  %92 = load i32*, i32** %7, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = call i32 @EC_GROUP_get_cofactor(i32* %92, i32* %93, i32* null)
  %95 = call i32 @TEST_true(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %147

97:                                               ; preds = %91
  %98 = load i32*, i32** %7, align 8
  %99 = call i32* @EC_GROUP_dup(i32* %98)
  store i32* %99, i32** %9, align 8
  %100 = call i32 @TEST_ptr(i32* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %147

102:                                              ; preds = %97
  %103 = load i32*, i32** %10, align 8
  %104 = load i32*, i32** %7, align 8
  %105 = call i32* @EC_POINT_dup(i32* %103, i32* %104)
  store i32* %105, i32** %11, align 8
  %106 = call i32 @TEST_ptr(i32* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %147

108:                                              ; preds = %102
  %109 = load i32*, i32** %7, align 8
  %110 = load i32*, i32** %11, align 8
  %111 = load i32*, i32** %10, align 8
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @EC_POINT_add(i32* %109, i32* %110, i32* %111, i32* %112, i32* null)
  %114 = call i32 @TEST_true(i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %147

116:                                              ; preds = %108
  %117 = load i32*, i32** %7, align 8
  %118 = load i32*, i32** %11, align 8
  %119 = load i32*, i32** %14, align 8
  %120 = load i32*, i32** %15, align 8
  %121 = load i32*, i32** %18, align 8
  %122 = call i32 @EC_POINT_get_affine_coordinates(i32* %117, i32* %118, i32* %119, i32* %120, i32* %121)
  %123 = call i32 @TEST_true(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %147

125:                                              ; preds = %116
  %126 = load i32*, i32** %17, align 8
  %127 = load i32*, i32** %16, align 8
  %128 = call i32 @BN_copy(i32* %126, i32* %127)
  %129 = call i32 @TEST_true(i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %147

131:                                              ; preds = %125
  %132 = load i32*, i32** %17, align 8
  %133 = call i32 @BN_add_word(i32* %132, i32 1)
  %134 = call i32 @TEST_true(i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %131
  %137 = load i32*, i32** %13, align 8
  %138 = load i32*, i32** %12, align 8
  %139 = call i32 @BN_copy(i32* %137, i32* %138)
  %140 = call i32 @TEST_true(i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %136
  %143 = load i32*, i32** %13, align 8
  %144 = call i32 @BN_add_word(i32* %143, i32 1)
  %145 = call i32 @TEST_true(i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %142, %136, %131, %125, %116, %108, %102, %97, %91, %86, %81, %75, %70, %65, %60, %55, %50, %43
  br label %486

148:                                              ; preds = %142
  %149 = load i32*, i32** %11, align 8
  %150 = call i32 @EC_POINT_free(i32* %149)
  store i32* null, i32** %11, align 8
  %151 = load i32*, i32** %9, align 8
  %152 = call i32* @EC_POINT_new(i32* %151)
  store i32* %152, i32** %11, align 8
  %153 = call i32 @TEST_ptr(i32* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %148
  %156 = load i32*, i32** %9, align 8
  %157 = load i32*, i32** %11, align 8
  %158 = load i32*, i32** %14, align 8
  %159 = load i32*, i32** %15, align 8
  %160 = load i32*, i32** %18, align 8
  %161 = call i32 @EC_POINT_set_affine_coordinates(i32* %156, i32* %157, i32* %158, i32* %159, i32* %160)
  %162 = call i32 @TEST_true(i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %155, %148
  br label %486

165:                                              ; preds = %155
  %166 = load i32*, i32** %19, align 8
  %167 = call i8* @EC_GROUP_new_from_ecparameters(i32* %166)
  %168 = bitcast i8* %167 to i32*
  %169 = load i32**, i32*** %22, align 8
  %170 = getelementptr inbounds i32*, i32** %169, i32 1
  store i32** %170, i32*** %22, align 8
  store i32* %168, i32** %169, align 8
  store i32* %168, i32** %8, align 8
  %171 = call i32 @TEST_ptr(i32* %168)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %165
  %174 = load i32*, i32** %8, align 8
  %175 = call i32 @EC_GROUP_get_curve_name(i32* %174)
  store i32 %175, i32* %6, align 4
  %176 = load i32, i32* @NID_undef, align 4
  %177 = call i32 @TEST_int_ne(i32 %175, i32 %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %173, %165
  br label %486

180:                                              ; preds = %173
  %181 = load i32, i32* %5, align 4
  %182 = load i32, i32* %6, align 4
  %183 = call i32 @are_ec_nids_compatible(i32 %181, i32 %182)
  %184 = call i32 @TEST_true(i32 %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %192, label %186

186:                                              ; preds = %180
  %187 = load i32, i32* %5, align 4
  %188 = call i32 @OBJ_nid2sn(i32 %187)
  %189 = load i32, i32* %6, align 4
  %190 = call i32 @OBJ_nid2sn(i32 %189)
  %191 = call i32 @TEST_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %188, i32 %190)
  br label %486

192:                                              ; preds = %180
  %193 = load i32*, i32** %8, align 8
  %194 = call i32 @EC_GROUP_get_asn1_flag(i32* %193)
  %195 = load i32, i32* @OPENSSL_EC_EXPLICIT_CURVE, align 4
  %196 = call i32 @TEST_int_eq(i32 %194, i32 %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %192
  br label %486

199:                                              ; preds = %192
  %200 = load i32*, i32** %9, align 8
  %201 = load i64, i64* @check_named_curve_from_ecparameters.invalid_seed_len, align 8
  %202 = call i32 @EC_GROUP_set_seed(i32* %200, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @check_named_curve_from_ecparameters.invalid_seed, i64 0, i64 0), i64 %201)
  %203 = load i64, i64* @check_named_curve_from_ecparameters.invalid_seed_len, align 8
  %204 = trunc i64 %203 to i32
  %205 = call i32 @TEST_int_eq(i32 %202, i32 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %241

207:                                              ; preds = %199
  %208 = load i32*, i32** %9, align 8
  %209 = call i8* @EC_GROUP_get_ecparameters(i32* %208, i32* null)
  %210 = bitcast i8* %209 to i32*
  %211 = load i32**, i32*** %24, align 8
  %212 = getelementptr inbounds i32*, i32** %211, i32 1
  store i32** %212, i32*** %24, align 8
  store i32* %210, i32** %211, align 8
  store i32* %210, i32** %20, align 8
  %213 = call i32 @TEST_ptr(i32* %210)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %241

215:                                              ; preds = %207
  %216 = load i32*, i32** %20, align 8
  %217 = call i8* @EC_GROUP_new_from_ecparameters(i32* %216)
  %218 = bitcast i8* %217 to i32*
  %219 = load i32**, i32*** %22, align 8
  %220 = getelementptr inbounds i32*, i32** %219, i32 1
  store i32** %220, i32*** %22, align 8
  store i32* %218, i32** %219, align 8
  store i32* %218, i32** %8, align 8
  %221 = call i32 @TEST_ptr(i32* %218)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %241

223:                                              ; preds = %215
  %224 = load i32*, i32** %8, align 8
  %225 = call i32 @EC_GROUP_get_curve_name(i32* %224)
  store i32 %225, i32* %6, align 4
  %226 = load i32, i32* @NID_undef, align 4
  %227 = call i32 @TEST_int_ne(i32 %225, i32 %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %241

229:                                              ; preds = %223
  %230 = load i32, i32* %5, align 4
  %231 = load i32, i32* %6, align 4
  %232 = call i32 @are_ec_nids_compatible(i32 %230, i32 %231)
  %233 = call i32 @TEST_true(i32 %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %229
  %236 = load i32*, i32** %8, align 8
  %237 = call i32 @EC_GROUP_get_asn1_flag(i32* %236)
  %238 = load i32, i32* @OPENSSL_EC_EXPLICIT_CURVE, align 4
  %239 = call i32 @TEST_int_eq(i32 %237, i32 %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %247, label %241

241:                                              ; preds = %235, %229, %223, %215, %207, %199
  %242 = load i32, i32* %5, align 4
  %243 = call i32 @OBJ_nid2sn(i32 %242)
  %244 = load i32, i32* %6, align 4
  %245 = call i32 @OBJ_nid2sn(i32 %244)
  %246 = call i32 @TEST_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %243, i32 %245)
  br label %486

247:                                              ; preds = %235
  %248 = load i32*, i32** %9, align 8
  %249 = call i32 @EC_GROUP_set_seed(i32* %248, i8* null, i64 0)
  %250 = call i32 @TEST_int_eq(i32 %249, i32 1)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %286

252:                                              ; preds = %247
  %253 = load i32*, i32** %9, align 8
  %254 = call i8* @EC_GROUP_get_ecparameters(i32* %253, i32* null)
  %255 = bitcast i8* %254 to i32*
  %256 = load i32**, i32*** %24, align 8
  %257 = getelementptr inbounds i32*, i32** %256, i32 1
  store i32** %257, i32*** %24, align 8
  store i32* %255, i32** %256, align 8
  store i32* %255, i32** %20, align 8
  %258 = call i32 @TEST_ptr(i32* %255)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %286

260:                                              ; preds = %252
  %261 = load i32*, i32** %20, align 8
  %262 = call i8* @EC_GROUP_new_from_ecparameters(i32* %261)
  %263 = bitcast i8* %262 to i32*
  %264 = load i32**, i32*** %22, align 8
  %265 = getelementptr inbounds i32*, i32** %264, i32 1
  store i32** %265, i32*** %22, align 8
  store i32* %263, i32** %264, align 8
  store i32* %263, i32** %8, align 8
  %266 = call i32 @TEST_ptr(i32* %263)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %286

268:                                              ; preds = %260
  %269 = load i32*, i32** %8, align 8
  %270 = call i32 @EC_GROUP_get_curve_name(i32* %269)
  store i32 %270, i32* %6, align 4
  %271 = load i32, i32* @NID_undef, align 4
  %272 = call i32 @TEST_int_ne(i32 %270, i32 %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %286

274:                                              ; preds = %268
  %275 = load i32, i32* %5, align 4
  %276 = load i32, i32* %6, align 4
  %277 = call i32 @are_ec_nids_compatible(i32 %275, i32 %276)
  %278 = call i32 @TEST_true(i32 %277)
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %286

280:                                              ; preds = %274
  %281 = load i32*, i32** %8, align 8
  %282 = call i32 @EC_GROUP_get_asn1_flag(i32* %281)
  %283 = load i32, i32* @OPENSSL_EC_EXPLICIT_CURVE, align 4
  %284 = call i32 @TEST_int_eq(i32 %282, i32 %283)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %292, label %286

286:                                              ; preds = %280, %274, %268, %260, %252, %247
  %287 = load i32, i32* %5, align 4
  %288 = call i32 @OBJ_nid2sn(i32 %287)
  %289 = load i32, i32* %6, align 4
  %290 = call i32 @OBJ_nid2sn(i32 %289)
  %291 = call i32 @TEST_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %288, i32 %290)
  br label %486

292:                                              ; preds = %280
  %293 = load i32*, i32** %9, align 8
  %294 = load i32*, i32** %11, align 8
  %295 = load i32*, i32** %16, align 8
  %296 = load i32*, i32** %12, align 8
  %297 = call i32 @EC_GROUP_set_generator(i32* %293, i32* %294, i32* %295, i32* %296)
  %298 = call i32 @TEST_true(i32 %297)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %484

300:                                              ; preds = %292
  %301 = load i32*, i32** %9, align 8
  %302 = call i8* @EC_GROUP_get_ecparameters(i32* %301, i32* null)
  %303 = bitcast i8* %302 to i32*
  %304 = load i32**, i32*** %24, align 8
  %305 = getelementptr inbounds i32*, i32** %304, i32 1
  store i32** %305, i32*** %24, align 8
  store i32* %303, i32** %304, align 8
  store i32* %303, i32** %20, align 8
  %306 = call i32 @TEST_ptr(i32* %303)
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %484

308:                                              ; preds = %300
  %309 = load i32*, i32** %20, align 8
  %310 = call i8* @EC_GROUP_new_from_ecparameters(i32* %309)
  %311 = bitcast i8* %310 to i32*
  %312 = load i32**, i32*** %22, align 8
  %313 = getelementptr inbounds i32*, i32** %312, i32 1
  store i32** %313, i32*** %22, align 8
  store i32* %311, i32** %312, align 8
  store i32* %311, i32** %8, align 8
  %314 = call i32 @TEST_ptr(i32* %311)
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %484

316:                                              ; preds = %308
  %317 = load i32*, i32** %8, align 8
  %318 = call i32 @EC_GROUP_get_curve_name(i32* %317)
  store i32 %318, i32* %6, align 4
  %319 = load i32, i32* @NID_undef, align 4
  %320 = call i32 @TEST_int_eq(i32 %318, i32 %319)
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %484

322:                                              ; preds = %316
  %323 = load i32*, i32** %9, align 8
  %324 = load i32*, i32** %10, align 8
  %325 = load i32*, i32** %17, align 8
  %326 = load i32*, i32** %12, align 8
  %327 = call i32 @EC_GROUP_set_generator(i32* %323, i32* %324, i32* %325, i32* %326)
  %328 = call i32 @TEST_true(i32 %327)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %484

330:                                              ; preds = %322
  %331 = load i32*, i32** %9, align 8
  %332 = call i8* @EC_GROUP_get_ecparameters(i32* %331, i32* null)
  %333 = bitcast i8* %332 to i32*
  %334 = load i32**, i32*** %24, align 8
  %335 = getelementptr inbounds i32*, i32** %334, i32 1
  store i32** %335, i32*** %24, align 8
  store i32* %333, i32** %334, align 8
  store i32* %333, i32** %20, align 8
  %336 = call i32 @TEST_ptr(i32* %333)
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %484

338:                                              ; preds = %330
  %339 = load i32*, i32** %20, align 8
  %340 = call i8* @EC_GROUP_new_from_ecparameters(i32* %339)
  %341 = bitcast i8* %340 to i32*
  %342 = load i32**, i32*** %22, align 8
  %343 = getelementptr inbounds i32*, i32** %342, i32 1
  store i32** %343, i32*** %22, align 8
  store i32* %341, i32** %342, align 8
  store i32* %341, i32** %8, align 8
  %344 = call i32 @TEST_ptr(i32* %341)
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %484

346:                                              ; preds = %338
  %347 = load i32*, i32** %8, align 8
  %348 = call i32 @EC_GROUP_get_curve_name(i32* %347)
  store i32 %348, i32* %6, align 4
  %349 = load i32, i32* @NID_undef, align 4
  %350 = call i32 @TEST_int_eq(i32 %348, i32 %349)
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %484

352:                                              ; preds = %346
  %353 = load i32*, i32** %9, align 8
  %354 = load i32*, i32** %10, align 8
  %355 = load i32*, i32** %12, align 8
  %356 = call i32 @EC_GROUP_set_generator(i32* %353, i32* %354, i32* null, i32* %355)
  %357 = call i32 @TEST_false(i32 %356)
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %484

359:                                              ; preds = %352
  %360 = load i32*, i32** %9, align 8
  %361 = load i32*, i32** %10, align 8
  %362 = load i32*, i32** %16, align 8
  %363 = load i32*, i32** %13, align 8
  %364 = call i32 @EC_GROUP_set_generator(i32* %360, i32* %361, i32* %362, i32* %363)
  %365 = call i32 @TEST_true(i32 %364)
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %484

367:                                              ; preds = %359
  %368 = load i32*, i32** %9, align 8
  %369 = call i8* @EC_GROUP_get_ecparameters(i32* %368, i32* null)
  %370 = bitcast i8* %369 to i32*
  %371 = load i32**, i32*** %24, align 8
  %372 = getelementptr inbounds i32*, i32** %371, i32 1
  store i32** %372, i32*** %24, align 8
  store i32* %370, i32** %371, align 8
  store i32* %370, i32** %20, align 8
  %373 = call i32 @TEST_ptr(i32* %370)
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %484

375:                                              ; preds = %367
  %376 = load i32*, i32** %20, align 8
  %377 = call i8* @EC_GROUP_new_from_ecparameters(i32* %376)
  %378 = bitcast i8* %377 to i32*
  %379 = load i32**, i32*** %22, align 8
  %380 = getelementptr inbounds i32*, i32** %379, i32 1
  store i32** %380, i32*** %22, align 8
  store i32* %378, i32** %379, align 8
  store i32* %378, i32** %8, align 8
  %381 = call i32 @TEST_ptr(i32* %378)
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %484

383:                                              ; preds = %375
  %384 = load i32*, i32** %8, align 8
  %385 = call i32 @EC_GROUP_get_curve_name(i32* %384)
  store i32 %385, i32* %6, align 4
  %386 = load i32, i32* @NID_undef, align 4
  %387 = call i32 @TEST_int_ne(i32 %385, i32 %386)
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %484

389:                                              ; preds = %383
  %390 = load i32, i32* %5, align 4
  %391 = load i32, i32* %6, align 4
  %392 = call i32 @are_ec_nids_compatible(i32 %390, i32 %391)
  %393 = call i32 @TEST_true(i32 %392)
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %484

395:                                              ; preds = %389
  %396 = load i32*, i32** %8, align 8
  %397 = call i32 @EC_GROUP_get_asn1_flag(i32* %396)
  %398 = load i32, i32* @OPENSSL_EC_EXPLICIT_CURVE, align 4
  %399 = call i32 @TEST_int_eq(i32 %397, i32 %398)
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %484

401:                                              ; preds = %395
  %402 = load i32*, i32** %9, align 8
  %403 = load i32*, i32** %10, align 8
  %404 = load i32*, i32** %16, align 8
  %405 = call i32 @EC_GROUP_set_generator(i32* %402, i32* %403, i32* %404, i32* null)
  %406 = call i32 @TEST_true(i32 %405)
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %484

408:                                              ; preds = %401
  %409 = load i32*, i32** %9, align 8
  %410 = call i8* @EC_GROUP_get_ecparameters(i32* %409, i32* null)
  %411 = bitcast i8* %410 to i32*
  %412 = load i32**, i32*** %24, align 8
  %413 = getelementptr inbounds i32*, i32** %412, i32 1
  store i32** %413, i32*** %24, align 8
  store i32* %411, i32** %412, align 8
  store i32* %411, i32** %20, align 8
  %414 = call i32 @TEST_ptr(i32* %411)
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %484

416:                                              ; preds = %408
  %417 = load i32*, i32** %20, align 8
  %418 = call i8* @EC_GROUP_new_from_ecparameters(i32* %417)
  %419 = bitcast i8* %418 to i32*
  %420 = load i32**, i32*** %22, align 8
  %421 = getelementptr inbounds i32*, i32** %420, i32 1
  store i32** %421, i32*** %22, align 8
  store i32* %419, i32** %420, align 8
  store i32* %419, i32** %8, align 8
  %422 = call i32 @TEST_ptr(i32* %419)
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %484

424:                                              ; preds = %416
  %425 = load i32*, i32** %8, align 8
  %426 = call i32 @EC_GROUP_get_curve_name(i32* %425)
  store i32 %426, i32* %6, align 4
  %427 = load i32, i32* @NID_undef, align 4
  %428 = call i32 @TEST_int_ne(i32 %426, i32 %427)
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %484

430:                                              ; preds = %424
  %431 = load i32, i32* %5, align 4
  %432 = load i32, i32* %6, align 4
  %433 = call i32 @are_ec_nids_compatible(i32 %431, i32 %432)
  %434 = call i32 @TEST_true(i32 %433)
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %484

436:                                              ; preds = %430
  %437 = load i32*, i32** %8, align 8
  %438 = call i32 @EC_GROUP_get_asn1_flag(i32* %437)
  %439 = load i32, i32* @OPENSSL_EC_EXPLICIT_CURVE, align 4
  %440 = call i32 @TEST_int_eq(i32 %438, i32 %439)
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %484

442:                                              ; preds = %436
  %443 = load i32*, i32** %9, align 8
  %444 = load i32*, i32** %10, align 8
  %445 = load i32*, i32** %16, align 8
  %446 = load i32*, i32** %12, align 8
  %447 = call i32 @EC_GROUP_set_generator(i32* %443, i32* %444, i32* %445, i32* %446)
  %448 = call i32 @TEST_true(i32 %447)
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %484

450:                                              ; preds = %442
  %451 = load i32*, i32** %9, align 8
  %452 = call i8* @EC_GROUP_get_ecparameters(i32* %451, i32* null)
  %453 = bitcast i8* %452 to i32*
  %454 = load i32**, i32*** %24, align 8
  %455 = getelementptr inbounds i32*, i32** %454, i32 1
  store i32** %455, i32*** %24, align 8
  store i32* %453, i32** %454, align 8
  store i32* %453, i32** %20, align 8
  %456 = call i32 @TEST_ptr(i32* %453)
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %484

458:                                              ; preds = %450
  %459 = load i32*, i32** %20, align 8
  %460 = call i8* @EC_GROUP_new_from_ecparameters(i32* %459)
  %461 = bitcast i8* %460 to i32*
  %462 = load i32**, i32*** %22, align 8
  %463 = getelementptr inbounds i32*, i32** %462, i32 1
  store i32** %463, i32*** %22, align 8
  store i32* %461, i32** %462, align 8
  store i32* %461, i32** %8, align 8
  %464 = call i32 @TEST_ptr(i32* %461)
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %484

466:                                              ; preds = %458
  %467 = load i32*, i32** %8, align 8
  %468 = call i32 @EC_GROUP_get_curve_name(i32* %467)
  store i32 %468, i32* %6, align 4
  %469 = load i32, i32* @NID_undef, align 4
  %470 = call i32 @TEST_int_ne(i32 %468, i32 %469)
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %484

472:                                              ; preds = %466
  %473 = load i32, i32* %5, align 4
  %474 = load i32, i32* %6, align 4
  %475 = call i32 @are_ec_nids_compatible(i32 %473, i32 %474)
  %476 = call i32 @TEST_true(i32 %475)
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %484

478:                                              ; preds = %472
  %479 = load i32*, i32** %8, align 8
  %480 = call i32 @EC_GROUP_get_asn1_flag(i32* %479)
  %481 = load i32, i32* @OPENSSL_EC_EXPLICIT_CURVE, align 4
  %482 = call i32 @TEST_int_eq(i32 %480, i32 %481)
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %485, label %484

484:                                              ; preds = %478, %472, %466, %458, %450, %442, %436, %430, %424, %416, %408, %401, %395, %389, %383, %375, %367, %359, %352, %346, %338, %330, %322, %316, %308, %300, %292
  br label %486

485:                                              ; preds = %478
  store i32 1, i32* %4, align 4
  br label %486

486:                                              ; preds = %485, %484, %286, %241, %198, %186, %179, %164, %147
  %487 = getelementptr inbounds [8 x i32*], [8 x i32*]* %21, i64 0, i64 0
  store i32** %487, i32*** %22, align 8
  br label %488

488:                                              ; preds = %500, %486
  %489 = load i32**, i32*** %22, align 8
  %490 = getelementptr inbounds [8 x i32*], [8 x i32*]* %21, i64 0, i64 0
  %491 = getelementptr inbounds [8 x i32*], [8 x i32*]* %21, i64 0, i64 0
  %492 = call i32 @OSSL_NELEM(i32** %491)
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i32*, i32** %490, i64 %493
  %495 = icmp ult i32** %489, %494
  br i1 %495, label %496, label %503

496:                                              ; preds = %488
  %497 = load i32**, i32*** %22, align 8
  %498 = load i32*, i32** %497, align 8
  %499 = call i32 @EC_GROUP_free(i32* %498)
  br label %500

500:                                              ; preds = %496
  %501 = load i32**, i32*** %22, align 8
  %502 = getelementptr inbounds i32*, i32** %501, i32 1
  store i32** %502, i32*** %22, align 8
  br label %488

503:                                              ; preds = %488
  %504 = getelementptr inbounds [8 x i32*], [8 x i32*]* %23, i64 0, i64 0
  store i32** %504, i32*** %24, align 8
  br label %505

505:                                              ; preds = %517, %503
  %506 = load i32**, i32*** %24, align 8
  %507 = getelementptr inbounds [8 x i32*], [8 x i32*]* %23, i64 0, i64 0
  %508 = getelementptr inbounds [8 x i32*], [8 x i32*]* %21, i64 0, i64 0
  %509 = call i32 @OSSL_NELEM(i32** %508)
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i32*, i32** %507, i64 %510
  %512 = icmp ult i32** %506, %511
  br i1 %512, label %513, label %520

513:                                              ; preds = %505
  %514 = load i32**, i32*** %24, align 8
  %515 = load i32*, i32** %514, align 8
  %516 = call i32 @ECPARAMETERS_free(i32* %515)
  br label %517

517:                                              ; preds = %513
  %518 = load i32**, i32*** %24, align 8
  %519 = getelementptr inbounds i32*, i32** %518, i32 1
  store i32** %519, i32*** %24, align 8
  br label %505

520:                                              ; preds = %505
  %521 = load i32*, i32** %19, align 8
  %522 = call i32 @ECPARAMETERS_free(i32* %521)
  %523 = load i32*, i32** %11, align 8
  %524 = call i32 @EC_POINT_free(i32* %523)
  %525 = load i32*, i32** %9, align 8
  %526 = call i32 @EC_GROUP_free(i32* %525)
  %527 = load i32*, i32** %7, align 8
  %528 = call i32 @EC_GROUP_free(i32* %527)
  %529 = load i32*, i32** %18, align 8
  %530 = call i32 @BN_CTX_end(i32* %529)
  %531 = load i32*, i32** %18, align 8
  %532 = call i32 @BN_CTX_free(i32* %531)
  %533 = load i32, i32* %4, align 4
  store i32 %533, i32* %2, align 4
  br label %534

534:                                              ; preds = %520, %41
  %535 = load i32, i32* %2, align 4
  ret i32 %535
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @TEST_note(i8*, i32) #2

declare dso_local i32 @OBJ_nid2sn(i32) #2

declare dso_local i32 @TEST_ptr(i32*) #2

declare dso_local i32* @BN_CTX_new(...) #2

declare dso_local i32 @BN_CTX_start(i32*) #2

declare dso_local i32* @BN_CTX_get(i32*) #2

declare dso_local i32* @EC_GROUP_new_by_curve_name(i32) #2

declare dso_local i8* @EC_GROUP_get_ecparameters(i32*, i32*) #2

declare dso_local i32* @EC_GROUP_get0_generator(i32*) #2

declare dso_local i32* @EC_GROUP_get0_order(i32*) #2

declare dso_local i32 @TEST_true(i32) #2

declare dso_local i32 @EC_GROUP_get_cofactor(i32*, i32*, i32*) #2

declare dso_local i32* @EC_GROUP_dup(i32*) #2

declare dso_local i32* @EC_POINT_dup(i32*, i32*) #2

declare dso_local i32 @EC_POINT_add(i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @EC_POINT_get_affine_coordinates(i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @BN_copy(i32*, i32*) #2

declare dso_local i32 @BN_add_word(i32*, i32) #2

declare dso_local i32 @EC_POINT_free(i32*) #2

declare dso_local i32* @EC_POINT_new(i32*) #2

declare dso_local i32 @EC_POINT_set_affine_coordinates(i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i8* @EC_GROUP_new_from_ecparameters(i32*) #2

declare dso_local i32 @TEST_int_ne(i32, i32) #2

declare dso_local i32 @EC_GROUP_get_curve_name(i32*) #2

declare dso_local i32 @are_ec_nids_compatible(i32, i32) #2

declare dso_local i32 @TEST_info(i8*, i32, i32) #2

declare dso_local i32 @TEST_int_eq(i32, i32) #2

declare dso_local i32 @EC_GROUP_get_asn1_flag(i32*) #2

declare dso_local i32 @EC_GROUP_set_seed(i32*, i8*, i64) #2

declare dso_local i32 @EC_GROUP_set_generator(i32*, i32*, i32*, i32*) #2

declare dso_local i32 @TEST_false(i32) #2

declare dso_local i32 @OSSL_NELEM(i32**) #2

declare dso_local i32 @EC_GROUP_free(i32*) #2

declare dso_local i32 @ECPARAMETERS_free(i32*) #2

declare dso_local i32 @BN_CTX_end(i32*) #2

declare dso_local i32 @BN_CTX_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

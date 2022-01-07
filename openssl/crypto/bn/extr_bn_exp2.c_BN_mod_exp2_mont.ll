; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_exp2.c_BN_mod_exp2_mont.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_exp2.c_BN_mod_exp2_mont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32*, i64 }

@TABLE_SIZE = common dso_local global i32 0, align 4
@BN_F_BN_MOD_EXP2_MONT = common dso_local global i32 0, align 4
@BN_R_CALLED_WITH_EVEN_MODULUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_mod_exp2_mont(%struct.TYPE_29__* %0, %struct.TYPE_29__* %1, %struct.TYPE_29__* %2, %struct.TYPE_29__* %3, %struct.TYPE_29__* %4, %struct.TYPE_29__* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca %struct.TYPE_29__*, align 8
  %14 = alloca %struct.TYPE_29__*, align 8
  %15 = alloca %struct.TYPE_29__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_29__*, align 8
  %33 = alloca %struct.TYPE_29__*, align 8
  %34 = alloca %struct.TYPE_29__*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %10, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %11, align 8
  store %struct.TYPE_29__* %2, %struct.TYPE_29__** %12, align 8
  store %struct.TYPE_29__* %3, %struct.TYPE_29__** %13, align 8
  store %struct.TYPE_29__* %4, %struct.TYPE_29__** %14, align 8
  store %struct.TYPE_29__* %5, %struct.TYPE_29__** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32 0, i32* %24, align 4
  store i32 1, i32* %31, align 4
  %40 = load i32, i32* @TABLE_SIZE, align 4
  %41 = zext i32 %40 to i64
  %42 = call i8* @llvm.stacksave()
  store i8* %42, i8** %35, align 8
  %43 = alloca %struct.TYPE_29__*, i64 %41, align 16
  store i64 %41, i64* %36, align 8
  %44 = load i32, i32* @TABLE_SIZE, align 4
  %45 = zext i32 %44 to i64
  %46 = alloca %struct.TYPE_29__*, i64 %45, align 16
  store i64 %45, i64* %37, align 8
  store i32* null, i32** %38, align 8
  %47 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %48 = call i32 @bn_check_top(%struct.TYPE_29__* %47)
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %50 = call i32 @bn_check_top(%struct.TYPE_29__* %49)
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %52 = call i32 @bn_check_top(%struct.TYPE_29__* %51)
  %53 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %54 = call i32 @bn_check_top(%struct.TYPE_29__* %53)
  %55 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %56 = call i32 @bn_check_top(%struct.TYPE_29__* %55)
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %8
  %65 = load i32, i32* @BN_F_BN_MOD_EXP2_MONT, align 4
  %66 = load i32, i32* @BN_R_CALLED_WITH_EVEN_MODULUS, align 4
  %67 = call i32 @BNerr(i32 %65, i32 %66)
  store i32 0, i32* %9, align 4
  store i32 1, i32* %39, align 4
  br label %495

68:                                               ; preds = %8
  %69 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %70 = call i32 @BN_num_bits(%struct.TYPE_29__* %69)
  store i32 %70, i32* %22, align 4
  %71 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %72 = call i32 @BN_num_bits(%struct.TYPE_29__* %71)
  store i32 %72, i32* %23, align 4
  %73 = load i32, i32* %22, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %68
  %76 = load i32, i32* %23, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %80 = call i32 @BN_one(%struct.TYPE_29__* %79)
  store i32 %80, i32* %24, align 4
  %81 = load i32, i32* %24, align 4
  store i32 %81, i32* %9, align 4
  store i32 1, i32* %39, align 4
  br label %495

82:                                               ; preds = %75, %68
  %83 = load i32, i32* %22, align 4
  %84 = load i32, i32* %23, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* %22, align 4
  br label %90

88:                                               ; preds = %82
  %89 = load i32, i32* %23, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  store i32 %91, i32* %20, align 4
  %92 = load i32*, i32** %16, align 8
  %93 = call i32 @BN_CTX_start(i32* %92)
  %94 = load i32*, i32** %16, align 8
  %95 = call %struct.TYPE_29__* @BN_CTX_get(i32* %94)
  store %struct.TYPE_29__* %95, %struct.TYPE_29__** %32, align 8
  %96 = load i32*, i32** %16, align 8
  %97 = call %struct.TYPE_29__* @BN_CTX_get(i32* %96)
  store %struct.TYPE_29__* %97, %struct.TYPE_29__** %33, align 8
  %98 = load i32*, i32** %16, align 8
  %99 = call %struct.TYPE_29__* @BN_CTX_get(i32* %98)
  %100 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %43, i64 0
  store %struct.TYPE_29__* %99, %struct.TYPE_29__** %100, align 16
  %101 = load i32*, i32** %16, align 8
  %102 = call %struct.TYPE_29__* @BN_CTX_get(i32* %101)
  %103 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %46, i64 0
  store %struct.TYPE_29__* %102, %struct.TYPE_29__** %103, align 16
  %104 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %46, i64 0
  %105 = load %struct.TYPE_29__*, %struct.TYPE_29__** %104, align 16
  %106 = icmp eq %struct.TYPE_29__* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %90
  br label %483

108:                                              ; preds = %90
  %109 = load i32*, i32** %17, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i32*, i32** %17, align 8
  store i32* %112, i32** %38, align 8
  br label %125

113:                                              ; preds = %108
  %114 = call i32* (...) @BN_MONT_CTX_new()
  store i32* %114, i32** %38, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  br label %483

117:                                              ; preds = %113
  %118 = load i32*, i32** %38, align 8
  %119 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %120 = load i32*, i32** %16, align 8
  %121 = call i32 @BN_MONT_CTX_set(i32* %118, %struct.TYPE_29__* %119, i32* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %117
  br label %483

124:                                              ; preds = %117
  br label %125

125:                                              ; preds = %124, %111
  %126 = load i32, i32* %22, align 4
  %127 = call i32 @BN_window_bits_for_exponent_size(i32 %126)
  store i32 %127, i32* %27, align 4
  %128 = load i32, i32* %23, align 4
  %129 = call i32 @BN_window_bits_for_exponent_size(i32 %128)
  store i32 %129, i32* %28, align 4
  %130 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %125
  %135 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %136 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %137 = call i64 @BN_ucmp(%struct.TYPE_29__* %135, %struct.TYPE_29__* %136)
  %138 = icmp sge i64 %137, 0
  br i1 %138, label %139, label %151

139:                                              ; preds = %134, %125
  %140 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %43, i64 0
  %141 = load %struct.TYPE_29__*, %struct.TYPE_29__** %140, align 16
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %143 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %144 = load i32*, i32** %16, align 8
  %145 = call i32 @BN_mod(%struct.TYPE_29__* %141, %struct.TYPE_29__* %142, %struct.TYPE_29__* %143, i32* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %139
  br label %483

148:                                              ; preds = %139
  %149 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %43, i64 0
  %150 = load %struct.TYPE_29__*, %struct.TYPE_29__** %149, align 16
  store %struct.TYPE_29__* %150, %struct.TYPE_29__** %34, align 8
  br label %153

151:                                              ; preds = %134
  %152 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  store %struct.TYPE_29__* %152, %struct.TYPE_29__** %34, align 8
  br label %153

153:                                              ; preds = %151, %148
  %154 = load %struct.TYPE_29__*, %struct.TYPE_29__** %34, align 8
  %155 = call i64 @BN_is_zero(%struct.TYPE_29__* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %159 = call i32 @BN_zero(%struct.TYPE_29__* %158)
  store i32 1, i32* %24, align 4
  br label %483

160:                                              ; preds = %153
  %161 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %43, i64 0
  %162 = load %struct.TYPE_29__*, %struct.TYPE_29__** %161, align 16
  %163 = load %struct.TYPE_29__*, %struct.TYPE_29__** %34, align 8
  %164 = load i32*, i32** %38, align 8
  %165 = load i32*, i32** %16, align 8
  %166 = call i32 @BN_to_montgomery(%struct.TYPE_29__* %162, %struct.TYPE_29__* %163, i32* %164, i32* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %160
  br label %483

169:                                              ; preds = %160
  %170 = load i32, i32* %27, align 4
  %171 = icmp sgt i32 %170, 1
  br i1 %171, label %172, label %219

172:                                              ; preds = %169
  %173 = load %struct.TYPE_29__*, %struct.TYPE_29__** %32, align 8
  %174 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %43, i64 0
  %175 = load %struct.TYPE_29__*, %struct.TYPE_29__** %174, align 16
  %176 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %43, i64 0
  %177 = load %struct.TYPE_29__*, %struct.TYPE_29__** %176, align 16
  %178 = load i32*, i32** %38, align 8
  %179 = load i32*, i32** %16, align 8
  %180 = call i32 @BN_mod_mul_montgomery(%struct.TYPE_29__* %173, %struct.TYPE_29__* %175, %struct.TYPE_29__* %177, i32* %178, i32* %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %172
  br label %483

183:                                              ; preds = %172
  %184 = load i32, i32* %27, align 4
  %185 = sub nsw i32 %184, 1
  %186 = shl i32 1, %185
  store i32 %186, i32* %19, align 4
  store i32 1, i32* %18, align 4
  br label %187

187:                                              ; preds = %215, %183
  %188 = load i32, i32* %18, align 4
  %189 = load i32, i32* %19, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %218

191:                                              ; preds = %187
  %192 = load i32*, i32** %16, align 8
  %193 = call %struct.TYPE_29__* @BN_CTX_get(i32* %192)
  %194 = load i32, i32* %18, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %43, i64 %195
  store %struct.TYPE_29__* %193, %struct.TYPE_29__** %196, align 8
  %197 = icmp eq %struct.TYPE_29__* %193, null
  br i1 %197, label %213, label %198

198:                                              ; preds = %191
  %199 = load i32, i32* %18, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %43, i64 %200
  %202 = load %struct.TYPE_29__*, %struct.TYPE_29__** %201, align 8
  %203 = load i32, i32* %18, align 4
  %204 = sub nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %43, i64 %205
  %207 = load %struct.TYPE_29__*, %struct.TYPE_29__** %206, align 8
  %208 = load %struct.TYPE_29__*, %struct.TYPE_29__** %32, align 8
  %209 = load i32*, i32** %38, align 8
  %210 = load i32*, i32** %16, align 8
  %211 = call i32 @BN_mod_mul_montgomery(%struct.TYPE_29__* %202, %struct.TYPE_29__* %207, %struct.TYPE_29__* %208, i32* %209, i32* %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %198, %191
  br label %483

214:                                              ; preds = %198
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %18, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %18, align 4
  br label %187

218:                                              ; preds = %187
  br label %219

219:                                              ; preds = %218, %169
  %220 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %221 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %229, label %224

224:                                              ; preds = %219
  %225 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %226 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %227 = call i64 @BN_ucmp(%struct.TYPE_29__* %225, %struct.TYPE_29__* %226)
  %228 = icmp sge i64 %227, 0
  br i1 %228, label %229, label %241

229:                                              ; preds = %224, %219
  %230 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %46, i64 0
  %231 = load %struct.TYPE_29__*, %struct.TYPE_29__** %230, align 16
  %232 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %233 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %234 = load i32*, i32** %16, align 8
  %235 = call i32 @BN_mod(%struct.TYPE_29__* %231, %struct.TYPE_29__* %232, %struct.TYPE_29__* %233, i32* %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %238, label %237

237:                                              ; preds = %229
  br label %483

238:                                              ; preds = %229
  %239 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %46, i64 0
  %240 = load %struct.TYPE_29__*, %struct.TYPE_29__** %239, align 16
  store %struct.TYPE_29__* %240, %struct.TYPE_29__** %34, align 8
  br label %243

241:                                              ; preds = %224
  %242 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  store %struct.TYPE_29__* %242, %struct.TYPE_29__** %34, align 8
  br label %243

243:                                              ; preds = %241, %238
  %244 = load %struct.TYPE_29__*, %struct.TYPE_29__** %34, align 8
  %245 = call i64 @BN_is_zero(%struct.TYPE_29__* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %243
  %248 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %249 = call i32 @BN_zero(%struct.TYPE_29__* %248)
  store i32 1, i32* %24, align 4
  br label %483

250:                                              ; preds = %243
  %251 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %46, i64 0
  %252 = load %struct.TYPE_29__*, %struct.TYPE_29__** %251, align 16
  %253 = load %struct.TYPE_29__*, %struct.TYPE_29__** %34, align 8
  %254 = load i32*, i32** %38, align 8
  %255 = load i32*, i32** %16, align 8
  %256 = call i32 @BN_to_montgomery(%struct.TYPE_29__* %252, %struct.TYPE_29__* %253, i32* %254, i32* %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %259, label %258

258:                                              ; preds = %250
  br label %483

259:                                              ; preds = %250
  %260 = load i32, i32* %28, align 4
  %261 = icmp sgt i32 %260, 1
  br i1 %261, label %262, label %309

262:                                              ; preds = %259
  %263 = load %struct.TYPE_29__*, %struct.TYPE_29__** %32, align 8
  %264 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %46, i64 0
  %265 = load %struct.TYPE_29__*, %struct.TYPE_29__** %264, align 16
  %266 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %46, i64 0
  %267 = load %struct.TYPE_29__*, %struct.TYPE_29__** %266, align 16
  %268 = load i32*, i32** %38, align 8
  %269 = load i32*, i32** %16, align 8
  %270 = call i32 @BN_mod_mul_montgomery(%struct.TYPE_29__* %263, %struct.TYPE_29__* %265, %struct.TYPE_29__* %267, i32* %268, i32* %269)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %273, label %272

272:                                              ; preds = %262
  br label %483

273:                                              ; preds = %262
  %274 = load i32, i32* %28, align 4
  %275 = sub nsw i32 %274, 1
  %276 = shl i32 1, %275
  store i32 %276, i32* %19, align 4
  store i32 1, i32* %18, align 4
  br label %277

277:                                              ; preds = %305, %273
  %278 = load i32, i32* %18, align 4
  %279 = load i32, i32* %19, align 4
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %281, label %308

281:                                              ; preds = %277
  %282 = load i32*, i32** %16, align 8
  %283 = call %struct.TYPE_29__* @BN_CTX_get(i32* %282)
  %284 = load i32, i32* %18, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %46, i64 %285
  store %struct.TYPE_29__* %283, %struct.TYPE_29__** %286, align 8
  %287 = icmp eq %struct.TYPE_29__* %283, null
  br i1 %287, label %303, label %288

288:                                              ; preds = %281
  %289 = load i32, i32* %18, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %46, i64 %290
  %292 = load %struct.TYPE_29__*, %struct.TYPE_29__** %291, align 8
  %293 = load i32, i32* %18, align 4
  %294 = sub nsw i32 %293, 1
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %46, i64 %295
  %297 = load %struct.TYPE_29__*, %struct.TYPE_29__** %296, align 8
  %298 = load %struct.TYPE_29__*, %struct.TYPE_29__** %32, align 8
  %299 = load i32*, i32** %38, align 8
  %300 = load i32*, i32** %16, align 8
  %301 = call i32 @BN_mod_mul_montgomery(%struct.TYPE_29__* %292, %struct.TYPE_29__* %297, %struct.TYPE_29__* %298, i32* %299, i32* %300)
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %304, label %303

303:                                              ; preds = %288, %281
  br label %483

304:                                              ; preds = %288
  br label %305

305:                                              ; preds = %304
  %306 = load i32, i32* %18, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %18, align 4
  br label %277

308:                                              ; preds = %277
  br label %309

309:                                              ; preds = %308, %259
  store i32 1, i32* %31, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %310 = load %struct.TYPE_29__*, %struct.TYPE_29__** %33, align 8
  %311 = call %struct.TYPE_29__* (...) @BN_value_one()
  %312 = load i32*, i32** %38, align 8
  %313 = load i32*, i32** %16, align 8
  %314 = call i32 @BN_to_montgomery(%struct.TYPE_29__* %310, %struct.TYPE_29__* %311, i32* %312, i32* %313)
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %317, label %316

316:                                              ; preds = %309
  br label %483

317:                                              ; preds = %309
  %318 = load i32, i32* %20, align 4
  %319 = sub nsw i32 %318, 1
  store i32 %319, i32* %21, align 4
  br label %320

320:                                              ; preds = %471, %317
  %321 = load i32, i32* %21, align 4
  %322 = icmp sge i32 %321, 0
  br i1 %322, label %323, label %474

323:                                              ; preds = %320
  %324 = load i32, i32* %31, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %336, label %326

326:                                              ; preds = %323
  %327 = load %struct.TYPE_29__*, %struct.TYPE_29__** %33, align 8
  %328 = load %struct.TYPE_29__*, %struct.TYPE_29__** %33, align 8
  %329 = load %struct.TYPE_29__*, %struct.TYPE_29__** %33, align 8
  %330 = load i32*, i32** %38, align 8
  %331 = load i32*, i32** %16, align 8
  %332 = call i32 @BN_mod_mul_montgomery(%struct.TYPE_29__* %327, %struct.TYPE_29__* %328, %struct.TYPE_29__* %329, i32* %330, i32* %331)
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %335, label %334

334:                                              ; preds = %326
  br label %483

335:                                              ; preds = %326
  br label %336

336:                                              ; preds = %335, %323
  %337 = load i32, i32* %29, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %382, label %339

339:                                              ; preds = %336
  %340 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %341 = load i32, i32* %21, align 4
  %342 = call i64 @BN_is_bit_set(%struct.TYPE_29__* %340, i32 %341)
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %381

344:                                              ; preds = %339
  %345 = load i32, i32* %21, align 4
  %346 = load i32, i32* %27, align 4
  %347 = sub nsw i32 %345, %346
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %18, align 4
  br label %349

349:                                              ; preds = %355, %344
  %350 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %351 = load i32, i32* %18, align 4
  %352 = call i64 @BN_is_bit_set(%struct.TYPE_29__* %350, i32 %351)
  %353 = icmp ne i64 %352, 0
  %354 = xor i1 %353, true
  br i1 %354, label %355, label %358

355:                                              ; preds = %349
  %356 = load i32, i32* %18, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %18, align 4
  br label %349

358:                                              ; preds = %349
  %359 = load i32, i32* %18, align 4
  store i32 %359, i32* %25, align 4
  store i32 1, i32* %29, align 4
  %360 = load i32, i32* %21, align 4
  %361 = sub nsw i32 %360, 1
  store i32 %361, i32* %18, align 4
  br label %362

362:                                              ; preds = %377, %358
  %363 = load i32, i32* %18, align 4
  %364 = load i32, i32* %25, align 4
  %365 = icmp sge i32 %363, %364
  br i1 %365, label %366, label %380

366:                                              ; preds = %362
  %367 = load i32, i32* %29, align 4
  %368 = shl i32 %367, 1
  store i32 %368, i32* %29, align 4
  %369 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %370 = load i32, i32* %18, align 4
  %371 = call i64 @BN_is_bit_set(%struct.TYPE_29__* %369, i32 %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %376

373:                                              ; preds = %366
  %374 = load i32, i32* %29, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %29, align 4
  br label %376

376:                                              ; preds = %373, %366
  br label %377

377:                                              ; preds = %376
  %378 = load i32, i32* %18, align 4
  %379 = add nsw i32 %378, -1
  store i32 %379, i32* %18, align 4
  br label %362

380:                                              ; preds = %362
  br label %381

381:                                              ; preds = %380, %339
  br label %382

382:                                              ; preds = %381, %336
  %383 = load i32, i32* %30, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %428, label %385

385:                                              ; preds = %382
  %386 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %387 = load i32, i32* %21, align 4
  %388 = call i64 @BN_is_bit_set(%struct.TYPE_29__* %386, i32 %387)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %427

390:                                              ; preds = %385
  %391 = load i32, i32* %21, align 4
  %392 = load i32, i32* %28, align 4
  %393 = sub nsw i32 %391, %392
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %18, align 4
  br label %395

395:                                              ; preds = %401, %390
  %396 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %397 = load i32, i32* %18, align 4
  %398 = call i64 @BN_is_bit_set(%struct.TYPE_29__* %396, i32 %397)
  %399 = icmp ne i64 %398, 0
  %400 = xor i1 %399, true
  br i1 %400, label %401, label %404

401:                                              ; preds = %395
  %402 = load i32, i32* %18, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %18, align 4
  br label %395

404:                                              ; preds = %395
  %405 = load i32, i32* %18, align 4
  store i32 %405, i32* %26, align 4
  store i32 1, i32* %30, align 4
  %406 = load i32, i32* %21, align 4
  %407 = sub nsw i32 %406, 1
  store i32 %407, i32* %18, align 4
  br label %408

408:                                              ; preds = %423, %404
  %409 = load i32, i32* %18, align 4
  %410 = load i32, i32* %26, align 4
  %411 = icmp sge i32 %409, %410
  br i1 %411, label %412, label %426

412:                                              ; preds = %408
  %413 = load i32, i32* %30, align 4
  %414 = shl i32 %413, 1
  store i32 %414, i32* %30, align 4
  %415 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %416 = load i32, i32* %18, align 4
  %417 = call i64 @BN_is_bit_set(%struct.TYPE_29__* %415, i32 %416)
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %422

419:                                              ; preds = %412
  %420 = load i32, i32* %30, align 4
  %421 = add nsw i32 %420, 1
  store i32 %421, i32* %30, align 4
  br label %422

422:                                              ; preds = %419, %412
  br label %423

423:                                              ; preds = %422
  %424 = load i32, i32* %18, align 4
  %425 = add nsw i32 %424, -1
  store i32 %425, i32* %18, align 4
  br label %408

426:                                              ; preds = %408
  br label %427

427:                                              ; preds = %426, %385
  br label %428

428:                                              ; preds = %427, %382
  %429 = load i32, i32* %29, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %449

431:                                              ; preds = %428
  %432 = load i32, i32* %21, align 4
  %433 = load i32, i32* %25, align 4
  %434 = icmp eq i32 %432, %433
  br i1 %434, label %435, label %449

435:                                              ; preds = %431
  %436 = load %struct.TYPE_29__*, %struct.TYPE_29__** %33, align 8
  %437 = load %struct.TYPE_29__*, %struct.TYPE_29__** %33, align 8
  %438 = load i32, i32* %29, align 4
  %439 = ashr i32 %438, 1
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %43, i64 %440
  %442 = load %struct.TYPE_29__*, %struct.TYPE_29__** %441, align 8
  %443 = load i32*, i32** %38, align 8
  %444 = load i32*, i32** %16, align 8
  %445 = call i32 @BN_mod_mul_montgomery(%struct.TYPE_29__* %436, %struct.TYPE_29__* %437, %struct.TYPE_29__* %442, i32* %443, i32* %444)
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %448, label %447

447:                                              ; preds = %435
  br label %483

448:                                              ; preds = %435
  store i32 0, i32* %29, align 4
  store i32 0, i32* %31, align 4
  br label %449

449:                                              ; preds = %448, %431, %428
  %450 = load i32, i32* %30, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %470

452:                                              ; preds = %449
  %453 = load i32, i32* %21, align 4
  %454 = load i32, i32* %26, align 4
  %455 = icmp eq i32 %453, %454
  br i1 %455, label %456, label %470

456:                                              ; preds = %452
  %457 = load %struct.TYPE_29__*, %struct.TYPE_29__** %33, align 8
  %458 = load %struct.TYPE_29__*, %struct.TYPE_29__** %33, align 8
  %459 = load i32, i32* %30, align 4
  %460 = ashr i32 %459, 1
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %46, i64 %461
  %463 = load %struct.TYPE_29__*, %struct.TYPE_29__** %462, align 8
  %464 = load i32*, i32** %38, align 8
  %465 = load i32*, i32** %16, align 8
  %466 = call i32 @BN_mod_mul_montgomery(%struct.TYPE_29__* %457, %struct.TYPE_29__* %458, %struct.TYPE_29__* %463, i32* %464, i32* %465)
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %469, label %468

468:                                              ; preds = %456
  br label %483

469:                                              ; preds = %456
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  br label %470

470:                                              ; preds = %469, %452, %449
  br label %471

471:                                              ; preds = %470
  %472 = load i32, i32* %21, align 4
  %473 = add nsw i32 %472, -1
  store i32 %473, i32* %21, align 4
  br label %320

474:                                              ; preds = %320
  %475 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %476 = load %struct.TYPE_29__*, %struct.TYPE_29__** %33, align 8
  %477 = load i32*, i32** %38, align 8
  %478 = load i32*, i32** %16, align 8
  %479 = call i32 @BN_from_montgomery(%struct.TYPE_29__* %475, %struct.TYPE_29__* %476, i32* %477, i32* %478)
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %482, label %481

481:                                              ; preds = %474
  br label %483

482:                                              ; preds = %474
  store i32 1, i32* %24, align 4
  br label %483

483:                                              ; preds = %482, %481, %468, %447, %334, %316, %303, %272, %258, %247, %237, %213, %182, %168, %157, %147, %123, %116, %107
  %484 = load i32*, i32** %17, align 8
  %485 = icmp eq i32* %484, null
  br i1 %485, label %486, label %489

486:                                              ; preds = %483
  %487 = load i32*, i32** %38, align 8
  %488 = call i32 @BN_MONT_CTX_free(i32* %487)
  br label %489

489:                                              ; preds = %486, %483
  %490 = load i32*, i32** %16, align 8
  %491 = call i32 @BN_CTX_end(i32* %490)
  %492 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %493 = call i32 @bn_check_top(%struct.TYPE_29__* %492)
  %494 = load i32, i32* %24, align 4
  store i32 %494, i32* %9, align 4
  store i32 1, i32* %39, align 4
  br label %495

495:                                              ; preds = %489, %78, %64
  %496 = load i8*, i8** %35, align 8
  call void @llvm.stackrestore(i8* %496)
  %497 = load i32, i32* %9, align 4
  ret i32 %497
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bn_check_top(%struct.TYPE_29__*) #2

declare dso_local i32 @BNerr(i32, i32) #2

declare dso_local i32 @BN_num_bits(%struct.TYPE_29__*) #2

declare dso_local i32 @BN_one(%struct.TYPE_29__*) #2

declare dso_local i32 @BN_CTX_start(i32*) #2

declare dso_local %struct.TYPE_29__* @BN_CTX_get(i32*) #2

declare dso_local i32* @BN_MONT_CTX_new(...) #2

declare dso_local i32 @BN_MONT_CTX_set(i32*, %struct.TYPE_29__*, i32*) #2

declare dso_local i32 @BN_window_bits_for_exponent_size(i32) #2

declare dso_local i64 @BN_ucmp(%struct.TYPE_29__*, %struct.TYPE_29__*) #2

declare dso_local i32 @BN_mod(%struct.TYPE_29__*, %struct.TYPE_29__*, %struct.TYPE_29__*, i32*) #2

declare dso_local i64 @BN_is_zero(%struct.TYPE_29__*) #2

declare dso_local i32 @BN_zero(%struct.TYPE_29__*) #2

declare dso_local i32 @BN_to_montgomery(%struct.TYPE_29__*, %struct.TYPE_29__*, i32*, i32*) #2

declare dso_local i32 @BN_mod_mul_montgomery(%struct.TYPE_29__*, %struct.TYPE_29__*, %struct.TYPE_29__*, i32*, i32*) #2

declare dso_local %struct.TYPE_29__* @BN_value_one(...) #2

declare dso_local i64 @BN_is_bit_set(%struct.TYPE_29__*, i32) #2

declare dso_local i32 @BN_from_montgomery(%struct.TYPE_29__*, %struct.TYPE_29__*, i32*, i32*) #2

declare dso_local i32 @BN_MONT_CTX_free(i32*) #2

declare dso_local i32 @BN_CTX_end(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

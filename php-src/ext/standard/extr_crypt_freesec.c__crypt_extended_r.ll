; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_crypt_freesec.c__crypt_extended_r.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_crypt_freesec.c__crypt_extended_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.php_crypt_extended_data = type { i8*, i32 }

@_PASSWORD_EFMT1 = common dso_local global i8 0, align 1
@ascii64 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_crypt_extended_r(i8* %0, i8* %1, %struct.php_crypt_extended_data* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.php_crypt_extended_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.php_crypt_extended_data* %2, %struct.php_crypt_extended_data** %7, align 8
  %19 = load %struct.php_crypt_extended_data*, %struct.php_crypt_extended_data** %7, align 8
  %20 = getelementptr inbounds %struct.php_crypt_extended_data, %struct.php_crypt_extended_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load %struct.php_crypt_extended_data*, %struct.php_crypt_extended_data** %7, align 8
  %25 = call i32 @des_init_local(%struct.php_crypt_extended_data* %24)
  br label %26

26:                                               ; preds = %23, %3
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %28 = bitcast i32* %27 to i64*
  store i64* %28, i64** %16, align 8
  br label %29

29:                                               ; preds = %52, %26
  %30 = load i64*, i64** %16, align 8
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %32 = bitcast i32* %31 to i64*
  %33 = ptrtoint i64* %30 to i64
  %34 = ptrtoint i64* %32 to i64
  %35 = sub i64 %33, %34
  %36 = sdiv exact i64 %35, 8
  %37 = icmp ult i64 %36, 8
  br i1 %37, label %38, label %53

38:                                               ; preds = %29
  %39 = load i8*, i8** %5, align 8
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = load i64*, i64** %16, align 8
  %45 = getelementptr inbounds i64, i64* %44, i32 1
  store i64* %45, i64** %16, align 8
  store i64 %43, i64* %44, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %5, align 8
  br label %52

52:                                               ; preds = %49, %38
  br label %29

53:                                               ; preds = %29
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %55 = bitcast i32* %54 to i8*
  %56 = load %struct.php_crypt_extended_data*, %struct.php_crypt_extended_data** %7, align 8
  %57 = call i64 @des_setkey(i8* %55, %struct.php_crypt_extended_data* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i8* null, i8** %4, align 8
  br label %384

60:                                               ; preds = %53
  %61 = load i8*, i8** %6, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = load i8, i8* @_PASSWORD_EFMT1, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %210

67:                                               ; preds = %60
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %100, %67
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 5
  br i1 %70, label %71, label %103

71:                                               ; preds = %68
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = call i32 @ascii_to_bin(i8 signext %76)
  store i32 %77, i32* %17, align 4
  %78 = load i8*, i8** @ascii64, align 8
  %79 = load i32, i32* %17, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %83, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %71
  store i8* null, i8** %4, align 8
  br label %384

92:                                               ; preds = %71
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %8, align 4
  %95 = sub nsw i32 %94, 1
  %96 = mul nsw i32 %95, 6
  %97 = shl i32 %93, %96
  %98 = load i32, i32* %9, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %92
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %68

103:                                              ; preds = %68
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %103
  store i8* null, i8** %4, align 8
  br label %384

107:                                              ; preds = %103
  store i32 5, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %108

108:                                              ; preds = %140, %107
  %109 = load i32, i32* %8, align 4
  %110 = icmp slt i32 %109, 9
  br i1 %110, label %111, label %143

111:                                              ; preds = %108
  %112 = load i8*, i8** %6, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = call i32 @ascii_to_bin(i8 signext %116)
  store i32 %117, i32* %18, align 4
  %118 = load i8*, i8** @ascii64, align 8
  %119 = load i32, i32* %18, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = load i8*, i8** %6, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %123, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %111
  store i8* null, i8** %4, align 8
  br label %384

132:                                              ; preds = %111
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* %8, align 4
  %135 = sub nsw i32 %134, 5
  %136 = mul nsw i32 %135, 6
  %137 = shl i32 %133, %136
  %138 = load i32, i32* %10, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %10, align 4
  br label %140

140:                                              ; preds = %132
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %108

143:                                              ; preds = %108
  br label %144

144:                                              ; preds = %194, %143
  %145 = load i8*, i8** %5, align 8
  %146 = load i8, i8* %145, align 1
  %147 = icmp ne i8 %146, 0
  br i1 %147, label %148, label %195

148:                                              ; preds = %144
  %149 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %150 = bitcast i32* %149 to i8*
  %151 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %152 = bitcast i32* %151 to i8*
  %153 = load %struct.php_crypt_extended_data*, %struct.php_crypt_extended_data** %7, align 8
  %154 = call i64 @des_cipher(i8* %150, i8* %152, i32 0, i32 1, %struct.php_crypt_extended_data* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %148
  store i8* null, i8** %4, align 8
  br label %384

157:                                              ; preds = %148
  %158 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %159 = bitcast i32* %158 to i64*
  store i64* %159, i64** %16, align 8
  br label %160

160:                                              ; preds = %176, %157
  %161 = load i64*, i64** %16, align 8
  %162 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %163 = bitcast i32* %162 to i64*
  %164 = ptrtoint i64* %161 to i64
  %165 = ptrtoint i64* %163 to i64
  %166 = sub i64 %164, %165
  %167 = sdiv exact i64 %166, 8
  %168 = icmp ult i64 %167, 8
  br i1 %168, label %169, label %174

169:                                              ; preds = %160
  %170 = load i8*, i8** %5, align 8
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = icmp ne i32 %172, 0
  br label %174

174:                                              ; preds = %169, %160
  %175 = phi i1 [ false, %160 ], [ %173, %169 ]
  br i1 %175, label %176, label %187

176:                                              ; preds = %174
  %177 = load i8*, i8** %5, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %5, align 8
  %179 = load i8, i8* %177, align 1
  %180 = zext i8 %179 to i32
  %181 = shl i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = load i64*, i64** %16, align 8
  %184 = getelementptr inbounds i64, i64* %183, i32 1
  store i64* %184, i64** %16, align 8
  %185 = load i64, i64* %183, align 8
  %186 = xor i64 %185, %182
  store i64 %186, i64* %183, align 8
  br label %160

187:                                              ; preds = %174
  %188 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %189 = bitcast i32* %188 to i8*
  %190 = load %struct.php_crypt_extended_data*, %struct.php_crypt_extended_data** %7, align 8
  %191 = call i64 @des_setkey(i8* %189, %struct.php_crypt_extended_data* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %187
  store i8* null, i8** %4, align 8
  br label %384

194:                                              ; preds = %187
  br label %144

195:                                              ; preds = %144
  %196 = load %struct.php_crypt_extended_data*, %struct.php_crypt_extended_data** %7, align 8
  %197 = getelementptr inbounds %struct.php_crypt_extended_data, %struct.php_crypt_extended_data* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = load i8*, i8** %6, align 8
  %200 = call i32 @memcpy(i8* %198, i8* %199, i32 9)
  %201 = load %struct.php_crypt_extended_data*, %struct.php_crypt_extended_data** %7, align 8
  %202 = getelementptr inbounds %struct.php_crypt_extended_data, %struct.php_crypt_extended_data* %201, i32 0, i32 0
  %203 = load i8*, i8** %202, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 9
  store i8 0, i8* %204, align 1
  %205 = load %struct.php_crypt_extended_data*, %struct.php_crypt_extended_data** %7, align 8
  %206 = getelementptr inbounds %struct.php_crypt_extended_data, %struct.php_crypt_extended_data* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  %208 = bitcast i8* %207 to i64*
  %209 = getelementptr inbounds i64, i64* %208, i64 9
  store i64* %209, i64** %15, align 8
  br label %253

210:                                              ; preds = %60
  store i32 25, i32* %9, align 4
  %211 = load i8*, i8** %6, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 0
  %213 = load i8, i8* %212, align 1
  %214 = call i64 @ascii_is_unsafe(i8 signext %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %222, label %216

216:                                              ; preds = %210
  %217 = load i8*, i8** %6, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 1
  %219 = load i8, i8* %218, align 1
  %220 = call i64 @ascii_is_unsafe(i8 signext %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %216, %210
  store i8* null, i8** %4, align 8
  br label %384

223:                                              ; preds = %216
  %224 = load i8*, i8** %6, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 1
  %226 = load i8, i8* %225, align 1
  %227 = call i32 @ascii_to_bin(i8 signext %226)
  %228 = shl i32 %227, 6
  %229 = load i8*, i8** %6, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 0
  %231 = load i8, i8* %230, align 1
  %232 = call i32 @ascii_to_bin(i8 signext %231)
  %233 = or i32 %228, %232
  store i32 %233, i32* %10, align 4
  %234 = load i8*, i8** %6, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 0
  %236 = load i8, i8* %235, align 1
  %237 = load %struct.php_crypt_extended_data*, %struct.php_crypt_extended_data** %7, align 8
  %238 = getelementptr inbounds %struct.php_crypt_extended_data, %struct.php_crypt_extended_data* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 0
  store i8 %236, i8* %240, align 1
  %241 = load i8*, i8** %6, align 8
  %242 = getelementptr inbounds i8, i8* %241, i64 1
  %243 = load i8, i8* %242, align 1
  %244 = load %struct.php_crypt_extended_data*, %struct.php_crypt_extended_data** %7, align 8
  %245 = getelementptr inbounds %struct.php_crypt_extended_data, %struct.php_crypt_extended_data* %244, i32 0, i32 0
  %246 = load i8*, i8** %245, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 1
  store i8 %243, i8* %247, align 1
  %248 = load %struct.php_crypt_extended_data*, %struct.php_crypt_extended_data** %7, align 8
  %249 = getelementptr inbounds %struct.php_crypt_extended_data, %struct.php_crypt_extended_data* %248, i32 0, i32 0
  %250 = load i8*, i8** %249, align 8
  %251 = bitcast i8* %250 to i64*
  %252 = getelementptr inbounds i64, i64* %251, i64 2
  store i64* %252, i64** %15, align 8
  br label %253

253:                                              ; preds = %223, %195
  %254 = load i32, i32* %10, align 4
  %255 = load %struct.php_crypt_extended_data*, %struct.php_crypt_extended_data** %7, align 8
  %256 = call i32 @setup_salt(i32 %254, %struct.php_crypt_extended_data* %255)
  %257 = load i32, i32* %9, align 4
  %258 = load %struct.php_crypt_extended_data*, %struct.php_crypt_extended_data** %7, align 8
  %259 = call i64 @do_des(i32 0, i32 0, i32* %12, i32* %13, i32 %257, %struct.php_crypt_extended_data* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %253
  store i8* null, i8** %4, align 8
  br label %384

262:                                              ; preds = %253
  %263 = load i32, i32* %12, align 4
  %264 = ashr i32 %263, 8
  store i32 %264, i32* %11, align 4
  %265 = load i8*, i8** @ascii64, align 8
  %266 = load i32, i32* %11, align 4
  %267 = ashr i32 %266, 18
  %268 = and i32 %267, 63
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8, i8* %265, i64 %269
  %271 = load i8, i8* %270, align 1
  %272 = sext i8 %271 to i64
  %273 = load i64*, i64** %15, align 8
  %274 = getelementptr inbounds i64, i64* %273, i32 1
  store i64* %274, i64** %15, align 8
  store i64 %272, i64* %273, align 8
  %275 = load i8*, i8** @ascii64, align 8
  %276 = load i32, i32* %11, align 4
  %277 = ashr i32 %276, 12
  %278 = and i32 %277, 63
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8, i8* %275, i64 %279
  %281 = load i8, i8* %280, align 1
  %282 = sext i8 %281 to i64
  %283 = load i64*, i64** %15, align 8
  %284 = getelementptr inbounds i64, i64* %283, i32 1
  store i64* %284, i64** %15, align 8
  store i64 %282, i64* %283, align 8
  %285 = load i8*, i8** @ascii64, align 8
  %286 = load i32, i32* %11, align 4
  %287 = ashr i32 %286, 6
  %288 = and i32 %287, 63
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8, i8* %285, i64 %289
  %291 = load i8, i8* %290, align 1
  %292 = sext i8 %291 to i64
  %293 = load i64*, i64** %15, align 8
  %294 = getelementptr inbounds i64, i64* %293, i32 1
  store i64* %294, i64** %15, align 8
  store i64 %292, i64* %293, align 8
  %295 = load i8*, i8** @ascii64, align 8
  %296 = load i32, i32* %11, align 4
  %297 = and i32 %296, 63
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i8, i8* %295, i64 %298
  %300 = load i8, i8* %299, align 1
  %301 = sext i8 %300 to i64
  %302 = load i64*, i64** %15, align 8
  %303 = getelementptr inbounds i64, i64* %302, i32 1
  store i64* %303, i64** %15, align 8
  store i64 %301, i64* %302, align 8
  %304 = load i32, i32* %12, align 4
  %305 = shl i32 %304, 16
  %306 = load i32, i32* %13, align 4
  %307 = ashr i32 %306, 16
  %308 = and i32 %307, 65535
  %309 = or i32 %305, %308
  store i32 %309, i32* %11, align 4
  %310 = load i8*, i8** @ascii64, align 8
  %311 = load i32, i32* %11, align 4
  %312 = ashr i32 %311, 18
  %313 = and i32 %312, 63
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i8, i8* %310, i64 %314
  %316 = load i8, i8* %315, align 1
  %317 = sext i8 %316 to i64
  %318 = load i64*, i64** %15, align 8
  %319 = getelementptr inbounds i64, i64* %318, i32 1
  store i64* %319, i64** %15, align 8
  store i64 %317, i64* %318, align 8
  %320 = load i8*, i8** @ascii64, align 8
  %321 = load i32, i32* %11, align 4
  %322 = ashr i32 %321, 12
  %323 = and i32 %322, 63
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i8, i8* %320, i64 %324
  %326 = load i8, i8* %325, align 1
  %327 = sext i8 %326 to i64
  %328 = load i64*, i64** %15, align 8
  %329 = getelementptr inbounds i64, i64* %328, i32 1
  store i64* %329, i64** %15, align 8
  store i64 %327, i64* %328, align 8
  %330 = load i8*, i8** @ascii64, align 8
  %331 = load i32, i32* %11, align 4
  %332 = ashr i32 %331, 6
  %333 = and i32 %332, 63
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i8, i8* %330, i64 %334
  %336 = load i8, i8* %335, align 1
  %337 = sext i8 %336 to i64
  %338 = load i64*, i64** %15, align 8
  %339 = getelementptr inbounds i64, i64* %338, i32 1
  store i64* %339, i64** %15, align 8
  store i64 %337, i64* %338, align 8
  %340 = load i8*, i8** @ascii64, align 8
  %341 = load i32, i32* %11, align 4
  %342 = and i32 %341, 63
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8, i8* %340, i64 %343
  %345 = load i8, i8* %344, align 1
  %346 = sext i8 %345 to i64
  %347 = load i64*, i64** %15, align 8
  %348 = getelementptr inbounds i64, i64* %347, i32 1
  store i64* %348, i64** %15, align 8
  store i64 %346, i64* %347, align 8
  %349 = load i32, i32* %13, align 4
  %350 = shl i32 %349, 2
  store i32 %350, i32* %11, align 4
  %351 = load i8*, i8** @ascii64, align 8
  %352 = load i32, i32* %11, align 4
  %353 = ashr i32 %352, 12
  %354 = and i32 %353, 63
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i8, i8* %351, i64 %355
  %357 = load i8, i8* %356, align 1
  %358 = sext i8 %357 to i64
  %359 = load i64*, i64** %15, align 8
  %360 = getelementptr inbounds i64, i64* %359, i32 1
  store i64* %360, i64** %15, align 8
  store i64 %358, i64* %359, align 8
  %361 = load i8*, i8** @ascii64, align 8
  %362 = load i32, i32* %11, align 4
  %363 = ashr i32 %362, 6
  %364 = and i32 %363, 63
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i8, i8* %361, i64 %365
  %367 = load i8, i8* %366, align 1
  %368 = sext i8 %367 to i64
  %369 = load i64*, i64** %15, align 8
  %370 = getelementptr inbounds i64, i64* %369, i32 1
  store i64* %370, i64** %15, align 8
  store i64 %368, i64* %369, align 8
  %371 = load i8*, i8** @ascii64, align 8
  %372 = load i32, i32* %11, align 4
  %373 = and i32 %372, 63
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i8, i8* %371, i64 %374
  %376 = load i8, i8* %375, align 1
  %377 = sext i8 %376 to i64
  %378 = load i64*, i64** %15, align 8
  %379 = getelementptr inbounds i64, i64* %378, i32 1
  store i64* %379, i64** %15, align 8
  store i64 %377, i64* %378, align 8
  %380 = load i64*, i64** %15, align 8
  store i64 0, i64* %380, align 8
  %381 = load %struct.php_crypt_extended_data*, %struct.php_crypt_extended_data** %7, align 8
  %382 = getelementptr inbounds %struct.php_crypt_extended_data, %struct.php_crypt_extended_data* %381, i32 0, i32 0
  %383 = load i8*, i8** %382, align 8
  store i8* %383, i8** %4, align 8
  br label %384

384:                                              ; preds = %262, %261, %222, %193, %156, %131, %106, %91, %59
  %385 = load i8*, i8** %4, align 8
  ret i8* %385
}

declare dso_local i32 @des_init_local(%struct.php_crypt_extended_data*) #1

declare dso_local i64 @des_setkey(i8*, %struct.php_crypt_extended_data*) #1

declare dso_local i32 @ascii_to_bin(i8 signext) #1

declare dso_local i64 @des_cipher(i8*, i8*, i32, i32, %struct.php_crypt_extended_data*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @ascii_is_unsafe(i8 signext) #1

declare dso_local i32 @setup_salt(i32, %struct.php_crypt_extended_data*) #1

declare dso_local i64 @do_des(i32, i32, i32*, i32*, i32, %struct.php_crypt_extended_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

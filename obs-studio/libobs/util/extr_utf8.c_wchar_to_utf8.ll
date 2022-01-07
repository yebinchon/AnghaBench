; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_utf8.c_wchar_to_utf8.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_utf8.c_wchar_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UTF8_IGNORE_ERROR = common dso_local global i32 0, align 4
@_BOM = common dso_local global i32 0, align 4
@UTF8_SKIP_BOM = common dso_local global i32 0, align 4
@_NXT = common dso_local global i8 0, align 1
@_SEQ2 = common dso_local global i8 0, align 1
@_SEQ3 = common dso_local global i8 0, align 1
@_SEQ4 = common dso_local global i8 0, align 1
@_SEQ5 = common dso_local global i8 0, align 1
@_SEQ6 = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wchar_to_utf8(i32* %0, i64 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %5
  %23 = load i64, i64* %10, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %5
  store i64 0, i64* %6, align 8
  br label %440

29:                                               ; preds = %25, %22
  %30 = load i32*, i32** %7, align 8
  store i32* %30, i32** %12, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32*, i32** %12, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  br label %38

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i32* [ %36, %33 ], [ inttoptr (i64 -1 to i32*), %37 ]
  store i32* %39, i32** %13, align 8
  %40 = load i8*, i8** %9, align 8
  store i8* %40, i8** %15, align 8
  %41 = load i8*, i8** %15, align 8
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %16, align 8
  store i64 0, i64* %18, align 8
  br label %44

44:                                               ; preds = %435, %38
  %45 = load i32*, i32** %12, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = icmp ult i32* %45, %46
  br i1 %47, label %48, label %438

48:                                               ; preds = %44
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  br label %438

53:                                               ; preds = %48
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @wchar_forbidden(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @UTF8_IGNORE_ERROR, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i64 0, i64* %6, align 8
  br label %440

64:                                               ; preds = %58
  br label %435

65:                                               ; preds = %53
  %66 = load i32*, i32** %12, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @_BOM, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @UTF8_SKIP_BOM, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %435

76:                                               ; preds = %70, %65
  %77 = load i32*, i32** %12, align 8
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @UTF8_IGNORE_ERROR, align 4
  %83 = and i32 %81, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i64 0, i64* %6, align 8
  br label %440

86:                                               ; preds = %80
  br label %435

87:                                               ; preds = %76
  %88 = load i32*, i32** %12, align 8
  %89 = load i32, i32* %88, align 4
  %90 = icmp sle i32 %89, 127
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i64 1, i64* %19, align 8
  br label %117

92:                                               ; preds = %87
  %93 = load i32*, i32** %12, align 8
  %94 = load i32, i32* %93, align 4
  %95 = icmp sle i32 %94, 2047
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i64 2, i64* %19, align 8
  br label %116

97:                                               ; preds = %92
  %98 = load i32*, i32** %12, align 8
  %99 = load i32, i32* %98, align 4
  %100 = icmp sle i32 %99, 65535
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store i64 3, i64* %19, align 8
  br label %115

102:                                              ; preds = %97
  %103 = load i32*, i32** %12, align 8
  %104 = load i32, i32* %103, align 4
  %105 = icmp sle i32 %104, 2097151
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i64 4, i64* %19, align 8
  br label %114

107:                                              ; preds = %102
  %108 = load i32*, i32** %12, align 8
  %109 = load i32, i32* %108, align 4
  %110 = icmp sle i32 %109, 67108863
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  store i64 5, i64* %19, align 8
  br label %113

112:                                              ; preds = %107
  store i64 6, i64* %19, align 8
  br label %113

113:                                              ; preds = %112, %111
  br label %114

114:                                              ; preds = %113, %106
  br label %115

115:                                              ; preds = %114, %101
  br label %116

116:                                              ; preds = %115, %96
  br label %117

117:                                              ; preds = %116, %91
  br label %118

118:                                              ; preds = %117
  %119 = load i64, i64* %19, align 8
  %120 = load i64, i64* %18, align 8
  %121 = add i64 %120, %119
  store i64 %121, i64* %18, align 8
  %122 = load i8*, i8** %9, align 8
  %123 = icmp eq i8* %122, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %435

125:                                              ; preds = %118
  %126 = load i8*, i8** %16, align 8
  %127 = load i8*, i8** %15, align 8
  %128 = ptrtoint i8* %126 to i64
  %129 = ptrtoint i8* %127 to i64
  %130 = sub i64 %128, %129
  %131 = load i64, i64* %19, align 8
  %132 = sub i64 %131, 1
  %133 = icmp ule i64 %130, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  store i64 0, i64* %6, align 8
  br label %440

135:                                              ; preds = %125
  %136 = load i32*, i32** %12, align 8
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %14, align 4
  %138 = bitcast i32* %14 to i8*
  store i8* %138, i8** %17, align 8
  %139 = load i64, i64* %19, align 8
  switch i64 %139, label %431 [
    i64 1, label %140
    i64 2, label %145
    i64 3, label %175
    i64 4, label %217
    i64 5, label %278
    i64 6, label %349
  ]

140:                                              ; preds = %135
  %141 = load i8*, i8** %17, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  %143 = load i8, i8* %142, align 1
  %144 = load i8*, i8** %15, align 8
  store i8 %143, i8* %144, align 1
  br label %431

145:                                              ; preds = %135
  %146 = load i8, i8* @_NXT, align 1
  %147 = zext i8 %146 to i32
  %148 = load i8*, i8** %17, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 0
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = and i32 %151, 63
  %153 = or i32 %147, %152
  %154 = trunc i32 %153 to i8
  %155 = load i8*, i8** %15, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 1
  store i8 %154, i8* %156, align 1
  %157 = load i8, i8* @_SEQ2, align 1
  %158 = zext i8 %157 to i32
  %159 = load i8*, i8** %17, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 0
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = ashr i32 %162, 6
  %164 = or i32 %158, %163
  %165 = load i8*, i8** %17, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 1
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = and i32 %168, 7
  %170 = shl i32 %169, 2
  %171 = or i32 %164, %170
  %172 = trunc i32 %171 to i8
  %173 = load i8*, i8** %15, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 0
  store i8 %172, i8* %174, align 1
  br label %431

175:                                              ; preds = %135
  %176 = load i8, i8* @_NXT, align 1
  %177 = zext i8 %176 to i32
  %178 = load i8*, i8** %17, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 0
  %180 = load i8, i8* %179, align 1
  %181 = zext i8 %180 to i32
  %182 = and i32 %181, 63
  %183 = or i32 %177, %182
  %184 = trunc i32 %183 to i8
  %185 = load i8*, i8** %15, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 2
  store i8 %184, i8* %186, align 1
  %187 = load i8, i8* @_NXT, align 1
  %188 = zext i8 %187 to i32
  %189 = load i8*, i8** %17, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 0
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = ashr i32 %192, 6
  %194 = or i32 %188, %193
  %195 = load i8*, i8** %17, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 1
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = and i32 %198, 15
  %200 = shl i32 %199, 2
  %201 = or i32 %194, %200
  %202 = trunc i32 %201 to i8
  %203 = load i8*, i8** %15, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 1
  store i8 %202, i8* %204, align 1
  %205 = load i8, i8* @_SEQ3, align 1
  %206 = zext i8 %205 to i32
  %207 = load i8*, i8** %17, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 1
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i32
  %211 = and i32 %210, 240
  %212 = ashr i32 %211, 4
  %213 = or i32 %206, %212
  %214 = trunc i32 %213 to i8
  %215 = load i8*, i8** %15, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 0
  store i8 %214, i8* %216, align 1
  br label %431

217:                                              ; preds = %135
  %218 = load i8, i8* @_NXT, align 1
  %219 = zext i8 %218 to i32
  %220 = load i8*, i8** %17, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 0
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i32
  %224 = and i32 %223, 63
  %225 = or i32 %219, %224
  %226 = trunc i32 %225 to i8
  %227 = load i8*, i8** %15, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 3
  store i8 %226, i8* %228, align 1
  %229 = load i8, i8* @_NXT, align 1
  %230 = zext i8 %229 to i32
  %231 = load i8*, i8** %17, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 0
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i32
  %235 = ashr i32 %234, 6
  %236 = or i32 %230, %235
  %237 = load i8*, i8** %17, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 1
  %239 = load i8, i8* %238, align 1
  %240 = zext i8 %239 to i32
  %241 = and i32 %240, 15
  %242 = shl i32 %241, 2
  %243 = or i32 %236, %242
  %244 = trunc i32 %243 to i8
  %245 = load i8*, i8** %15, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 2
  store i8 %244, i8* %246, align 1
  %247 = load i8, i8* @_NXT, align 1
  %248 = zext i8 %247 to i32
  %249 = load i8*, i8** %17, align 8
  %250 = getelementptr inbounds i8, i8* %249, i64 1
  %251 = load i8, i8* %250, align 1
  %252 = zext i8 %251 to i32
  %253 = and i32 %252, 240
  %254 = ashr i32 %253, 4
  %255 = or i32 %248, %254
  %256 = load i8*, i8** %17, align 8
  %257 = getelementptr inbounds i8, i8* %256, i64 2
  %258 = load i8, i8* %257, align 1
  %259 = zext i8 %258 to i32
  %260 = and i32 %259, 3
  %261 = shl i32 %260, 4
  %262 = or i32 %255, %261
  %263 = trunc i32 %262 to i8
  %264 = load i8*, i8** %15, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 1
  store i8 %263, i8* %265, align 1
  %266 = load i8, i8* @_SEQ4, align 1
  %267 = zext i8 %266 to i32
  %268 = load i8*, i8** %17, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 2
  %270 = load i8, i8* %269, align 1
  %271 = zext i8 %270 to i32
  %272 = and i32 %271, 31
  %273 = ashr i32 %272, 2
  %274 = or i32 %267, %273
  %275 = trunc i32 %274 to i8
  %276 = load i8*, i8** %15, align 8
  %277 = getelementptr inbounds i8, i8* %276, i64 0
  store i8 %275, i8* %277, align 1
  br label %431

278:                                              ; preds = %135
  %279 = load i8, i8* @_NXT, align 1
  %280 = zext i8 %279 to i32
  %281 = load i8*, i8** %17, align 8
  %282 = getelementptr inbounds i8, i8* %281, i64 0
  %283 = load i8, i8* %282, align 1
  %284 = zext i8 %283 to i32
  %285 = and i32 %284, 63
  %286 = or i32 %280, %285
  %287 = trunc i32 %286 to i8
  %288 = load i8*, i8** %15, align 8
  %289 = getelementptr inbounds i8, i8* %288, i64 4
  store i8 %287, i8* %289, align 1
  %290 = load i8, i8* @_NXT, align 1
  %291 = zext i8 %290 to i32
  %292 = load i8*, i8** %17, align 8
  %293 = getelementptr inbounds i8, i8* %292, i64 0
  %294 = load i8, i8* %293, align 1
  %295 = zext i8 %294 to i32
  %296 = ashr i32 %295, 6
  %297 = or i32 %291, %296
  %298 = load i8*, i8** %17, align 8
  %299 = getelementptr inbounds i8, i8* %298, i64 1
  %300 = load i8, i8* %299, align 1
  %301 = zext i8 %300 to i32
  %302 = and i32 %301, 15
  %303 = shl i32 %302, 2
  %304 = or i32 %297, %303
  %305 = trunc i32 %304 to i8
  %306 = load i8*, i8** %15, align 8
  %307 = getelementptr inbounds i8, i8* %306, i64 3
  store i8 %305, i8* %307, align 1
  %308 = load i8, i8* @_NXT, align 1
  %309 = zext i8 %308 to i32
  %310 = load i8*, i8** %17, align 8
  %311 = getelementptr inbounds i8, i8* %310, i64 1
  %312 = load i8, i8* %311, align 1
  %313 = zext i8 %312 to i32
  %314 = and i32 %313, 240
  %315 = ashr i32 %314, 4
  %316 = or i32 %309, %315
  %317 = load i8*, i8** %17, align 8
  %318 = getelementptr inbounds i8, i8* %317, i64 2
  %319 = load i8, i8* %318, align 1
  %320 = zext i8 %319 to i32
  %321 = and i32 %320, 3
  %322 = shl i32 %321, 4
  %323 = or i32 %316, %322
  %324 = trunc i32 %323 to i8
  %325 = load i8*, i8** %15, align 8
  %326 = getelementptr inbounds i8, i8* %325, i64 2
  store i8 %324, i8* %326, align 1
  %327 = load i8, i8* @_NXT, align 1
  %328 = zext i8 %327 to i32
  %329 = load i8*, i8** %17, align 8
  %330 = getelementptr inbounds i8, i8* %329, i64 2
  %331 = load i8, i8* %330, align 1
  %332 = zext i8 %331 to i32
  %333 = ashr i32 %332, 2
  %334 = or i32 %328, %333
  %335 = trunc i32 %334 to i8
  %336 = load i8*, i8** %15, align 8
  %337 = getelementptr inbounds i8, i8* %336, i64 1
  store i8 %335, i8* %337, align 1
  %338 = load i8, i8* @_SEQ5, align 1
  %339 = zext i8 %338 to i32
  %340 = load i8*, i8** %17, align 8
  %341 = getelementptr inbounds i8, i8* %340, i64 3
  %342 = load i8, i8* %341, align 1
  %343 = zext i8 %342 to i32
  %344 = and i32 %343, 3
  %345 = or i32 %339, %344
  %346 = trunc i32 %345 to i8
  %347 = load i8*, i8** %15, align 8
  %348 = getelementptr inbounds i8, i8* %347, i64 0
  store i8 %346, i8* %348, align 1
  br label %431

349:                                              ; preds = %135
  %350 = load i8, i8* @_NXT, align 1
  %351 = zext i8 %350 to i32
  %352 = load i8*, i8** %17, align 8
  %353 = getelementptr inbounds i8, i8* %352, i64 0
  %354 = load i8, i8* %353, align 1
  %355 = zext i8 %354 to i32
  %356 = and i32 %355, 63
  %357 = or i32 %351, %356
  %358 = trunc i32 %357 to i8
  %359 = load i8*, i8** %15, align 8
  %360 = getelementptr inbounds i8, i8* %359, i64 5
  store i8 %358, i8* %360, align 1
  %361 = load i8, i8* @_NXT, align 1
  %362 = zext i8 %361 to i32
  %363 = load i8*, i8** %17, align 8
  %364 = getelementptr inbounds i8, i8* %363, i64 0
  %365 = load i8, i8* %364, align 1
  %366 = zext i8 %365 to i32
  %367 = ashr i32 %366, 6
  %368 = or i32 %362, %367
  %369 = load i8*, i8** %17, align 8
  %370 = getelementptr inbounds i8, i8* %369, i64 1
  %371 = load i8, i8* %370, align 1
  %372 = zext i8 %371 to i32
  %373 = and i32 %372, 15
  %374 = shl i32 %373, 2
  %375 = or i32 %368, %374
  %376 = trunc i32 %375 to i8
  %377 = load i8*, i8** %15, align 8
  %378 = getelementptr inbounds i8, i8* %377, i64 4
  store i8 %376, i8* %378, align 1
  %379 = load i8, i8* @_NXT, align 1
  %380 = zext i8 %379 to i32
  %381 = load i8*, i8** %17, align 8
  %382 = getelementptr inbounds i8, i8* %381, i64 1
  %383 = load i8, i8* %382, align 1
  %384 = zext i8 %383 to i32
  %385 = ashr i32 %384, 4
  %386 = or i32 %380, %385
  %387 = load i8*, i8** %17, align 8
  %388 = getelementptr inbounds i8, i8* %387, i64 2
  %389 = load i8, i8* %388, align 1
  %390 = zext i8 %389 to i32
  %391 = and i32 %390, 3
  %392 = shl i32 %391, 4
  %393 = or i32 %386, %392
  %394 = trunc i32 %393 to i8
  %395 = load i8*, i8** %15, align 8
  %396 = getelementptr inbounds i8, i8* %395, i64 3
  store i8 %394, i8* %396, align 1
  %397 = load i8, i8* @_NXT, align 1
  %398 = zext i8 %397 to i32
  %399 = load i8*, i8** %17, align 8
  %400 = getelementptr inbounds i8, i8* %399, i64 2
  %401 = load i8, i8* %400, align 1
  %402 = zext i8 %401 to i32
  %403 = ashr i32 %402, 2
  %404 = or i32 %398, %403
  %405 = trunc i32 %404 to i8
  %406 = load i8*, i8** %15, align 8
  %407 = getelementptr inbounds i8, i8* %406, i64 2
  store i8 %405, i8* %407, align 1
  %408 = load i8, i8* @_NXT, align 1
  %409 = zext i8 %408 to i32
  %410 = load i8*, i8** %17, align 8
  %411 = getelementptr inbounds i8, i8* %410, i64 3
  %412 = load i8, i8* %411, align 1
  %413 = zext i8 %412 to i32
  %414 = and i32 %413, 63
  %415 = or i32 %409, %414
  %416 = trunc i32 %415 to i8
  %417 = load i8*, i8** %15, align 8
  %418 = getelementptr inbounds i8, i8* %417, i64 1
  store i8 %416, i8* %418, align 1
  %419 = load i8, i8* @_SEQ6, align 1
  %420 = zext i8 %419 to i32
  %421 = load i8*, i8** %17, align 8
  %422 = getelementptr inbounds i8, i8* %421, i64 3
  %423 = load i8, i8* %422, align 1
  %424 = zext i8 %423 to i32
  %425 = and i32 %424, 64
  %426 = ashr i32 %425, 6
  %427 = or i32 %420, %426
  %428 = trunc i32 %427 to i8
  %429 = load i8*, i8** %15, align 8
  %430 = getelementptr inbounds i8, i8* %429, i64 0
  store i8 %428, i8* %430, align 1
  br label %431

431:                                              ; preds = %135, %349, %278, %217, %175, %145, %140
  %432 = load i64, i64* %19, align 8
  %433 = load i8*, i8** %15, align 8
  %434 = getelementptr inbounds i8, i8* %433, i64 %432
  store i8* %434, i8** %15, align 8
  br label %435

435:                                              ; preds = %431, %124, %86, %75, %64
  %436 = load i32*, i32** %12, align 8
  %437 = getelementptr inbounds i32, i32* %436, i32 1
  store i32* %437, i32** %12, align 8
  br label %44

438:                                              ; preds = %52, %44
  %439 = load i64, i64* %18, align 8
  store i64 %439, i64* %6, align 8
  br label %440

440:                                              ; preds = %438, %134, %85, %63, %28
  %441 = load i64, i64* %6, align 8
  ret i64 %441
}

declare dso_local i64 @wchar_forbidden(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

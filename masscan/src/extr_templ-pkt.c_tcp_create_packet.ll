; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_templ-pkt.c_tcp_create_packet.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_templ-pkt.c_tcp_create_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TemplatePacket = type { i32, i32, i32*, i64, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"tcp: err generating packet: too much payload\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tcp_create_packet(%struct.TemplatePacket* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i8* %8, i64 %9, i8* %10, i64 %11) #0 {
  %13 = alloca i64, align 8
  %14 = alloca %struct.TemplatePacket*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  store %struct.TemplatePacket* %0, %struct.TemplatePacket** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i8* %8, i8** %22, align 8
  store i64 %9, i64* %23, align 8
  store i8* %10, i8** %24, align 8
  store i64 %11, i64* %25, align 8
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %16, align 4
  %36 = xor i32 %34, %35
  %37 = load i32, i32* %19, align 4
  %38 = xor i32 %36, %37
  store i32 %38, i32* %26, align 4
  %39 = load %struct.TemplatePacket*, %struct.TemplatePacket** %14, align 8
  %40 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %27, align 4
  %42 = load %struct.TemplatePacket*, %struct.TemplatePacket** %14, align 8
  %43 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %28, align 4
  %45 = load i32, i32* %28, align 4
  %46 = load %struct.TemplatePacket*, %struct.TemplatePacket** %14, align 8
  %47 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %28, align 4
  %50 = add i32 %49, 12
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 240
  %55 = ashr i32 %54, 2
  %56 = add i32 %45, %55
  store i32 %56, i32* %29, align 4
  %57 = load i32, i32* %29, align 4
  %58 = zext i32 %57 to i64
  %59 = load i64, i64* %23, align 8
  %60 = add i64 %58, %59
  store i64 %60, i64* %30, align 8
  %61 = load i32, i32* %29, align 4
  %62 = load i32, i32* %27, align 4
  %63 = sub i32 %61, %62
  %64 = zext i32 %63 to i64
  %65 = load i64, i64* %23, align 8
  %66 = add i64 %64, %65
  store i64 %66, i64* %32, align 8
  %67 = load i64, i64* %30, align 8
  %68 = load i64, i64* %25, align 8
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %12
  %71 = load i32, i32* @stderr, align 4
  %72 = call i32 @fprintf(i32 %71, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %13, align 8
  br label %427

73:                                               ; preds = %12
  %74 = load i8*, i8** %24, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load %struct.TemplatePacket*, %struct.TemplatePacket** %14, align 8
  %77 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = bitcast i32* %78 to i8*
  %80 = load %struct.TemplatePacket*, %struct.TemplatePacket** %14, align 8
  %81 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @memcpy(i8* %75, i8* %79, i64 %82)
  %84 = load i8*, i8** %24, align 8
  %85 = load i32, i32* %29, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8*, i8** %22, align 8
  %89 = load i64, i64* %23, align 8
  %90 = call i32 @memcpy(i8* %87, i8* %88, i64 %89)
  %91 = load i8*, i8** %24, align 8
  %92 = load i32, i32* %27, align 4
  %93 = add i32 %92, 2
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = shl i32 %97, 8
  %99 = load i8*, i8** %24, align 8
  %100 = load i32, i32* %27, align 4
  %101 = add i32 %100, 3
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = or i32 %98, %105
  store i32 %106, i32* %33, align 4
  %107 = load i64, i64* %32, align 8
  %108 = lshr i64 %107, 8
  %109 = trunc i64 %108 to i8
  %110 = load i8*, i8** %24, align 8
  %111 = load i32, i32* %27, align 4
  %112 = add i32 %111, 2
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  store i8 %109, i8* %114, align 1
  %115 = load i64, i64* %32, align 8
  %116 = and i64 %115, 255
  %117 = trunc i64 %116 to i8
  %118 = load i8*, i8** %24, align 8
  %119 = load i32, i32* %27, align 4
  %120 = add i32 %119, 3
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %118, i64 %121
  store i8 %117, i8* %122, align 1
  %123 = load i32, i32* %26, align 4
  %124 = lshr i32 %123, 8
  %125 = trunc i32 %124 to i8
  %126 = load i8*, i8** %24, align 8
  %127 = load i32, i32* %27, align 4
  %128 = add i32 %127, 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %126, i64 %129
  store i8 %125, i8* %130, align 1
  %131 = load i32, i32* %26, align 4
  %132 = and i32 %131, 255
  %133 = trunc i32 %132 to i8
  %134 = load i8*, i8** %24, align 8
  %135 = load i32, i32* %27, align 4
  %136 = add i32 %135, 5
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %134, i64 %137
  store i8 %133, i8* %138, align 1
  %139 = load i32, i32* %17, align 4
  %140 = lshr i32 %139, 24
  %141 = and i32 %140, 255
  %142 = trunc i32 %141 to i8
  %143 = load i8*, i8** %24, align 8
  %144 = load i32, i32* %27, align 4
  %145 = add i32 %144, 12
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %143, i64 %146
  store i8 %142, i8* %147, align 1
  %148 = load i32, i32* %17, align 4
  %149 = lshr i32 %148, 16
  %150 = and i32 %149, 255
  %151 = trunc i32 %150 to i8
  %152 = load i8*, i8** %24, align 8
  %153 = load i32, i32* %27, align 4
  %154 = add i32 %153, 13
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %152, i64 %155
  store i8 %151, i8* %156, align 1
  %157 = load i32, i32* %17, align 4
  %158 = lshr i32 %157, 8
  %159 = and i32 %158, 255
  %160 = trunc i32 %159 to i8
  %161 = load i8*, i8** %24, align 8
  %162 = load i32, i32* %27, align 4
  %163 = add i32 %162, 14
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %161, i64 %164
  store i8 %160, i8* %165, align 1
  %166 = load i32, i32* %17, align 4
  %167 = lshr i32 %166, 0
  %168 = and i32 %167, 255
  %169 = trunc i32 %168 to i8
  %170 = load i8*, i8** %24, align 8
  %171 = load i32, i32* %27, align 4
  %172 = add i32 %171, 15
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %170, i64 %173
  store i8 %169, i8* %174, align 1
  %175 = load i32, i32* %15, align 4
  %176 = lshr i32 %175, 24
  %177 = and i32 %176, 255
  %178 = trunc i32 %177 to i8
  %179 = load i8*, i8** %24, align 8
  %180 = load i32, i32* %27, align 4
  %181 = add i32 %180, 16
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %179, i64 %182
  store i8 %178, i8* %183, align 1
  %184 = load i32, i32* %15, align 4
  %185 = lshr i32 %184, 16
  %186 = and i32 %185, 255
  %187 = trunc i32 %186 to i8
  %188 = load i8*, i8** %24, align 8
  %189 = load i32, i32* %27, align 4
  %190 = add i32 %189, 17
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %188, i64 %191
  store i8 %187, i8* %192, align 1
  %193 = load i32, i32* %15, align 4
  %194 = lshr i32 %193, 8
  %195 = and i32 %194, 255
  %196 = trunc i32 %195 to i8
  %197 = load i8*, i8** %24, align 8
  %198 = load i32, i32* %27, align 4
  %199 = add i32 %198, 18
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %197, i64 %200
  store i8 %196, i8* %201, align 1
  %202 = load i32, i32* %15, align 4
  %203 = lshr i32 %202, 0
  %204 = and i32 %203, 255
  %205 = trunc i32 %204 to i8
  %206 = load i8*, i8** %24, align 8
  %207 = load i32, i32* %27, align 4
  %208 = add i32 %207, 19
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %206, i64 %209
  store i8 %205, i8* %210, align 1
  %211 = load %struct.TemplatePacket*, %struct.TemplatePacket** %14, align 8
  %212 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  store i32 %213, i32* %31, align 4
  %214 = load i32, i32* %26, align 4
  %215 = and i32 %214, 65535
  %216 = load i32, i32* %31, align 4
  %217 = add i32 %216, %215
  store i32 %217, i32* %31, align 4
  %218 = load i32, i32* %17, align 4
  %219 = load i32, i32* %31, align 4
  %220 = add i32 %219, %218
  store i32 %220, i32* %31, align 4
  %221 = load i32, i32* %15, align 4
  %222 = load i32, i32* %31, align 4
  %223 = add i32 %222, %221
  store i32 %223, i32* %31, align 4
  %224 = load i64, i64* %32, align 8
  %225 = load i32, i32* %33, align 4
  %226 = zext i32 %225 to i64
  %227 = sub i64 %224, %226
  %228 = load i32, i32* %31, align 4
  %229 = zext i32 %228 to i64
  %230 = add i64 %229, %227
  %231 = trunc i64 %230 to i32
  store i32 %231, i32* %31, align 4
  %232 = load i32, i32* %31, align 4
  %233 = lshr i32 %232, 16
  %234 = load i32, i32* %31, align 4
  %235 = and i32 %234, 65535
  %236 = add i32 %233, %235
  store i32 %236, i32* %31, align 4
  %237 = load i32, i32* %31, align 4
  %238 = lshr i32 %237, 16
  %239 = load i32, i32* %31, align 4
  %240 = and i32 %239, 65535
  %241 = add i32 %238, %240
  store i32 %241, i32* %31, align 4
  %242 = load i32, i32* %31, align 4
  %243 = xor i32 %242, -1
  store i32 %243, i32* %31, align 4
  %244 = load i32, i32* %31, align 4
  %245 = lshr i32 %244, 8
  %246 = trunc i32 %245 to i8
  %247 = load i8*, i8** %24, align 8
  %248 = load i32, i32* %27, align 4
  %249 = add i32 %248, 10
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds i8, i8* %247, i64 %250
  store i8 %246, i8* %251, align 1
  %252 = load i32, i32* %31, align 4
  %253 = and i32 %252, 255
  %254 = trunc i32 %253 to i8
  %255 = load i8*, i8** %24, align 8
  %256 = load i32, i32* %27, align 4
  %257 = add i32 %256, 11
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds i8, i8* %255, i64 %258
  store i8 %254, i8* %259, align 1
  %260 = load i32, i32* %18, align 4
  %261 = lshr i32 %260, 8
  %262 = trunc i32 %261 to i8
  %263 = load i8*, i8** %24, align 8
  %264 = load i32, i32* %28, align 4
  %265 = add i32 %264, 0
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds i8, i8* %263, i64 %266
  store i8 %262, i8* %267, align 1
  %268 = load i32, i32* %18, align 4
  %269 = and i32 %268, 255
  %270 = trunc i32 %269 to i8
  %271 = load i8*, i8** %24, align 8
  %272 = load i32, i32* %28, align 4
  %273 = add i32 %272, 1
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds i8, i8* %271, i64 %274
  store i8 %270, i8* %275, align 1
  %276 = load i32, i32* %16, align 4
  %277 = lshr i32 %276, 8
  %278 = trunc i32 %277 to i8
  %279 = load i8*, i8** %24, align 8
  %280 = load i32, i32* %28, align 4
  %281 = add i32 %280, 2
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds i8, i8* %279, i64 %282
  store i8 %278, i8* %283, align 1
  %284 = load i32, i32* %16, align 4
  %285 = and i32 %284, 255
  %286 = trunc i32 %285 to i8
  %287 = load i8*, i8** %24, align 8
  %288 = load i32, i32* %28, align 4
  %289 = add i32 %288, 3
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds i8, i8* %287, i64 %290
  store i8 %286, i8* %291, align 1
  %292 = load i32, i32* %19, align 4
  %293 = lshr i32 %292, 24
  %294 = trunc i32 %293 to i8
  %295 = load i8*, i8** %24, align 8
  %296 = load i32, i32* %28, align 4
  %297 = add i32 %296, 4
  %298 = zext i32 %297 to i64
  %299 = getelementptr inbounds i8, i8* %295, i64 %298
  store i8 %294, i8* %299, align 1
  %300 = load i32, i32* %19, align 4
  %301 = lshr i32 %300, 16
  %302 = trunc i32 %301 to i8
  %303 = load i8*, i8** %24, align 8
  %304 = load i32, i32* %28, align 4
  %305 = add i32 %304, 5
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds i8, i8* %303, i64 %306
  store i8 %302, i8* %307, align 1
  %308 = load i32, i32* %19, align 4
  %309 = lshr i32 %308, 8
  %310 = trunc i32 %309 to i8
  %311 = load i8*, i8** %24, align 8
  %312 = load i32, i32* %28, align 4
  %313 = add i32 %312, 6
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds i8, i8* %311, i64 %314
  store i8 %310, i8* %315, align 1
  %316 = load i32, i32* %19, align 4
  %317 = lshr i32 %316, 0
  %318 = trunc i32 %317 to i8
  %319 = load i8*, i8** %24, align 8
  %320 = load i32, i32* %28, align 4
  %321 = add i32 %320, 7
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds i8, i8* %319, i64 %322
  store i8 %318, i8* %323, align 1
  %324 = load i32, i32* %20, align 4
  %325 = lshr i32 %324, 24
  %326 = trunc i32 %325 to i8
  %327 = load i8*, i8** %24, align 8
  %328 = load i32, i32* %28, align 4
  %329 = add i32 %328, 8
  %330 = zext i32 %329 to i64
  %331 = getelementptr inbounds i8, i8* %327, i64 %330
  store i8 %326, i8* %331, align 1
  %332 = load i32, i32* %20, align 4
  %333 = lshr i32 %332, 16
  %334 = trunc i32 %333 to i8
  %335 = load i8*, i8** %24, align 8
  %336 = load i32, i32* %28, align 4
  %337 = add i32 %336, 9
  %338 = zext i32 %337 to i64
  %339 = getelementptr inbounds i8, i8* %335, i64 %338
  store i8 %334, i8* %339, align 1
  %340 = load i32, i32* %20, align 4
  %341 = lshr i32 %340, 8
  %342 = trunc i32 %341 to i8
  %343 = load i8*, i8** %24, align 8
  %344 = load i32, i32* %28, align 4
  %345 = add i32 %344, 10
  %346 = zext i32 %345 to i64
  %347 = getelementptr inbounds i8, i8* %343, i64 %346
  store i8 %342, i8* %347, align 1
  %348 = load i32, i32* %20, align 4
  %349 = lshr i32 %348, 0
  %350 = trunc i32 %349 to i8
  %351 = load i8*, i8** %24, align 8
  %352 = load i32, i32* %28, align 4
  %353 = add i32 %352, 11
  %354 = zext i32 %353 to i64
  %355 = getelementptr inbounds i8, i8* %351, i64 %354
  store i8 %350, i8* %355, align 1
  %356 = load i32, i32* %21, align 4
  %357 = trunc i32 %356 to i8
  %358 = load i8*, i8** %24, align 8
  %359 = load i32, i32* %28, align 4
  %360 = add i32 %359, 13
  %361 = zext i32 %360 to i64
  %362 = getelementptr inbounds i8, i8* %358, i64 %361
  store i8 %357, i8* %362, align 1
  %363 = load i8*, i8** %24, align 8
  %364 = load i32, i32* %28, align 4
  %365 = add i32 %364, 14
  %366 = zext i32 %365 to i64
  %367 = getelementptr inbounds i8, i8* %363, i64 %366
  store i8 4, i8* %367, align 1
  %368 = load i8*, i8** %24, align 8
  %369 = load i32, i32* %28, align 4
  %370 = add i32 %369, 15
  %371 = zext i32 %370 to i64
  %372 = getelementptr inbounds i8, i8* %368, i64 %371
  store i8 -80, i8* %372, align 1
  %373 = load i8*, i8** %24, align 8
  %374 = load i32, i32* %28, align 4
  %375 = add i32 %374, 16
  %376 = zext i32 %375 to i64
  %377 = getelementptr inbounds i8, i8* %373, i64 %376
  store i8 0, i8* %377, align 1
  %378 = load i8*, i8** %24, align 8
  %379 = load i32, i32* %28, align 4
  %380 = add i32 %379, 17
  %381 = zext i32 %380 to i64
  %382 = getelementptr inbounds i8, i8* %378, i64 %381
  store i8 0, i8* %382, align 1
  %383 = load i8*, i8** %24, align 8
  %384 = load %struct.TemplatePacket*, %struct.TemplatePacket** %14, align 8
  %385 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = load %struct.TemplatePacket*, %struct.TemplatePacket** %14, align 8
  %388 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = load i64, i64* %30, align 8
  %391 = load %struct.TemplatePacket*, %struct.TemplatePacket** %14, align 8
  %392 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 4
  %394 = zext i32 %393 to i64
  %395 = sub i64 %390, %394
  %396 = call i32 @tcp_checksum2(i8* %383, i32 %386, i32 %389, i64 %395)
  store i32 %396, i32* %31, align 4
  %397 = load i32, i32* %31, align 4
  %398 = xor i32 %397, -1
  store i32 %398, i32* %31, align 4
  %399 = load i32, i32* %31, align 4
  %400 = lshr i32 %399, 8
  %401 = trunc i32 %400 to i8
  %402 = load i8*, i8** %24, align 8
  %403 = load i32, i32* %28, align 4
  %404 = add i32 %403, 16
  %405 = zext i32 %404 to i64
  %406 = getelementptr inbounds i8, i8* %402, i64 %405
  store i8 %401, i8* %406, align 1
  %407 = load i32, i32* %31, align 4
  %408 = lshr i32 %407, 0
  %409 = trunc i32 %408 to i8
  %410 = load i8*, i8** %24, align 8
  %411 = load i32, i32* %28, align 4
  %412 = add i32 %411, 17
  %413 = zext i32 %412 to i64
  %414 = getelementptr inbounds i8, i8* %410, i64 %413
  store i8 %409, i8* %414, align 1
  %415 = load i64, i64* %30, align 8
  %416 = icmp ult i64 %415, 60
  br i1 %416, label %417, label %425

417:                                              ; preds = %73
  %418 = load i8*, i8** %24, align 8
  %419 = load i64, i64* %30, align 8
  %420 = getelementptr inbounds i8, i8* %418, i64 %419
  %421 = load i64, i64* %30, align 8
  %422 = sub i64 60, %421
  %423 = trunc i64 %422 to i32
  %424 = call i32 @memset(i8* %420, i32 0, i32 %423)
  store i64 60, i64* %30, align 8
  br label %425

425:                                              ; preds = %417, %73
  %426 = load i64, i64* %30, align 8
  store i64 %426, i64* %13, align 8
  br label %427

427:                                              ; preds = %425, %70
  %428 = load i64, i64* %13, align 8
  ret i64 %428
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @tcp_checksum2(i8*, i32, i32, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

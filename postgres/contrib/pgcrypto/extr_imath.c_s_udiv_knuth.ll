; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_s_udiv_knuth.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_s_udiv_knuth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32*, i32, i32, i8* }

@MP_ZPOS = common dso_local global i8* null, align 8
@MP_OK = common dso_local global i32 0, align 4
@MP_MEMORY = common dso_local global i32 0, align 4
@MP_DIGIT_BIT = common dso_local global i32 0, align 4
@MP_DIGIT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"The mathematics failed us.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_21__*)* @s_udiv_knuth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s_udiv_knuth(%struct.TYPE_21__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_21__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %15 = load i8*, i8** @MP_ZPOS, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 3
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** @MP_ZPOS, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %22 = call i32 @MP_USED(%struct.TYPE_21__* %21)
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %37

24:                                               ; preds = %2
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @s_ddiv(%struct.TYPE_21__* %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @mp_int_set_value(%struct.TYPE_21__* %33, i32 %34)
  %36 = load i32, i32* @MP_OK, align 4
  store i32 %36, i32* %3, align 4
  br label %309

37:                                               ; preds = %2
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %39 = call i32 @MP_USED(%struct.TYPE_21__* %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %41 = call i32 @MP_USED(%struct.TYPE_21__* %40)
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 %41, %42
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp sgt i32 %44, 1
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %50 = call i32 @s_norm(%struct.TYPE_21__* %48, %struct.TYPE_21__* %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %37
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %55 = call i32 @MP_USED(%struct.TYPE_21__* %54)
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %56, %57
  %59 = add nsw i32 %58, 1
  %60 = icmp ne i32 %55, %59
  br i1 %60, label %61, label %86

61:                                               ; preds = %53, %37
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %63, %64
  %66 = add nsw i32 %65, 1
  %67 = call i32 @s_pad(%struct.TYPE_21__* %62, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %61
  %70 = load i32, i32* @MP_MEMORY, align 4
  store i32 %70, i32* %3, align 4
  br label %309

71:                                               ; preds = %61
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  store i32 0, i32* %79, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %80, %81
  %83 = add nsw i32 %82, 1
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %71, %53
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  %90 = call i32 @s_pad(%struct.TYPE_21__* %87, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %86
  %93 = load i32, i32* @MP_MEMORY, align 4
  store i32 %93, i32* %3, align 4
  br label %309

94:                                               ; preds = %86
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 0, i32* %100, align 4
  %101 = call i32 @DECLARE_TEMP(i32 2)
  %102 = call %struct.TYPE_21__* @TEMP(i32 0)
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  %105 = call i32 @GROW(%struct.TYPE_21__* %102, i32 %104)
  %106 = call i32 @REQUIRE(i32 %105)
  %107 = call %struct.TYPE_21__* @TEMP(i32 1)
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  %110 = call i32 @GROW(%struct.TYPE_21__* %107, i32 %109)
  %111 = call i32 @REQUIRE(i32 %110)
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %11, align 4
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %114 = call i32* @MP_DIGITS(%struct.TYPE_21__* %113)
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  store i32* %117, i32** %118, align 8
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  store i32 %120, i32* %121, align 8
  %122 = load i8*, i8** @MP_ZPOS, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 3
  store i8* %122, i8** %123, align 8
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %125 = call i32 @MP_ALLOC(%struct.TYPE_21__* %124)
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 2
  store i32 %125, i32* %126, align 4
  %127 = call %struct.TYPE_21__* @TEMP(i32 1)
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = call %struct.TYPE_21__* @TEMP(i32 1)
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @ZERO(i32* %129, i32 %132)
  br label %134

134:                                              ; preds = %282, %94
  %135 = load i32, i32* %11, align 4
  %136 = icmp sge i32 %135, 0
  br i1 %136, label %137, label %285

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %13, align 4
  %144 = load i32, i32* @MP_DIGIT_BIT, align 4
  %145 = sdiv i32 %144, 2
  %146 = load i32, i32* %13, align 4
  %147 = shl i32 %146, %145
  store i32 %147, i32* %13, align 4
  %148 = load i32, i32* @MP_DIGIT_BIT, align 4
  %149 = sdiv i32 %148, 2
  %150 = load i32, i32* %13, align 4
  %151 = shl i32 %150, %149
  store i32 %151, i32* %13, align 4
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %153, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %13, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %13, align 4
  %161 = load i32, i32* %13, align 4
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sub nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %164, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = sdiv i32 %161, %169
  store i32 %170, i32* %14, align 4
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* @MP_DIGIT_MAX, align 4
  %173 = icmp sgt i32 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %137
  %175 = load i32, i32* @MP_DIGIT_MAX, align 4
  store i32 %175, i32* %14, align 4
  br label %176

176:                                              ; preds = %174, %137
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %178 = call i32* @MP_DIGITS(%struct.TYPE_21__* %177)
  %179 = load i32, i32* %14, align 4
  %180 = call %struct.TYPE_21__* @TEMP(i32 1)
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %8, align 4
  %184 = add nsw i32 %183, 1
  %185 = call i32 @s_dbmul(i32* %178, i32 %179, i32* %182, i32 %184)
  %186 = load i32, i32* %8, align 4
  %187 = add nsw i32 %186, 1
  %188 = call %struct.TYPE_21__* @TEMP(i32 1)
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 8
  %190 = call %struct.TYPE_21__* @TEMP(i32 1)
  %191 = call i32 @CLAMP(%struct.TYPE_21__* %190)
  %192 = call i32 @CLAMP(%struct.TYPE_21__* %12)
  %193 = call %struct.TYPE_21__* @TEMP(i32 1)
  %194 = call i64 @s_ucmp(%struct.TYPE_21__* %193, %struct.TYPE_21__* %12)
  %195 = icmp sgt i64 %194, 0
  br i1 %195, label %196, label %248

196:                                              ; preds = %176
  %197 = load i32, i32* %14, align 4
  %198 = sub nsw i32 %197, 1
  store i32 %198, i32* %14, align 4
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %200 = call i32* @MP_DIGITS(%struct.TYPE_21__* %199)
  %201 = load i32, i32* %14, align 4
  %202 = call %struct.TYPE_21__* @TEMP(i32 1)
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %8, align 4
  %206 = add nsw i32 %205, 1
  %207 = call i32 @s_dbmul(i32* %200, i32 %201, i32* %204, i32 %206)
  %208 = load i32, i32* %8, align 4
  %209 = add nsw i32 %208, 1
  %210 = call %struct.TYPE_21__* @TEMP(i32 1)
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 1
  store i32 %209, i32* %211, align 8
  %212 = call %struct.TYPE_21__* @TEMP(i32 1)
  %213 = call i32 @CLAMP(%struct.TYPE_21__* %212)
  %214 = call %struct.TYPE_21__* @TEMP(i32 1)
  %215 = call i64 @s_ucmp(%struct.TYPE_21__* %214, %struct.TYPE_21__* %12)
  %216 = icmp sgt i64 %215, 0
  br i1 %216, label %217, label %239

217:                                              ; preds = %196
  %218 = load i32, i32* %14, align 4
  %219 = icmp sgt i32 %218, 0
  %220 = zext i1 %219 to i32
  %221 = call i32 @assert(i32 %220)
  %222 = load i32, i32* %14, align 4
  %223 = sub nsw i32 %222, 1
  store i32 %223, i32* %14, align 4
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %225 = call i32* @MP_DIGITS(%struct.TYPE_21__* %224)
  %226 = load i32, i32* %14, align 4
  %227 = call %struct.TYPE_21__* @TEMP(i32 1)
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %8, align 4
  %231 = add nsw i32 %230, 1
  %232 = call i32 @s_dbmul(i32* %225, i32 %226, i32* %229, i32 %231)
  %233 = load i32, i32* %8, align 4
  %234 = add nsw i32 %233, 1
  %235 = call %struct.TYPE_21__* @TEMP(i32 1)
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i32 0, i32 1
  store i32 %234, i32* %236, align 8
  %237 = call %struct.TYPE_21__* @TEMP(i32 1)
  %238 = call i32 @CLAMP(%struct.TYPE_21__* %237)
  br label %239

239:                                              ; preds = %217, %196
  %240 = call %struct.TYPE_21__* @TEMP(i32 1)
  %241 = call i64 @s_ucmp(%struct.TYPE_21__* %240, %struct.TYPE_21__* %12)
  %242 = icmp sle i64 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %239
  br label %244

244:                                              ; preds = %243, %239
  %245 = phi i1 [ false, %239 ], [ true, %243 ]
  %246 = zext i1 %245 to i32
  %247 = call i32 @assert(i32 %246)
  br label %248

248:                                              ; preds = %244, %176
  %249 = load i32, i32* %8, align 4
  %250 = add nsw i32 %249, 1
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  store i32 %250, i32* %251, align 8
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = call %struct.TYPE_21__* @TEMP(i32 1)
  %255 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %254, i32 0, i32 0
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = call %struct.TYPE_21__* @TEMP(i32 1)
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @s_usub(i32* %253, i32* %256, i32* %258, i32 %260, i32 %263)
  %265 = load i32, i32* %14, align 4
  %266 = call %struct.TYPE_21__* @TEMP(i32 0)
  %267 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %266, i32 0, i32 0
  %268 = load i32*, i32** %267, align 8
  %269 = load i32, i32* %11, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  store i32 %265, i32* %271, align 4
  %272 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i32 -1
  store i32* %274, i32** %272, align 8
  %275 = call %struct.TYPE_21__* @TEMP(i32 1)
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %275, i32 0, i32 0
  %277 = load i32*, i32** %276, align 8
  %278 = call %struct.TYPE_21__* @TEMP(i32 1)
  %279 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @ZERO(i32* %277, i32 %280)
  br label %282

282:                                              ; preds = %248
  %283 = load i32, i32* %11, align 4
  %284 = add nsw i32 %283, -1
  store i32 %284, i32* %11, align 4
  br label %134

285:                                              ; preds = %134
  %286 = load i32, i32* %9, align 4
  %287 = add nsw i32 %286, 1
  %288 = call %struct.TYPE_21__* @TEMP(i32 0)
  %289 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %288, i32 0, i32 1
  store i32 %287, i32* %289, align 8
  %290 = call %struct.TYPE_21__* @TEMP(i32 0)
  %291 = call i32 @CLAMP(%struct.TYPE_21__* %290)
  %292 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %293 = call i32 @CLAMP(%struct.TYPE_21__* %292)
  %294 = load i32, i32* %10, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %300

296:                                              ; preds = %285
  %297 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %298 = load i32, i32* %10, align 4
  %299 = call i32 @s_qdiv(%struct.TYPE_21__* %297, i32 %298)
  br label %300

300:                                              ; preds = %296, %285
  %301 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %302 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %303 = call i32 @mp_int_copy(%struct.TYPE_21__* %301, %struct.TYPE_21__* %302)
  %304 = call %struct.TYPE_21__* @TEMP(i32 0)
  %305 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %306 = call i32 @mp_int_copy(%struct.TYPE_21__* %304, %struct.TYPE_21__* %305)
  %307 = call i32 (...) @CLEANUP_TEMP()
  %308 = load i32, i32* @MP_OK, align 4
  store i32 %308, i32* %3, align 4
  br label %309

309:                                              ; preds = %300, %92, %69, %24
  %310 = load i32, i32* %3, align 4
  ret i32 %310
}

declare dso_local i32 @MP_USED(%struct.TYPE_21__*) #1

declare dso_local i32 @s_ddiv(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @mp_int_set_value(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @s_norm(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @s_pad(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @DECLARE_TEMP(i32) #1

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @GROW(%struct.TYPE_21__*, i32) #1

declare dso_local %struct.TYPE_21__* @TEMP(i32) #1

declare dso_local i32* @MP_DIGITS(%struct.TYPE_21__*) #1

declare dso_local i32 @MP_ALLOC(%struct.TYPE_21__*) #1

declare dso_local i32 @ZERO(i32*, i32) #1

declare dso_local i32 @s_dbmul(i32*, i32, i32*, i32) #1

declare dso_local i32 @CLAMP(%struct.TYPE_21__*) #1

declare dso_local i64 @s_ucmp(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @s_usub(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @s_qdiv(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @mp_int_copy(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @CLEANUP_TEMP(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

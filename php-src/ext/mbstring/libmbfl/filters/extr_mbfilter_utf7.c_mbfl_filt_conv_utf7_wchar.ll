; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_utf7.c_mbfl_filt_conv_utf7_wchar.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_utf7.c_mbfl_filt_conv_utf7_wchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 (i32, i32)* }

@MBFL_WCSGROUP_MASK = common dso_local global i32 0, align 4
@MBFL_WCSGROUP_THROUGH = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_SUPMIN = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_SUPMAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_utf7_wchar(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 -1, i32* %7, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %115

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp sge i32 %13, 65
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = icmp sle i32 %16, 90
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = sub nsw i32 %19, 65
  store i32 %20, i32* %7, align 4
  br label %51

21:                                               ; preds = %15, %12
  %22 = load i32, i32* %4, align 4
  %23 = icmp sge i32 %22, 97
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = icmp sle i32 %25, 122
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = sub nsw i32 %28, 71
  store i32 %29, i32* %7, align 4
  br label %50

30:                                               ; preds = %24, %21
  %31 = load i32, i32* %4, align 4
  %32 = icmp sge i32 %31, 48
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = icmp sle i32 %34, 57
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 4
  store i32 %38, i32* %7, align 4
  br label %49

39:                                               ; preds = %33, %30
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 43
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 62, i32* %7, align 4
  br label %48

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = icmp eq i32 %44, 47
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 63, i32* %7, align 4
  br label %47

47:                                               ; preds = %46, %43
  br label %48

48:                                               ; preds = %47, %42
  br label %49

49:                                               ; preds = %48, %36
  br label %50

50:                                               ; preds = %49, %27
  br label %51

51:                                               ; preds = %50, %18
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = icmp sgt i32 %55, 63
  br i1 %56, label %57, label %114

57:                                               ; preds = %54, %51
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, 45
  br i1 %59, label %60, label %75

60:                                               ; preds = %57
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  %68 = load i32 (i32, i32)*, i32 (i32, i32)** %67, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 %68(i32 43, i32 %71)
  %73 = call i32 @CK(i32 %72)
  br label %74

74:                                               ; preds = %65, %60
  br label %108

75:                                               ; preds = %57
  %76 = load i32, i32* %4, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = load i32, i32* %4, align 4
  %80 = icmp slt i32 %79, 128
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = load i32 (i32, i32)*, i32 (i32, i32)** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 %84(i32 %85, i32 %88)
  %90 = call i32 @CK(i32 %89)
  br label %107

91:                                               ; preds = %78, %75
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %94 = and i32 %92, %93
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %6, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  %100 = load i32 (i32, i32)*, i32 (i32, i32)** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 %100(i32 %101, i32 %104)
  %106 = call i32 @CK(i32 %105)
  br label %107

107:                                              ; preds = %91, %81
  br label %108

108:                                              ; preds = %107, %74
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  store i32 0, i32* %110, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  store i32 0, i32* %112, align 8
  %113 = load i32, i32* %4, align 4
  store i32 %113, i32* %3, align 4
  br label %491

114:                                              ; preds = %54
  br label %115

115:                                              ; preds = %114, %2
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  switch i32 %118, label %486 [
    i32 0, label %119
    i32 1, label %159
    i32 2, label %159
    i32 3, label %168
    i32 4, label %177
    i32 5, label %274
    i32 6, label %283
    i32 7, label %292
    i32 8, label %389
    i32 9, label %398
  ]

119:                                              ; preds = %115
  %120 = load i32, i32* %4, align 4
  %121 = icmp eq i32 %120, 43
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  store i32 1, i32* %124, align 8
  br label %158

125:                                              ; preds = %119
  %126 = load i32, i32* %4, align 4
  %127 = icmp sge i32 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %125
  %129 = load i32, i32* %4, align 4
  %130 = icmp slt i32 %129, 128
  br i1 %130, label %131, label %141

131:                                              ; preds = %128
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 3
  %134 = load i32 (i32, i32)*, i32 (i32, i32)** %133, align 8
  %135 = load i32, i32* %4, align 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 %134(i32 %135, i32 %138)
  %140 = call i32 @CK(i32 %139)
  br label %157

141:                                              ; preds = %128, %125
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %144 = and i32 %142, %143
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %146 = load i32, i32* %6, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %6, align 4
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 3
  %150 = load i32 (i32, i32)*, i32 (i32, i32)** %149, align 8
  %151 = load i32, i32* %6, align 4
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = call i32 %150(i32 %151, i32 %154)
  %156 = call i32 @CK(i32 %155)
  br label %157

157:                                              ; preds = %141, %131
  br label %158

158:                                              ; preds = %157, %122
  br label %489

159:                                              ; preds = %115, %115
  %160 = load i32, i32* %7, align 4
  %161 = shl i32 %160, 10
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 4
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  store i32 3, i32* %167, align 8
  br label %489

168:                                              ; preds = %115
  %169 = load i32, i32* %7, align 4
  %170 = shl i32 %169, 4
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 4
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  store i32 4, i32* %176, align 8
  br label %489

177:                                              ; preds = %115
  %178 = load i32, i32* %7, align 4
  %179 = ashr i32 %178, 2
  %180 = and i32 %179, 15
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, 65535
  %185 = or i32 %180, %184
  store i32 %185, i32* %6, align 4
  %186 = load i32, i32* %7, align 4
  %187 = and i32 %186, 3
  %188 = shl i32 %187, 14
  store i32 %188, i32* %7, align 4
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  store i32 5, i32* %190, align 8
  %191 = load i32, i32* %6, align 4
  %192 = icmp sge i32 %191, 55296
  br i1 %192, label %193, label %206

193:                                              ; preds = %177
  %194 = load i32, i32* %6, align 4
  %195 = icmp slt i32 %194, 56320
  br i1 %195, label %196, label %206

196:                                              ; preds = %193
  %197 = load i32, i32* %6, align 4
  %198 = and i32 %197, 1023
  %199 = shl i32 %198, 16
  %200 = add nsw i32 %199, 4194304
  %201 = load i32, i32* %7, align 4
  %202 = or i32 %200, %201
  store i32 %202, i32* %6, align 4
  %203 = load i32, i32* %6, align 4
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  br label %273

206:                                              ; preds = %193, %177
  %207 = load i32, i32* %6, align 4
  %208 = icmp sge i32 %207, 56320
  br i1 %208, label %209, label %259

209:                                              ; preds = %206
  %210 = load i32, i32* %6, align 4
  %211 = icmp slt i32 %210, 57344
  br i1 %211, label %212, label %259

212:                                              ; preds = %209
  %213 = load i32, i32* %6, align 4
  %214 = and i32 %213, 1023
  store i32 %214, i32* %6, align 4
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = and i32 %217, 268369920
  %219 = ashr i32 %218, 6
  %220 = load i32, i32* %6, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %6, align 4
  %222 = load i32, i32* %7, align 4
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 4
  %225 = load i32, i32* %6, align 4
  %226 = load i32, i32* @MBFL_WCSPLANE_SUPMIN, align 4
  %227 = icmp sge i32 %225, %226
  br i1 %227, label %228, label %242

228:                                              ; preds = %212
  %229 = load i32, i32* %6, align 4
  %230 = load i32, i32* @MBFL_WCSPLANE_SUPMAX, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %242

232:                                              ; preds = %228
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 3
  %235 = load i32 (i32, i32)*, i32 (i32, i32)** %234, align 8
  %236 = load i32, i32* %6, align 4
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = call i32 %235(i32 %236, i32 %239)
  %241 = call i32 @CK(i32 %240)
  br label %258

242:                                              ; preds = %228, %212
  %243 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %244 = load i32, i32* %6, align 4
  %245 = and i32 %244, %243
  store i32 %245, i32* %6, align 4
  %246 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %247 = load i32, i32* %6, align 4
  %248 = or i32 %247, %246
  store i32 %248, i32* %6, align 4
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 3
  %251 = load i32 (i32, i32)*, i32 (i32, i32)** %250, align 8
  %252 = load i32, i32* %6, align 4
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = call i32 %251(i32 %252, i32 %255)
  %257 = call i32 @CK(i32 %256)
  br label %258

258:                                              ; preds = %242, %232
  br label %272

259:                                              ; preds = %209, %206
  %260 = load i32, i32* %7, align 4
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 1
  store i32 %260, i32* %262, align 4
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 3
  %265 = load i32 (i32, i32)*, i32 (i32, i32)** %264, align 8
  %266 = load i32, i32* %6, align 4
  %267 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = call i32 %265(i32 %266, i32 %269)
  %271 = call i32 @CK(i32 %270)
  br label %272

272:                                              ; preds = %259, %258
  br label %273

273:                                              ; preds = %272, %196
  br label %489

274:                                              ; preds = %115
  %275 = load i32, i32* %7, align 4
  %276 = shl i32 %275, 8
  %277 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = or i32 %279, %276
  store i32 %280, i32* %278, align 4
  %281 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %281, i32 0, i32 0
  store i32 6, i32* %282, align 8
  br label %489

283:                                              ; preds = %115
  %284 = load i32, i32* %7, align 4
  %285 = shl i32 %284, 2
  %286 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = or i32 %288, %285
  store i32 %289, i32* %287, align 4
  %290 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %290, i32 0, i32 0
  store i32 7, i32* %291, align 8
  br label %489

292:                                              ; preds = %115
  %293 = load i32, i32* %7, align 4
  %294 = ashr i32 %293, 4
  %295 = and i32 %294, 3
  %296 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = and i32 %298, 65535
  %300 = or i32 %295, %299
  store i32 %300, i32* %6, align 4
  %301 = load i32, i32* %7, align 4
  %302 = and i32 %301, 15
  %303 = shl i32 %302, 12
  store i32 %303, i32* %7, align 4
  %304 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %304, i32 0, i32 0
  store i32 8, i32* %305, align 8
  %306 = load i32, i32* %6, align 4
  %307 = icmp sge i32 %306, 55296
  br i1 %307, label %308, label %321

308:                                              ; preds = %292
  %309 = load i32, i32* %6, align 4
  %310 = icmp slt i32 %309, 56320
  br i1 %310, label %311, label %321

311:                                              ; preds = %308
  %312 = load i32, i32* %6, align 4
  %313 = and i32 %312, 1023
  %314 = shl i32 %313, 16
  %315 = add nsw i32 %314, 4194304
  %316 = load i32, i32* %7, align 4
  %317 = or i32 %315, %316
  store i32 %317, i32* %6, align 4
  %318 = load i32, i32* %6, align 4
  %319 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %319, i32 0, i32 1
  store i32 %318, i32* %320, align 4
  br label %388

321:                                              ; preds = %308, %292
  %322 = load i32, i32* %6, align 4
  %323 = icmp sge i32 %322, 56320
  br i1 %323, label %324, label %374

324:                                              ; preds = %321
  %325 = load i32, i32* %6, align 4
  %326 = icmp slt i32 %325, 57344
  br i1 %326, label %327, label %374

327:                                              ; preds = %324
  %328 = load i32, i32* %6, align 4
  %329 = and i32 %328, 1023
  store i32 %329, i32* %6, align 4
  %330 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = and i32 %332, 268369920
  %334 = ashr i32 %333, 6
  %335 = load i32, i32* %6, align 4
  %336 = or i32 %335, %334
  store i32 %336, i32* %6, align 4
  %337 = load i32, i32* %7, align 4
  %338 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %338, i32 0, i32 1
  store i32 %337, i32* %339, align 4
  %340 = load i32, i32* %6, align 4
  %341 = load i32, i32* @MBFL_WCSPLANE_SUPMIN, align 4
  %342 = icmp sge i32 %340, %341
  br i1 %342, label %343, label %357

343:                                              ; preds = %327
  %344 = load i32, i32* %6, align 4
  %345 = load i32, i32* @MBFL_WCSPLANE_SUPMAX, align 4
  %346 = icmp slt i32 %344, %345
  br i1 %346, label %347, label %357

347:                                              ; preds = %343
  %348 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %348, i32 0, i32 3
  %350 = load i32 (i32, i32)*, i32 (i32, i32)** %349, align 8
  %351 = load i32, i32* %6, align 4
  %352 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 8
  %355 = call i32 %350(i32 %351, i32 %354)
  %356 = call i32 @CK(i32 %355)
  br label %373

357:                                              ; preds = %343, %327
  %358 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %359 = load i32, i32* %6, align 4
  %360 = and i32 %359, %358
  store i32 %360, i32* %6, align 4
  %361 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %362 = load i32, i32* %6, align 4
  %363 = or i32 %362, %361
  store i32 %363, i32* %6, align 4
  %364 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %364, i32 0, i32 3
  %366 = load i32 (i32, i32)*, i32 (i32, i32)** %365, align 8
  %367 = load i32, i32* %6, align 4
  %368 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %369 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %368, i32 0, i32 2
  %370 = load i32, i32* %369, align 8
  %371 = call i32 %366(i32 %367, i32 %370)
  %372 = call i32 @CK(i32 %371)
  br label %373

373:                                              ; preds = %357, %347
  br label %387

374:                                              ; preds = %324, %321
  %375 = load i32, i32* %7, align 4
  %376 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %376, i32 0, i32 1
  store i32 %375, i32* %377, align 4
  %378 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %378, i32 0, i32 3
  %380 = load i32 (i32, i32)*, i32 (i32, i32)** %379, align 8
  %381 = load i32, i32* %6, align 4
  %382 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %383 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %382, i32 0, i32 2
  %384 = load i32, i32* %383, align 8
  %385 = call i32 %380(i32 %381, i32 %384)
  %386 = call i32 @CK(i32 %385)
  br label %387

387:                                              ; preds = %374, %373
  br label %388

388:                                              ; preds = %387, %311
  br label %489

389:                                              ; preds = %115
  %390 = load i32, i32* %7, align 4
  %391 = shl i32 %390, 6
  %392 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %393 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = or i32 %394, %391
  store i32 %395, i32* %393, align 4
  %396 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %397 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %396, i32 0, i32 0
  store i32 9, i32* %397, align 8
  br label %489

398:                                              ; preds = %115
  %399 = load i32, i32* %7, align 4
  %400 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %401 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = and i32 %402, 65535
  %404 = or i32 %399, %403
  store i32 %404, i32* %6, align 4
  %405 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %406 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %405, i32 0, i32 0
  store i32 2, i32* %406, align 8
  %407 = load i32, i32* %6, align 4
  %408 = icmp sge i32 %407, 55296
  br i1 %408, label %409, label %420

409:                                              ; preds = %398
  %410 = load i32, i32* %6, align 4
  %411 = icmp slt i32 %410, 56320
  br i1 %411, label %412, label %420

412:                                              ; preds = %409
  %413 = load i32, i32* %6, align 4
  %414 = and i32 %413, 1023
  %415 = shl i32 %414, 16
  %416 = add nsw i32 %415, 4194304
  store i32 %416, i32* %6, align 4
  %417 = load i32, i32* %6, align 4
  %418 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %419 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %418, i32 0, i32 1
  store i32 %417, i32* %419, align 4
  br label %485

420:                                              ; preds = %409, %398
  %421 = load i32, i32* %6, align 4
  %422 = icmp sge i32 %421, 56320
  br i1 %422, label %423, label %472

423:                                              ; preds = %420
  %424 = load i32, i32* %6, align 4
  %425 = icmp slt i32 %424, 57344
  br i1 %425, label %426, label %472

426:                                              ; preds = %423
  %427 = load i32, i32* %6, align 4
  %428 = and i32 %427, 1023
  store i32 %428, i32* %6, align 4
  %429 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %430 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 4
  %432 = and i32 %431, 268369920
  %433 = ashr i32 %432, 6
  %434 = load i32, i32* %6, align 4
  %435 = or i32 %434, %433
  store i32 %435, i32* %6, align 4
  %436 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %437 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %436, i32 0, i32 1
  store i32 0, i32* %437, align 4
  %438 = load i32, i32* %6, align 4
  %439 = load i32, i32* @MBFL_WCSPLANE_SUPMIN, align 4
  %440 = icmp sge i32 %438, %439
  br i1 %440, label %441, label %455

441:                                              ; preds = %426
  %442 = load i32, i32* %6, align 4
  %443 = load i32, i32* @MBFL_WCSPLANE_SUPMAX, align 4
  %444 = icmp slt i32 %442, %443
  br i1 %444, label %445, label %455

445:                                              ; preds = %441
  %446 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %447 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %446, i32 0, i32 3
  %448 = load i32 (i32, i32)*, i32 (i32, i32)** %447, align 8
  %449 = load i32, i32* %6, align 4
  %450 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %451 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %450, i32 0, i32 2
  %452 = load i32, i32* %451, align 8
  %453 = call i32 %448(i32 %449, i32 %452)
  %454 = call i32 @CK(i32 %453)
  br label %471

455:                                              ; preds = %441, %426
  %456 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %457 = load i32, i32* %6, align 4
  %458 = and i32 %457, %456
  store i32 %458, i32* %6, align 4
  %459 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %460 = load i32, i32* %6, align 4
  %461 = or i32 %460, %459
  store i32 %461, i32* %6, align 4
  %462 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %463 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %462, i32 0, i32 3
  %464 = load i32 (i32, i32)*, i32 (i32, i32)** %463, align 8
  %465 = load i32, i32* %6, align 4
  %466 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %467 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %466, i32 0, i32 2
  %468 = load i32, i32* %467, align 8
  %469 = call i32 %464(i32 %465, i32 %468)
  %470 = call i32 @CK(i32 %469)
  br label %471

471:                                              ; preds = %455, %445
  br label %484

472:                                              ; preds = %423, %420
  %473 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %474 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %473, i32 0, i32 1
  store i32 0, i32* %474, align 4
  %475 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %476 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %475, i32 0, i32 3
  %477 = load i32 (i32, i32)*, i32 (i32, i32)** %476, align 8
  %478 = load i32, i32* %6, align 4
  %479 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %480 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %479, i32 0, i32 2
  %481 = load i32, i32* %480, align 8
  %482 = call i32 %477(i32 %478, i32 %481)
  %483 = call i32 @CK(i32 %482)
  br label %484

484:                                              ; preds = %472, %471
  br label %485

485:                                              ; preds = %484, %412
  br label %489

486:                                              ; preds = %115
  %487 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %488 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %487, i32 0, i32 0
  store i32 0, i32* %488, align 8
  br label %489

489:                                              ; preds = %486, %485, %389, %388, %283, %274, %273, %168, %159, %158
  %490 = load i32, i32* %4, align 4
  store i32 %490, i32* %3, align 4
  br label %491

491:                                              ; preds = %489, %108
  %492 = load i32, i32* %3, align 4
  ret i32 %492
}

declare dso_local i32 @CK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

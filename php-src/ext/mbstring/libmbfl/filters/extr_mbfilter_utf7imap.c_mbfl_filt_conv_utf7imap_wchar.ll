; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_utf7imap.c_mbfl_filt_conv_utf7imap_wchar.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_utf7imap.c_mbfl_filt_conv_utf7imap_wchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 (i32, i32)* }

@MBFL_WCSGROUP_MASK = common dso_local global i32 0, align 4
@MBFL_WCSGROUP_THROUGH = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_SUPMIN = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_SUPMAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_utf7imap_wchar(i32 %0, %struct.TYPE_3__* %1) #0 {
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
  %45 = icmp eq i32 %44, 44
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
  %72 = call i32 %68(i32 38, i32 %71)
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
  br label %493

114:                                              ; preds = %54
  br label %115

115:                                              ; preds = %114, %2
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  switch i32 %118, label %488 [
    i32 0, label %119
    i32 1, label %161
    i32 2, label %161
    i32 3, label %170
    i32 4, label %179
    i32 5, label %276
    i32 6, label %285
    i32 7, label %294
    i32 8, label %391
    i32 9, label %400
  ]

119:                                              ; preds = %115
  %120 = load i32, i32* %4, align 4
  %121 = icmp eq i32 %120, 38
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 8
  br label %160

127:                                              ; preds = %119
  %128 = load i32, i32* %4, align 4
  %129 = icmp sge i32 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %127
  %131 = load i32, i32* %4, align 4
  %132 = icmp slt i32 %131, 128
  br i1 %132, label %133, label %143

133:                                              ; preds = %130
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 3
  %136 = load i32 (i32, i32)*, i32 (i32, i32)** %135, align 8
  %137 = load i32, i32* %4, align 4
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i32 %136(i32 %137, i32 %140)
  %142 = call i32 @CK(i32 %141)
  br label %159

143:                                              ; preds = %130, %127
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %146 = and i32 %144, %145
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %148 = load i32, i32* %6, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %6, align 4
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 3
  %152 = load i32 (i32, i32)*, i32 (i32, i32)** %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 %152(i32 %153, i32 %156)
  %158 = call i32 @CK(i32 %157)
  br label %159

159:                                              ; preds = %143, %133
  br label %160

160:                                              ; preds = %159, %122
  br label %491

161:                                              ; preds = %115, %115
  %162 = load i32, i32* %7, align 4
  %163 = shl i32 %162, 10
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 4
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  store i32 3, i32* %169, align 8
  br label %491

170:                                              ; preds = %115
  %171 = load i32, i32* %7, align 4
  %172 = shl i32 %171, 4
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 4
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  store i32 4, i32* %178, align 8
  br label %491

179:                                              ; preds = %115
  %180 = load i32, i32* %7, align 4
  %181 = ashr i32 %180, 2
  %182 = and i32 %181, 15
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = and i32 %185, 65535
  %187 = or i32 %182, %186
  store i32 %187, i32* %6, align 4
  %188 = load i32, i32* %7, align 4
  %189 = and i32 %188, 3
  %190 = shl i32 %189, 14
  store i32 %190, i32* %7, align 4
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  store i32 5, i32* %192, align 8
  %193 = load i32, i32* %6, align 4
  %194 = icmp sge i32 %193, 55296
  br i1 %194, label %195, label %208

195:                                              ; preds = %179
  %196 = load i32, i32* %6, align 4
  %197 = icmp slt i32 %196, 56320
  br i1 %197, label %198, label %208

198:                                              ; preds = %195
  %199 = load i32, i32* %6, align 4
  %200 = and i32 %199, 1023
  %201 = shl i32 %200, 16
  %202 = add nsw i32 %201, 4194304
  %203 = load i32, i32* %7, align 4
  %204 = or i32 %202, %203
  store i32 %204, i32* %6, align 4
  %205 = load i32, i32* %6, align 4
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 1
  store i32 %205, i32* %207, align 4
  br label %275

208:                                              ; preds = %195, %179
  %209 = load i32, i32* %6, align 4
  %210 = icmp sge i32 %209, 56320
  br i1 %210, label %211, label %261

211:                                              ; preds = %208
  %212 = load i32, i32* %6, align 4
  %213 = icmp slt i32 %212, 57344
  br i1 %213, label %214, label %261

214:                                              ; preds = %211
  %215 = load i32, i32* %6, align 4
  %216 = and i32 %215, 1023
  store i32 %216, i32* %6, align 4
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = and i32 %219, 268369920
  %221 = ashr i32 %220, 6
  %222 = load i32, i32* %6, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %6, align 4
  %224 = load i32, i32* %7, align 4
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 1
  store i32 %224, i32* %226, align 4
  %227 = load i32, i32* %6, align 4
  %228 = load i32, i32* @MBFL_WCSPLANE_SUPMIN, align 4
  %229 = icmp sge i32 %227, %228
  br i1 %229, label %230, label %244

230:                                              ; preds = %214
  %231 = load i32, i32* %6, align 4
  %232 = load i32, i32* @MBFL_WCSPLANE_SUPMAX, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %244

234:                                              ; preds = %230
  %235 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 3
  %237 = load i32 (i32, i32)*, i32 (i32, i32)** %236, align 8
  %238 = load i32, i32* %6, align 4
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = call i32 %237(i32 %238, i32 %241)
  %243 = call i32 @CK(i32 %242)
  br label %260

244:                                              ; preds = %230, %214
  %245 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %246 = load i32, i32* %6, align 4
  %247 = and i32 %246, %245
  store i32 %247, i32* %6, align 4
  %248 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %249 = load i32, i32* %6, align 4
  %250 = or i32 %249, %248
  store i32 %250, i32* %6, align 4
  %251 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 3
  %253 = load i32 (i32, i32)*, i32 (i32, i32)** %252, align 8
  %254 = load i32, i32* %6, align 4
  %255 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = call i32 %253(i32 %254, i32 %257)
  %259 = call i32 @CK(i32 %258)
  br label %260

260:                                              ; preds = %244, %234
  br label %274

261:                                              ; preds = %211, %208
  %262 = load i32, i32* %7, align 4
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 1
  store i32 %262, i32* %264, align 4
  %265 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 3
  %267 = load i32 (i32, i32)*, i32 (i32, i32)** %266, align 8
  %268 = load i32, i32* %6, align 4
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = call i32 %267(i32 %268, i32 %271)
  %273 = call i32 @CK(i32 %272)
  br label %274

274:                                              ; preds = %261, %260
  br label %275

275:                                              ; preds = %274, %198
  br label %491

276:                                              ; preds = %115
  %277 = load i32, i32* %7, align 4
  %278 = shl i32 %277, 8
  %279 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = or i32 %281, %278
  store i32 %282, i32* %280, align 4
  %283 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i32 0, i32 0
  store i32 6, i32* %284, align 8
  br label %491

285:                                              ; preds = %115
  %286 = load i32, i32* %7, align 4
  %287 = shl i32 %286, 2
  %288 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = or i32 %290, %287
  store i32 %291, i32* %289, align 4
  %292 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 0
  store i32 7, i32* %293, align 8
  br label %491

294:                                              ; preds = %115
  %295 = load i32, i32* %7, align 4
  %296 = ashr i32 %295, 4
  %297 = and i32 %296, 3
  %298 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = and i32 %300, 65535
  %302 = or i32 %297, %301
  store i32 %302, i32* %6, align 4
  %303 = load i32, i32* %7, align 4
  %304 = and i32 %303, 15
  %305 = shl i32 %304, 12
  store i32 %305, i32* %7, align 4
  %306 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %306, i32 0, i32 0
  store i32 8, i32* %307, align 8
  %308 = load i32, i32* %6, align 4
  %309 = icmp sge i32 %308, 55296
  br i1 %309, label %310, label %323

310:                                              ; preds = %294
  %311 = load i32, i32* %6, align 4
  %312 = icmp slt i32 %311, 56320
  br i1 %312, label %313, label %323

313:                                              ; preds = %310
  %314 = load i32, i32* %6, align 4
  %315 = and i32 %314, 1023
  %316 = shl i32 %315, 16
  %317 = add nsw i32 %316, 4194304
  %318 = load i32, i32* %7, align 4
  %319 = or i32 %317, %318
  store i32 %319, i32* %6, align 4
  %320 = load i32, i32* %6, align 4
  %321 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %321, i32 0, i32 1
  store i32 %320, i32* %322, align 4
  br label %390

323:                                              ; preds = %310, %294
  %324 = load i32, i32* %6, align 4
  %325 = icmp sge i32 %324, 56320
  br i1 %325, label %326, label %376

326:                                              ; preds = %323
  %327 = load i32, i32* %6, align 4
  %328 = icmp slt i32 %327, 57344
  br i1 %328, label %329, label %376

329:                                              ; preds = %326
  %330 = load i32, i32* %6, align 4
  %331 = and i32 %330, 1023
  store i32 %331, i32* %6, align 4
  %332 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = and i32 %334, 268369920
  %336 = ashr i32 %335, 6
  %337 = load i32, i32* %6, align 4
  %338 = or i32 %337, %336
  store i32 %338, i32* %6, align 4
  %339 = load i32, i32* %7, align 4
  %340 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %340, i32 0, i32 1
  store i32 %339, i32* %341, align 4
  %342 = load i32, i32* %6, align 4
  %343 = load i32, i32* @MBFL_WCSPLANE_SUPMIN, align 4
  %344 = icmp sge i32 %342, %343
  br i1 %344, label %345, label %359

345:                                              ; preds = %329
  %346 = load i32, i32* %6, align 4
  %347 = load i32, i32* @MBFL_WCSPLANE_SUPMAX, align 4
  %348 = icmp slt i32 %346, %347
  br i1 %348, label %349, label %359

349:                                              ; preds = %345
  %350 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %350, i32 0, i32 3
  %352 = load i32 (i32, i32)*, i32 (i32, i32)** %351, align 8
  %353 = load i32, i32* %6, align 4
  %354 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %354, i32 0, i32 2
  %356 = load i32, i32* %355, align 8
  %357 = call i32 %352(i32 %353, i32 %356)
  %358 = call i32 @CK(i32 %357)
  br label %375

359:                                              ; preds = %345, %329
  %360 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %361 = load i32, i32* %6, align 4
  %362 = and i32 %361, %360
  store i32 %362, i32* %6, align 4
  %363 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %364 = load i32, i32* %6, align 4
  %365 = or i32 %364, %363
  store i32 %365, i32* %6, align 4
  %366 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %367 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %366, i32 0, i32 3
  %368 = load i32 (i32, i32)*, i32 (i32, i32)** %367, align 8
  %369 = load i32, i32* %6, align 4
  %370 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 8
  %373 = call i32 %368(i32 %369, i32 %372)
  %374 = call i32 @CK(i32 %373)
  br label %375

375:                                              ; preds = %359, %349
  br label %389

376:                                              ; preds = %326, %323
  %377 = load i32, i32* %7, align 4
  %378 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %378, i32 0, i32 1
  store i32 %377, i32* %379, align 4
  %380 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %380, i32 0, i32 3
  %382 = load i32 (i32, i32)*, i32 (i32, i32)** %381, align 8
  %383 = load i32, i32* %6, align 4
  %384 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %385 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 8
  %387 = call i32 %382(i32 %383, i32 %386)
  %388 = call i32 @CK(i32 %387)
  br label %389

389:                                              ; preds = %376, %375
  br label %390

390:                                              ; preds = %389, %313
  br label %491

391:                                              ; preds = %115
  %392 = load i32, i32* %7, align 4
  %393 = shl i32 %392, 6
  %394 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %395 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 4
  %397 = or i32 %396, %393
  store i32 %397, i32* %395, align 4
  %398 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %399 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %398, i32 0, i32 0
  store i32 9, i32* %399, align 8
  br label %491

400:                                              ; preds = %115
  %401 = load i32, i32* %7, align 4
  %402 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %403 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  %405 = and i32 %404, 65535
  %406 = or i32 %401, %405
  store i32 %406, i32* %6, align 4
  %407 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %407, i32 0, i32 0
  store i32 2, i32* %408, align 8
  %409 = load i32, i32* %6, align 4
  %410 = icmp sge i32 %409, 55296
  br i1 %410, label %411, label %422

411:                                              ; preds = %400
  %412 = load i32, i32* %6, align 4
  %413 = icmp slt i32 %412, 56320
  br i1 %413, label %414, label %422

414:                                              ; preds = %411
  %415 = load i32, i32* %6, align 4
  %416 = and i32 %415, 1023
  %417 = shl i32 %416, 16
  %418 = add nsw i32 %417, 4194304
  store i32 %418, i32* %6, align 4
  %419 = load i32, i32* %6, align 4
  %420 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %421 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %420, i32 0, i32 1
  store i32 %419, i32* %421, align 4
  br label %487

422:                                              ; preds = %411, %400
  %423 = load i32, i32* %6, align 4
  %424 = icmp sge i32 %423, 56320
  br i1 %424, label %425, label %474

425:                                              ; preds = %422
  %426 = load i32, i32* %6, align 4
  %427 = icmp slt i32 %426, 57344
  br i1 %427, label %428, label %474

428:                                              ; preds = %425
  %429 = load i32, i32* %6, align 4
  %430 = and i32 %429, 1023
  store i32 %430, i32* %6, align 4
  %431 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %432 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 4
  %434 = and i32 %433, 268369920
  %435 = ashr i32 %434, 6
  %436 = load i32, i32* %6, align 4
  %437 = or i32 %436, %435
  store i32 %437, i32* %6, align 4
  %438 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %439 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %438, i32 0, i32 1
  store i32 0, i32* %439, align 4
  %440 = load i32, i32* %6, align 4
  %441 = load i32, i32* @MBFL_WCSPLANE_SUPMIN, align 4
  %442 = icmp sge i32 %440, %441
  br i1 %442, label %443, label %457

443:                                              ; preds = %428
  %444 = load i32, i32* %6, align 4
  %445 = load i32, i32* @MBFL_WCSPLANE_SUPMAX, align 4
  %446 = icmp slt i32 %444, %445
  br i1 %446, label %447, label %457

447:                                              ; preds = %443
  %448 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %449 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %448, i32 0, i32 3
  %450 = load i32 (i32, i32)*, i32 (i32, i32)** %449, align 8
  %451 = load i32, i32* %6, align 4
  %452 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %453 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %452, i32 0, i32 2
  %454 = load i32, i32* %453, align 8
  %455 = call i32 %450(i32 %451, i32 %454)
  %456 = call i32 @CK(i32 %455)
  br label %473

457:                                              ; preds = %443, %428
  %458 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %459 = load i32, i32* %6, align 4
  %460 = and i32 %459, %458
  store i32 %460, i32* %6, align 4
  %461 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %462 = load i32, i32* %6, align 4
  %463 = or i32 %462, %461
  store i32 %463, i32* %6, align 4
  %464 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %465 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %464, i32 0, i32 3
  %466 = load i32 (i32, i32)*, i32 (i32, i32)** %465, align 8
  %467 = load i32, i32* %6, align 4
  %468 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %469 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %468, i32 0, i32 2
  %470 = load i32, i32* %469, align 8
  %471 = call i32 %466(i32 %467, i32 %470)
  %472 = call i32 @CK(i32 %471)
  br label %473

473:                                              ; preds = %457, %447
  br label %486

474:                                              ; preds = %425, %422
  %475 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %476 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %475, i32 0, i32 1
  store i32 0, i32* %476, align 4
  %477 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %478 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %477, i32 0, i32 3
  %479 = load i32 (i32, i32)*, i32 (i32, i32)** %478, align 8
  %480 = load i32, i32* %6, align 4
  %481 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %482 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %481, i32 0, i32 2
  %483 = load i32, i32* %482, align 8
  %484 = call i32 %479(i32 %480, i32 %483)
  %485 = call i32 @CK(i32 %484)
  br label %486

486:                                              ; preds = %474, %473
  br label %487

487:                                              ; preds = %486, %414
  br label %491

488:                                              ; preds = %115
  %489 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %490 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %489, i32 0, i32 0
  store i32 0, i32* %490, align 8
  br label %491

491:                                              ; preds = %488, %487, %391, %390, %285, %276, %275, %170, %161, %160
  %492 = load i32, i32* %4, align 4
  store i32 %492, i32* %3, align 4
  br label %493

493:                                              ; preds = %491, %108
  %494 = load i32, i32* %3, align 4
  ret i32 %494
}

declare dso_local i32 @CK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

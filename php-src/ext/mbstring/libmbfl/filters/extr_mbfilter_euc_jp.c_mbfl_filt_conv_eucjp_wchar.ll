; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_euc_jp.c_mbfl_filt_conv_eucjp_wchar.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_euc_jp.c_mbfl_filt_conv_eucjp_wchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 (i32, i32)* }

@MBFL_WCSGROUP_MASK = common dso_local global i32 0, align 4
@MBFL_WCSGROUP_THROUGH = common dso_local global i32 0, align 4
@jisx0208_ucs_table_size = common dso_local global i32 0, align 4
@jisx0208_ucs_table = common dso_local global i32* null, align 8
@MBFL_WCSPLANE_MASK = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_JIS0208 = common dso_local global i32 0, align 4
@jisx0212_ucs_table_size = common dso_local global i32 0, align 4
@jisx0212_ucs_table = common dso_local global i32* null, align 8
@MBFL_WCSPLANE_JIS0212 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_eucjp_wchar(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %363 [
    i32 0, label %11
    i32 1, label %71
    i32 2, label %169
    i32 3, label %228
    i32 4, label %258
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 128
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  %20 = load i32 (i32, i32)*, i32 (i32, i32)** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 %20(i32 %21, i32 %24)
  %26 = call i32 @CK(i32 %25)
  br label %70

27:                                               ; preds = %14, %11
  %28 = load i32, i32* %3, align 4
  %29 = icmp sgt i32 %28, 160
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %31, 255
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %69

39:                                               ; preds = %30, %27
  %40 = load i32, i32* %3, align 4
  %41 = icmp eq i32 %40, 142
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 2, i32* %44, align 8
  br label %68

45:                                               ; preds = %39
  %46 = load i32, i32* %3, align 4
  %47 = icmp eq i32 %46, 143
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 3, i32* %50, align 8
  br label %67

51:                                               ; preds = %45
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load i32 (i32, i32)*, i32 (i32, i32)** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 %60(i32 %61, i32 %64)
  %66 = call i32 @CK(i32 %65)
  br label %67

67:                                               ; preds = %51, %48
  br label %68

68:                                               ; preds = %67, %42
  br label %69

69:                                               ; preds = %68, %33
  br label %70

70:                                               ; preds = %69, %17
  br label %366

71:                                               ; preds = %2
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %3, align 4
  %78 = icmp sgt i32 %77, 160
  br i1 %78, label %79, label %128

79:                                               ; preds = %71
  %80 = load i32, i32* %3, align 4
  %81 = icmp slt i32 %80, 255
  br i1 %81, label %82, label %128

82:                                               ; preds = %79
  %83 = load i32, i32* %5, align 4
  %84 = sub nsw i32 %83, 161
  %85 = mul nsw i32 %84, 94
  %86 = load i32, i32* %3, align 4
  %87 = add nsw i32 %85, %86
  %88 = sub nsw i32 %87, 161
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %82
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @jisx0208_ucs_table_size, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load i32*, i32** @jisx0208_ucs_table, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %7, align 4
  br label %102

101:                                              ; preds = %91, %82
  store i32 0, i32* %7, align 4
  br label %102

102:                                              ; preds = %101, %95
  %103 = load i32, i32* %7, align 4
  %104 = icmp sle i32 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %102
  %106 = load i32, i32* %5, align 4
  %107 = and i32 %106, 127
  %108 = shl i32 %107, 8
  %109 = load i32, i32* %3, align 4
  %110 = and i32 %109, 127
  %111 = or i32 %108, %110
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %113 = load i32, i32* %7, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* @MBFL_WCSPLANE_JIS0208, align 4
  %116 = load i32, i32* %7, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %105, %102
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 3
  %121 = load i32 (i32, i32)*, i32 (i32, i32)** %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 %121(i32 %122, i32 %125)
  %127 = call i32 @CK(i32 %126)
  br label %168

128:                                              ; preds = %79, %71
  %129 = load i32, i32* %3, align 4
  %130 = icmp sge i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32, i32* %3, align 4
  %133 = icmp slt i32 %132, 33
  br i1 %133, label %137, label %134

134:                                              ; preds = %131, %128
  %135 = load i32, i32* %3, align 4
  %136 = icmp eq i32 %135, 127
  br i1 %136, label %137, label %147

137:                                              ; preds = %134, %131
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 3
  %140 = load i32 (i32, i32)*, i32 (i32, i32)** %139, align 8
  %141 = load i32, i32* %3, align 4
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 %140(i32 %141, i32 %144)
  %146 = call i32 @CK(i32 %145)
  br label %167

147:                                              ; preds = %134
  %148 = load i32, i32* %5, align 4
  %149 = shl i32 %148, 8
  %150 = load i32, i32* %3, align 4
  %151 = or i32 %149, %150
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %153 = load i32, i32* %7, align 4
  %154 = and i32 %153, %152
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %156 = load i32, i32* %7, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %7, align 4
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 3
  %160 = load i32 (i32, i32)*, i32 (i32, i32)** %159, align 8
  %161 = load i32, i32* %7, align 4
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i32 %160(i32 %161, i32 %164)
  %166 = call i32 @CK(i32 %165)
  br label %167

167:                                              ; preds = %147, %137
  br label %168

168:                                              ; preds = %167, %118
  br label %366

169:                                              ; preds = %2
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  store i32 0, i32* %171, align 8
  %172 = load i32, i32* %3, align 4
  %173 = icmp sgt i32 %172, 160
  br i1 %173, label %174, label %189

174:                                              ; preds = %169
  %175 = load i32, i32* %3, align 4
  %176 = icmp slt i32 %175, 224
  br i1 %176, label %177, label %189

177:                                              ; preds = %174
  %178 = load i32, i32* %3, align 4
  %179 = add nsw i32 65216, %178
  store i32 %179, i32* %7, align 4
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 3
  %182 = load i32 (i32, i32)*, i32 (i32, i32)** %181, align 8
  %183 = load i32, i32* %7, align 4
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = call i32 %182(i32 %183, i32 %186)
  %188 = call i32 @CK(i32 %187)
  br label %227

189:                                              ; preds = %174, %169
  %190 = load i32, i32* %3, align 4
  %191 = icmp sge i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load i32, i32* %3, align 4
  %194 = icmp slt i32 %193, 33
  br i1 %194, label %198, label %195

195:                                              ; preds = %192, %189
  %196 = load i32, i32* %3, align 4
  %197 = icmp eq i32 %196, 127
  br i1 %197, label %198, label %208

198:                                              ; preds = %195, %192
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 3
  %201 = load i32 (i32, i32)*, i32 (i32, i32)** %200, align 8
  %202 = load i32, i32* %3, align 4
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = call i32 %201(i32 %202, i32 %205)
  %207 = call i32 @CK(i32 %206)
  br label %226

208:                                              ; preds = %195
  %209 = load i32, i32* %3, align 4
  %210 = or i32 36352, %209
  store i32 %210, i32* %7, align 4
  %211 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %212 = load i32, i32* %7, align 4
  %213 = and i32 %212, %211
  store i32 %213, i32* %7, align 4
  %214 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %215 = load i32, i32* %7, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %7, align 4
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 3
  %219 = load i32 (i32, i32)*, i32 (i32, i32)** %218, align 8
  %220 = load i32, i32* %7, align 4
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = call i32 %219(i32 %220, i32 %223)
  %225 = call i32 @CK(i32 %224)
  br label %226

226:                                              ; preds = %208, %198
  br label %227

227:                                              ; preds = %226, %177
  br label %366

228:                                              ; preds = %2
  %229 = load i32, i32* %3, align 4
  %230 = icmp sge i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %228
  %232 = load i32, i32* %3, align 4
  %233 = icmp slt i32 %232, 33
  br i1 %233, label %237, label %234

234:                                              ; preds = %231, %228
  %235 = load i32, i32* %3, align 4
  %236 = icmp eq i32 %235, 127
  br i1 %236, label %237, label %249

237:                                              ; preds = %234, %231
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 3
  %240 = load i32 (i32, i32)*, i32 (i32, i32)** %239, align 8
  %241 = load i32, i32* %3, align 4
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = call i32 %240(i32 %241, i32 %244)
  %246 = call i32 @CK(i32 %245)
  %247 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 0, i32 0
  store i32 0, i32* %248, align 8
  br label %257

249:                                              ; preds = %234
  %250 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %251, align 8
  %254 = load i32, i32* %3, align 4
  %255 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 1
  store i32 %254, i32* %256, align 4
  br label %257

257:                                              ; preds = %249, %237
  br label %366

258:                                              ; preds = %2
  %259 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 0
  store i32 0, i32* %260, align 8
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  store i32 %263, i32* %5, align 4
  %264 = load i32, i32* %5, align 4
  %265 = icmp sgt i32 %264, 160
  br i1 %265, label %266, label %321

266:                                              ; preds = %258
  %267 = load i32, i32* %5, align 4
  %268 = icmp slt i32 %267, 255
  br i1 %268, label %269, label %321

269:                                              ; preds = %266
  %270 = load i32, i32* %3, align 4
  %271 = icmp sgt i32 %270, 160
  br i1 %271, label %272, label %321

272:                                              ; preds = %269
  %273 = load i32, i32* %3, align 4
  %274 = icmp slt i32 %273, 255
  br i1 %274, label %275, label %321

275:                                              ; preds = %272
  %276 = load i32, i32* %5, align 4
  %277 = sub nsw i32 %276, 161
  %278 = mul nsw i32 %277, 94
  %279 = load i32, i32* %3, align 4
  %280 = add nsw i32 %278, %279
  %281 = sub nsw i32 %280, 161
  store i32 %281, i32* %6, align 4
  %282 = load i32, i32* %6, align 4
  %283 = icmp sge i32 %282, 0
  br i1 %283, label %284, label %294

284:                                              ; preds = %275
  %285 = load i32, i32* %6, align 4
  %286 = load i32, i32* @jisx0212_ucs_table_size, align 4
  %287 = icmp slt i32 %285, %286
  br i1 %287, label %288, label %294

288:                                              ; preds = %284
  %289 = load i32*, i32** @jisx0212_ucs_table, align 8
  %290 = load i32, i32* %6, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  %293 = load i32, i32* %292, align 4
  store i32 %293, i32* %7, align 4
  br label %295

294:                                              ; preds = %284, %275
  store i32 0, i32* %7, align 4
  br label %295

295:                                              ; preds = %294, %288
  %296 = load i32, i32* %7, align 4
  %297 = icmp sle i32 %296, 0
  br i1 %297, label %298, label %311

298:                                              ; preds = %295
  %299 = load i32, i32* %5, align 4
  %300 = and i32 %299, 127
  %301 = shl i32 %300, 8
  %302 = load i32, i32* %3, align 4
  %303 = and i32 %302, 127
  %304 = or i32 %301, %303
  store i32 %304, i32* %7, align 4
  %305 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %306 = load i32, i32* %7, align 4
  %307 = and i32 %306, %305
  store i32 %307, i32* %7, align 4
  %308 = load i32, i32* @MBFL_WCSPLANE_JIS0212, align 4
  %309 = load i32, i32* %7, align 4
  %310 = or i32 %309, %308
  store i32 %310, i32* %7, align 4
  br label %311

311:                                              ; preds = %298, %295
  %312 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %312, i32 0, i32 3
  %314 = load i32 (i32, i32)*, i32 (i32, i32)** %313, align 8
  %315 = load i32, i32* %7, align 4
  %316 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 8
  %319 = call i32 %314(i32 %315, i32 %318)
  %320 = call i32 @CK(i32 %319)
  br label %362

321:                                              ; preds = %272, %269, %266, %258
  %322 = load i32, i32* %3, align 4
  %323 = icmp sge i32 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %321
  %325 = load i32, i32* %3, align 4
  %326 = icmp slt i32 %325, 33
  br i1 %326, label %330, label %327

327:                                              ; preds = %324, %321
  %328 = load i32, i32* %3, align 4
  %329 = icmp eq i32 %328, 127
  br i1 %329, label %330, label %340

330:                                              ; preds = %327, %324
  %331 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %331, i32 0, i32 3
  %333 = load i32 (i32, i32)*, i32 (i32, i32)** %332, align 8
  %334 = load i32, i32* %3, align 4
  %335 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = call i32 %333(i32 %334, i32 %337)
  %339 = call i32 @CK(i32 %338)
  br label %361

340:                                              ; preds = %327
  %341 = load i32, i32* %5, align 4
  %342 = shl i32 %341, 8
  %343 = load i32, i32* %3, align 4
  %344 = or i32 %342, %343
  %345 = or i32 %344, 9371648
  store i32 %345, i32* %7, align 4
  %346 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %347 = load i32, i32* %7, align 4
  %348 = and i32 %347, %346
  store i32 %348, i32* %7, align 4
  %349 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %350 = load i32, i32* %7, align 4
  %351 = or i32 %350, %349
  store i32 %351, i32* %7, align 4
  %352 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %352, i32 0, i32 3
  %354 = load i32 (i32, i32)*, i32 (i32, i32)** %353, align 8
  %355 = load i32, i32* %7, align 4
  %356 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %357 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 8
  %359 = call i32 %354(i32 %355, i32 %358)
  %360 = call i32 @CK(i32 %359)
  br label %361

361:                                              ; preds = %340, %330
  br label %362

362:                                              ; preds = %361, %311
  br label %366

363:                                              ; preds = %2
  %364 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %365 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %364, i32 0, i32 0
  store i32 0, i32* %365, align 8
  br label %366

366:                                              ; preds = %363, %362, %257, %227, %168, %70
  %367 = load i32, i32* %3, align 4
  ret i32 %367
}

declare dso_local i32 @CK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

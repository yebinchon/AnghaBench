; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_localtime.c_pg_next_dst_boundary.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_localtime.c_pg_next_dst_boundary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.state }
%struct.state = type { i32, i32, i64*, i32*, %struct.ttinfo*, i64, i64 }
%struct.ttinfo = type { i32, i64 }

@YEARSPERREPEAT = common dso_local global i64 0, align 8
@AVGSECSPERYEAR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_next_dst_boundary(i64* %0, i64* %1, i32* %2, i64* %3, i64* %4, i32* %5, %struct.TYPE_3__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca %struct.state*, align 8
  %17 = alloca %struct.ttinfo*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i64* %0, i64** %9, align 8
  store i64* %1, i64** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %15, align 8
  %29 = load i64*, i64** %9, align 8
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %20, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store %struct.state* %32, %struct.state** %16, align 8
  %33 = load %struct.state*, %struct.state** %16, align 8
  %34 = getelementptr inbounds %struct.state, %struct.state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %72

37:                                               ; preds = %7
  store i32 0, i32* %18, align 4
  br label %38

38:                                               ; preds = %56, %37
  %39 = load %struct.state*, %struct.state** %16, align 8
  %40 = getelementptr inbounds %struct.state, %struct.state* %39, i32 0, i32 4
  %41 = load %struct.ttinfo*, %struct.ttinfo** %40, align 8
  %42 = load i32, i32* %18, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %41, i64 %43
  %45 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %38
  %49 = load i32, i32* %18, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %18, align 4
  %51 = load %struct.state*, %struct.state** %16, align 8
  %52 = getelementptr inbounds %struct.state, %struct.state* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp sge i32 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 0, i32* %18, align 4
  br label %57

56:                                               ; preds = %48
  br label %38

57:                                               ; preds = %55, %38
  %58 = load %struct.state*, %struct.state** %16, align 8
  %59 = getelementptr inbounds %struct.state, %struct.state* %58, i32 0, i32 4
  %60 = load %struct.ttinfo*, %struct.ttinfo** %59, align 8
  %61 = load i32, i32* %18, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %60, i64 %62
  store %struct.ttinfo* %63, %struct.ttinfo** %17, align 8
  %64 = load %struct.ttinfo*, %struct.ttinfo** %17, align 8
  %65 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** %10, align 8
  store i64 %66, i64* %67, align 8
  %68 = load %struct.ttinfo*, %struct.ttinfo** %17, align 8
  %69 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %11, align 8
  store i32 %70, i32* %71, align 4
  store i32 0, i32* %8, align 4
  br label %414

72:                                               ; preds = %7
  %73 = load %struct.state*, %struct.state** %16, align 8
  %74 = getelementptr inbounds %struct.state, %struct.state* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load i64, i64* %20, align 8
  %79 = load %struct.state*, %struct.state** %16, align 8
  %80 = getelementptr inbounds %struct.state, %struct.state* %79, i32 0, i32 2
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp slt i64 %78, %83
  br i1 %84, label %103, label %85

85:                                               ; preds = %77, %72
  %86 = load %struct.state*, %struct.state** %16, align 8
  %87 = getelementptr inbounds %struct.state, %struct.state* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %226

90:                                               ; preds = %85
  %91 = load i64, i64* %20, align 8
  %92 = load %struct.state*, %struct.state** %16, align 8
  %93 = getelementptr inbounds %struct.state, %struct.state* %92, i32 0, i32 2
  %94 = load i64*, i64** %93, align 8
  %95 = load %struct.state*, %struct.state** %16, align 8
  %96 = getelementptr inbounds %struct.state, %struct.state* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %94, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = icmp sgt i64 %91, %101
  br i1 %102, label %103, label %226

103:                                              ; preds = %90, %77
  %104 = load i64, i64* %20, align 8
  store i64 %104, i64* %21, align 8
  %105 = load i64, i64* %20, align 8
  %106 = load %struct.state*, %struct.state** %16, align 8
  %107 = getelementptr inbounds %struct.state, %struct.state* %106, i32 0, i32 2
  %108 = load i64*, i64** %107, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp slt i64 %105, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %103
  %113 = load %struct.state*, %struct.state** %16, align 8
  %114 = getelementptr inbounds %struct.state, %struct.state* %113, i32 0, i32 2
  %115 = load i64*, i64** %114, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %20, align 8
  %119 = sub nsw i64 %117, %118
  store i64 %119, i64* %22, align 8
  br label %133

120:                                              ; preds = %103
  %121 = load i64, i64* %20, align 8
  %122 = load %struct.state*, %struct.state** %16, align 8
  %123 = getelementptr inbounds %struct.state, %struct.state* %122, i32 0, i32 2
  %124 = load i64*, i64** %123, align 8
  %125 = load %struct.state*, %struct.state** %16, align 8
  %126 = getelementptr inbounds %struct.state, %struct.state* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sub nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %124, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = sub nsw i64 %121, %131
  store i64 %132, i64* %22, align 8
  br label %133

133:                                              ; preds = %120, %112
  %134 = load i64, i64* %22, align 8
  %135 = add nsw i64 %134, -1
  store i64 %135, i64* %22, align 8
  %136 = load i64, i64* %22, align 8
  %137 = load i64, i64* @YEARSPERREPEAT, align 8
  %138 = sdiv i64 %136, %137
  %139 = load i64, i64* @AVGSECSPERYEAR, align 8
  %140 = sdiv i64 %138, %139
  store i64 %140, i64* %23, align 8
  %141 = load i64, i64* %23, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %23, align 8
  %143 = load i64, i64* %23, align 8
  store i64 %143, i64* %24, align 8
  %144 = load i64, i64* %23, align 8
  %145 = load i64, i64* %24, align 8
  %146 = sub nsw i64 %144, %145
  %147 = icmp sge i64 %146, 1
  br i1 %147, label %153, label %148

148:                                              ; preds = %133
  %149 = load i64, i64* %24, align 8
  %150 = load i64, i64* %23, align 8
  %151 = sub nsw i64 %149, %150
  %152 = icmp sge i64 %151, 1
  br i1 %152, label %153, label %154

153:                                              ; preds = %148, %133
  store i32 -1, i32* %8, align 4
  br label %414

154:                                              ; preds = %148
  %155 = load i64, i64* %24, align 8
  store i64 %155, i64* %22, align 8
  %156 = load i64, i64* @YEARSPERREPEAT, align 8
  %157 = load i64, i64* %22, align 8
  %158 = mul nsw i64 %157, %156
  store i64 %158, i64* %22, align 8
  %159 = load i64, i64* @AVGSECSPERYEAR, align 8
  %160 = load i64, i64* %22, align 8
  %161 = mul nsw i64 %160, %159
  store i64 %161, i64* %22, align 8
  %162 = load i64, i64* %20, align 8
  %163 = load %struct.state*, %struct.state** %16, align 8
  %164 = getelementptr inbounds %struct.state, %struct.state* %163, i32 0, i32 2
  %165 = load i64*, i64** %164, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp slt i64 %162, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %154
  %170 = load i64, i64* %22, align 8
  %171 = load i64, i64* %21, align 8
  %172 = add nsw i64 %171, %170
  store i64 %172, i64* %21, align 8
  br label %177

173:                                              ; preds = %154
  %174 = load i64, i64* %22, align 8
  %175 = load i64, i64* %21, align 8
  %176 = sub nsw i64 %175, %174
  store i64 %176, i64* %21, align 8
  br label %177

177:                                              ; preds = %173, %169
  %178 = load i64, i64* %21, align 8
  %179 = load %struct.state*, %struct.state** %16, align 8
  %180 = getelementptr inbounds %struct.state, %struct.state* %179, i32 0, i32 2
  %181 = load i64*, i64** %180, align 8
  %182 = getelementptr inbounds i64, i64* %181, i64 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp slt i64 %178, %183
  br i1 %184, label %198, label %185

185:                                              ; preds = %177
  %186 = load i64, i64* %21, align 8
  %187 = load %struct.state*, %struct.state** %16, align 8
  %188 = getelementptr inbounds %struct.state, %struct.state* %187, i32 0, i32 2
  %189 = load i64*, i64** %188, align 8
  %190 = load %struct.state*, %struct.state** %16, align 8
  %191 = getelementptr inbounds %struct.state, %struct.state* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = sub nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i64, i64* %189, i64 %194
  %196 = load i64, i64* %195, align 8
  %197 = icmp sgt i64 %186, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %185, %177
  store i32 -1, i32* %8, align 4
  br label %414

199:                                              ; preds = %185
  %200 = load i64*, i64** %10, align 8
  %201 = load i32*, i32** %11, align 8
  %202 = load i64*, i64** %12, align 8
  %203 = load i64*, i64** %13, align 8
  %204 = load i32*, i32** %14, align 8
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %206 = call i32 @pg_next_dst_boundary(i64* %21, i64* %200, i32* %201, i64* %202, i64* %203, i32* %204, %struct.TYPE_3__* %205)
  store i32 %206, i32* %25, align 4
  %207 = load i64, i64* %20, align 8
  %208 = load %struct.state*, %struct.state** %16, align 8
  %209 = getelementptr inbounds %struct.state, %struct.state* %208, i32 0, i32 2
  %210 = load i64*, i64** %209, align 8
  %211 = getelementptr inbounds i64, i64* %210, i64 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp slt i64 %207, %212
  br i1 %213, label %214, label %219

214:                                              ; preds = %199
  %215 = load i64, i64* %22, align 8
  %216 = load i64*, i64** %12, align 8
  %217 = load i64, i64* %216, align 8
  %218 = sub nsw i64 %217, %215
  store i64 %218, i64* %216, align 8
  br label %224

219:                                              ; preds = %199
  %220 = load i64, i64* %22, align 8
  %221 = load i64*, i64** %12, align 8
  %222 = load i64, i64* %221, align 8
  %223 = add nsw i64 %222, %220
  store i64 %223, i64* %221, align 8
  br label %224

224:                                              ; preds = %219, %214
  %225 = load i32, i32* %25, align 4
  store i32 %225, i32* %8, align 4
  br label %414

226:                                              ; preds = %90, %85
  %227 = load i64, i64* %20, align 8
  %228 = load %struct.state*, %struct.state** %16, align 8
  %229 = getelementptr inbounds %struct.state, %struct.state* %228, i32 0, i32 2
  %230 = load i64*, i64** %229, align 8
  %231 = load %struct.state*, %struct.state** %16, align 8
  %232 = getelementptr inbounds %struct.state, %struct.state* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = sub nsw i32 %233, 1
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i64, i64* %230, i64 %235
  %237 = load i64, i64* %236, align 8
  %238 = icmp sge i64 %227, %237
  br i1 %238, label %239, label %264

239:                                              ; preds = %226
  %240 = load %struct.state*, %struct.state** %16, align 8
  %241 = getelementptr inbounds %struct.state, %struct.state* %240, i32 0, i32 3
  %242 = load i32*, i32** %241, align 8
  %243 = load %struct.state*, %struct.state** %16, align 8
  %244 = getelementptr inbounds %struct.state, %struct.state* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = sub nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %242, i64 %247
  %249 = load i32, i32* %248, align 4
  store i32 %249, i32* %18, align 4
  %250 = load %struct.state*, %struct.state** %16, align 8
  %251 = getelementptr inbounds %struct.state, %struct.state* %250, i32 0, i32 4
  %252 = load %struct.ttinfo*, %struct.ttinfo** %251, align 8
  %253 = load i32, i32* %18, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %252, i64 %254
  store %struct.ttinfo* %255, %struct.ttinfo** %17, align 8
  %256 = load %struct.ttinfo*, %struct.ttinfo** %17, align 8
  %257 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = load i64*, i64** %10, align 8
  store i64 %258, i64* %259, align 8
  %260 = load %struct.ttinfo*, %struct.ttinfo** %17, align 8
  %261 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32*, i32** %11, align 8
  store i32 %262, i32* %263, align 4
  store i32 0, i32* %8, align 4
  br label %414

264:                                              ; preds = %226
  %265 = load i64, i64* %20, align 8
  %266 = load %struct.state*, %struct.state** %16, align 8
  %267 = getelementptr inbounds %struct.state, %struct.state* %266, i32 0, i32 2
  %268 = load i64*, i64** %267, align 8
  %269 = getelementptr inbounds i64, i64* %268, i64 0
  %270 = load i64, i64* %269, align 8
  %271 = icmp slt i64 %265, %270
  br i1 %271, label %272, label %332

272:                                              ; preds = %264
  store i32 0, i32* %18, align 4
  br label %273

273:                                              ; preds = %291, %272
  %274 = load %struct.state*, %struct.state** %16, align 8
  %275 = getelementptr inbounds %struct.state, %struct.state* %274, i32 0, i32 4
  %276 = load %struct.ttinfo*, %struct.ttinfo** %275, align 8
  %277 = load i32, i32* %18, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %276, i64 %278
  %280 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %292

283:                                              ; preds = %273
  %284 = load i32, i32* %18, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %18, align 4
  %286 = load %struct.state*, %struct.state** %16, align 8
  %287 = getelementptr inbounds %struct.state, %struct.state* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = icmp sge i32 %285, %288
  br i1 %289, label %290, label %291

290:                                              ; preds = %283
  store i32 0, i32* %18, align 4
  br label %292

291:                                              ; preds = %283
  br label %273

292:                                              ; preds = %290, %273
  %293 = load %struct.state*, %struct.state** %16, align 8
  %294 = getelementptr inbounds %struct.state, %struct.state* %293, i32 0, i32 4
  %295 = load %struct.ttinfo*, %struct.ttinfo** %294, align 8
  %296 = load i32, i32* %18, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %295, i64 %297
  store %struct.ttinfo* %298, %struct.ttinfo** %17, align 8
  %299 = load %struct.ttinfo*, %struct.ttinfo** %17, align 8
  %300 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = load i64*, i64** %10, align 8
  store i64 %301, i64* %302, align 8
  %303 = load %struct.ttinfo*, %struct.ttinfo** %17, align 8
  %304 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load i32*, i32** %11, align 8
  store i32 %305, i32* %306, align 4
  %307 = load %struct.state*, %struct.state** %16, align 8
  %308 = getelementptr inbounds %struct.state, %struct.state* %307, i32 0, i32 2
  %309 = load i64*, i64** %308, align 8
  %310 = getelementptr inbounds i64, i64* %309, i64 0
  %311 = load i64, i64* %310, align 8
  %312 = load i64*, i64** %12, align 8
  store i64 %311, i64* %312, align 8
  %313 = load %struct.state*, %struct.state** %16, align 8
  %314 = getelementptr inbounds %struct.state, %struct.state* %313, i32 0, i32 3
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 0
  %317 = load i32, i32* %316, align 4
  store i32 %317, i32* %18, align 4
  %318 = load %struct.state*, %struct.state** %16, align 8
  %319 = getelementptr inbounds %struct.state, %struct.state* %318, i32 0, i32 4
  %320 = load %struct.ttinfo*, %struct.ttinfo** %319, align 8
  %321 = load i32, i32* %18, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %320, i64 %322
  store %struct.ttinfo* %323, %struct.ttinfo** %17, align 8
  %324 = load %struct.ttinfo*, %struct.ttinfo** %17, align 8
  %325 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %324, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  %327 = load i64*, i64** %13, align 8
  store i64 %326, i64* %327, align 8
  %328 = load %struct.ttinfo*, %struct.ttinfo** %17, align 8
  %329 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = load i32*, i32** %14, align 8
  store i32 %330, i32* %331, align 4
  store i32 1, i32* %8, align 4
  br label %414

332:                                              ; preds = %264
  store i32 1, i32* %26, align 4
  %333 = load %struct.state*, %struct.state** %16, align 8
  %334 = getelementptr inbounds %struct.state, %struct.state* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = sub nsw i32 %335, 1
  store i32 %336, i32* %27, align 4
  br label %337

337:                                              ; preds = %360, %332
  %338 = load i32, i32* %26, align 4
  %339 = load i32, i32* %27, align 4
  %340 = icmp slt i32 %338, %339
  br i1 %340, label %341, label %361

341:                                              ; preds = %337
  %342 = load i32, i32* %26, align 4
  %343 = load i32, i32* %27, align 4
  %344 = add nsw i32 %342, %343
  %345 = ashr i32 %344, 1
  store i32 %345, i32* %28, align 4
  %346 = load i64, i64* %20, align 8
  %347 = load %struct.state*, %struct.state** %16, align 8
  %348 = getelementptr inbounds %struct.state, %struct.state* %347, i32 0, i32 2
  %349 = load i64*, i64** %348, align 8
  %350 = load i32, i32* %28, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i64, i64* %349, i64 %351
  %353 = load i64, i64* %352, align 8
  %354 = icmp slt i64 %346, %353
  br i1 %354, label %355, label %357

355:                                              ; preds = %341
  %356 = load i32, i32* %28, align 4
  store i32 %356, i32* %27, align 4
  br label %360

357:                                              ; preds = %341
  %358 = load i32, i32* %28, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %26, align 4
  br label %360

360:                                              ; preds = %357, %355
  br label %337

361:                                              ; preds = %337
  %362 = load i32, i32* %26, align 4
  store i32 %362, i32* %18, align 4
  %363 = load %struct.state*, %struct.state** %16, align 8
  %364 = getelementptr inbounds %struct.state, %struct.state* %363, i32 0, i32 3
  %365 = load i32*, i32** %364, align 8
  %366 = load i32, i32* %18, align 4
  %367 = sub nsw i32 %366, 1
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %365, i64 %368
  %370 = load i32, i32* %369, align 4
  store i32 %370, i32* %19, align 4
  %371 = load %struct.state*, %struct.state** %16, align 8
  %372 = getelementptr inbounds %struct.state, %struct.state* %371, i32 0, i32 4
  %373 = load %struct.ttinfo*, %struct.ttinfo** %372, align 8
  %374 = load i32, i32* %19, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %373, i64 %375
  store %struct.ttinfo* %376, %struct.ttinfo** %17, align 8
  %377 = load %struct.ttinfo*, %struct.ttinfo** %17, align 8
  %378 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %377, i32 0, i32 1
  %379 = load i64, i64* %378, align 8
  %380 = load i64*, i64** %10, align 8
  store i64 %379, i64* %380, align 8
  %381 = load %struct.ttinfo*, %struct.ttinfo** %17, align 8
  %382 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = load i32*, i32** %11, align 8
  store i32 %383, i32* %384, align 4
  %385 = load %struct.state*, %struct.state** %16, align 8
  %386 = getelementptr inbounds %struct.state, %struct.state* %385, i32 0, i32 2
  %387 = load i64*, i64** %386, align 8
  %388 = load i32, i32* %18, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i64, i64* %387, i64 %389
  %391 = load i64, i64* %390, align 8
  %392 = load i64*, i64** %12, align 8
  store i64 %391, i64* %392, align 8
  %393 = load %struct.state*, %struct.state** %16, align 8
  %394 = getelementptr inbounds %struct.state, %struct.state* %393, i32 0, i32 3
  %395 = load i32*, i32** %394, align 8
  %396 = load i32, i32* %18, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %395, i64 %397
  %399 = load i32, i32* %398, align 4
  store i32 %399, i32* %19, align 4
  %400 = load %struct.state*, %struct.state** %16, align 8
  %401 = getelementptr inbounds %struct.state, %struct.state* %400, i32 0, i32 4
  %402 = load %struct.ttinfo*, %struct.ttinfo** %401, align 8
  %403 = load i32, i32* %19, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %402, i64 %404
  store %struct.ttinfo* %405, %struct.ttinfo** %17, align 8
  %406 = load %struct.ttinfo*, %struct.ttinfo** %17, align 8
  %407 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %406, i32 0, i32 1
  %408 = load i64, i64* %407, align 8
  %409 = load i64*, i64** %13, align 8
  store i64 %408, i64* %409, align 8
  %410 = load %struct.ttinfo*, %struct.ttinfo** %17, align 8
  %411 = getelementptr inbounds %struct.ttinfo, %struct.ttinfo* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 8
  %413 = load i32*, i32** %14, align 8
  store i32 %412, i32* %413, align 4
  store i32 1, i32* %8, align 4
  br label %414

414:                                              ; preds = %361, %292, %239, %224, %198, %153, %57
  %415 = load i32, i32* %8, align 4
  ret i32 %415
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

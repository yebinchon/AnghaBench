; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_misc1.c_get_lisp_indent.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_misc1.c_get_lisp_indent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }

@p_cpo = common dso_local global i32 0, align 4
@CPO_LISP = common dso_local global i32 0, align 4
@curwin = common dso_local global %struct.TYPE_7__* null, align 8
@NUL = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_lisp_indent() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca %struct.TYPE_6__, align 8
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = load i32, i32* @p_cpo, align 4
  %13 = load i32, i32* @CPO_LISP, align 4
  %14 = call i32* @vim_strchr(i32 %12, i32 %13)
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %10, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = bitcast %struct.TYPE_6__* %2 to i8*
  %20 = bitcast %struct.TYPE_6__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 16, i1 false)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = call %struct.TYPE_6__* @findmatch(i32* null, i8 signext 40)
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %1, align 8
  %25 = icmp eq %struct.TYPE_6__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %0
  %27 = call %struct.TYPE_6__* @findmatch(i32* null, i8 signext 91)
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %1, align 8
  br label %41

28:                                               ; preds = %0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %30 = bitcast %struct.TYPE_6__* %3 to i8*
  %31 = bitcast %struct.TYPE_6__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 16, i1 false)
  %32 = call %struct.TYPE_6__* @findmatch(i32* null, i8 signext 91)
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %1, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %34 = icmp eq %struct.TYPE_6__* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %28
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %37 = call i64 @ltp(%struct.TYPE_6__* %36, %struct.TYPE_6__* %3)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %28
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %1, align 8
  br label %40

40:                                               ; preds = %39, %35
  br label %41

41:                                               ; preds = %40, %26
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %43 = icmp ne %struct.TYPE_6__* %42, null
  br i1 %43, label %44, label %490

44:                                               ; preds = %41
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %198, %62, %44
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, -1
  store i64 %50, i64* %48, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %50, %53
  br i1 %54, label %55, label %199

55:                                               ; preds = %45
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @linewhite(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %45

63:                                               ; preds = %55
  %64 = call i8* (...) @ml_get_curline()
  store i8* %64, i8** %5, align 8
  br label %65

65:                                               ; preds = %190, %63
  %66 = load i8*, i8** %5, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = load i8, i8* @NUL, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %72, label %193

72:                                               ; preds = %65
  %73 = load i8*, i8** %5, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 59
  br i1 %76, label %77, label %90

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %86, %77
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = load i8, i8* @NUL, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %82, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = load i8*, i8** %5, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %5, align 8
  br label %78

89:                                               ; preds = %78
  br label %190

90:                                               ; preds = %72
  %91 = load i8*, i8** %5, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 92
  br i1 %94, label %95, label %107

95:                                               ; preds = %90
  %96 = load i8*, i8** %5, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = load i8, i8* @NUL, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %99, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = load i8*, i8** %5, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %5, align 8
  br label %106

106:                                              ; preds = %103, %95
  br label %190

107:                                              ; preds = %90
  %108 = load i8*, i8** %5, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 34
  br i1 %111, label %112, label %162

112:                                              ; preds = %107
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = load i8, i8* @NUL, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %116, %118
  br i1 %119, label %120, label %162

120:                                              ; preds = %112
  br label %121

121:                                              ; preds = %160, %120
  %122 = load i8*, i8** %5, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %5, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load i8*, i8** %5, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 34
  br label %132

132:                                              ; preds = %127, %121
  %133 = phi i1 [ false, %121 ], [ %131, %127 ]
  br i1 %133, label %134, label %161

134:                                              ; preds = %132
  %135 = load i8*, i8** %5, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 92
  br i1 %138, label %139, label %160

139:                                              ; preds = %134
  %140 = load i8*, i8** %5, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %5, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = load i8, i8* @NUL, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %143, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %139
  br label %161

148:                                              ; preds = %139
  %149 = load i8*, i8** %5, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = load i8, i8* @NUL, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %152, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %148
  %157 = load i8*, i8** %5, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %5, align 8
  br label %161

159:                                              ; preds = %148
  br label %160

160:                                              ; preds = %159, %134
  br label %121

161:                                              ; preds = %156, %147, %132
  br label %162

162:                                              ; preds = %161, %112, %107
  %163 = load i8*, i8** %5, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 40
  br i1 %166, label %172, label %167

167:                                              ; preds = %162
  %168 = load i8*, i8** %5, align 8
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 91
  br i1 %171, label %172, label %175

172:                                              ; preds = %167, %162
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %8, align 4
  br label %189

175:                                              ; preds = %167
  %176 = load i8*, i8** %5, align 8
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 41
  br i1 %179, label %185, label %180

180:                                              ; preds = %175
  %181 = load i8*, i8** %5, align 8
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp eq i32 %183, 93
  br i1 %184, label %185, label %188

185:                                              ; preds = %180, %175
  %186 = load i32, i32* %8, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %8, align 4
  br label %188

188:                                              ; preds = %185, %180
  br label %189

189:                                              ; preds = %188, %172
  br label %190

190:                                              ; preds = %189, %106, %89
  %191 = load i8*, i8** %5, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %5, align 8
  br label %65

193:                                              ; preds = %65
  %194 = load i32, i32* %8, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = call i32 (...) @get_indent()
  store i32 %197, i32* %4, align 4
  br label %199

198:                                              ; preds = %193
  br label %45

199:                                              ; preds = %196, %45
  %200 = load i32, i32* %4, align 4
  %201 = icmp eq i32 %200, -1
  br i1 %201, label %202, label %489

202:                                              ; preds = %199
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 1
  store i64 %205, i64* %208, align 8
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  store i32 %211, i32* %214, align 8
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  store i32 %217, i32* %6, align 4
  %218 = call i8* (...) @ml_get_curline()
  store i8* %218, i8** %5, align 8
  %219 = load i32, i32* %10, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %202
  %222 = call i32 (...) @get_indent()
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %221
  store i32 2, i32* %4, align 4
  br label %488

225:                                              ; preds = %221, %202
  %226 = load i8*, i8** %5, align 8
  store i8* %226, i8** %11, align 8
  store i32 0, i32* %4, align 4
  br label %227

227:                                              ; preds = %237, %225
  %228 = load i8*, i8** %5, align 8
  %229 = load i8, i8* %228, align 1
  %230 = sext i8 %229 to i32
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %227
  %233 = load i32, i32* %6, align 4
  %234 = icmp ne i32 %233, 0
  br label %235

235:                                              ; preds = %232, %227
  %236 = phi i1 [ false, %227 ], [ %234, %232 ]
  br i1 %236, label %237, label %247

237:                                              ; preds = %235
  %238 = load i8*, i8** %11, align 8
  %239 = load i32, i32* %4, align 4
  %240 = call i64 @lbr_chartabsize_adv(i8* %238, i8** %5, i32 %239)
  %241 = load i32, i32* %4, align 4
  %242 = sext i32 %241 to i64
  %243 = add nsw i64 %242, %240
  %244 = trunc i64 %243 to i32
  store i32 %244, i32* %4, align 4
  %245 = load i32, i32* %6, align 4
  %246 = add nsw i32 %245, -1
  store i32 %246, i32* %6, align 4
  br label %227

247:                                              ; preds = %235
  %248 = load i32, i32* %10, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %268, label %250

250:                                              ; preds = %247
  %251 = load i8*, i8** %5, align 8
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp eq i32 %253, 40
  br i1 %254, label %260, label %255

255:                                              ; preds = %250
  %256 = load i8*, i8** %5, align 8
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp eq i32 %258, 91
  br i1 %259, label %260, label %268

260:                                              ; preds = %255, %250
  %261 = load i8*, i8** %5, align 8
  %262 = getelementptr inbounds i8, i8* %261, i64 1
  %263 = call i64 @lisp_match(i8* %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %260
  %266 = load i32, i32* %4, align 4
  %267 = add nsw i32 %266, 2
  store i32 %267, i32* %4, align 4
  br label %487

268:                                              ; preds = %260, %255, %247
  %269 = load i8*, i8** %5, align 8
  %270 = getelementptr inbounds i8, i8* %269, i32 1
  store i8* %270, i8** %5, align 8
  %271 = load i32, i32* %4, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %4, align 4
  %273 = load i32, i32* %4, align 4
  store i32 %273, i32* %7, align 4
  br label %274

274:                                              ; preds = %279, %268
  %275 = load i8*, i8** %5, align 8
  %276 = load i8, i8* %275, align 1
  %277 = call i64 @vim_iswhite(i8 signext %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %290

279:                                              ; preds = %274
  %280 = load i8*, i8** %11, align 8
  %281 = load i8*, i8** %5, align 8
  %282 = load i32, i32* %4, align 4
  %283 = call i64 @lbr_chartabsize(i8* %280, i8* %281, i32 %282)
  %284 = load i32, i32* %4, align 4
  %285 = sext i32 %284 to i64
  %286 = add nsw i64 %285, %283
  %287 = trunc i64 %286 to i32
  store i32 %287, i32* %4, align 4
  %288 = load i8*, i8** %5, align 8
  %289 = getelementptr inbounds i8, i8* %288, i32 1
  store i8* %289, i8** %5, align 8
  br label %274

290:                                              ; preds = %274
  %291 = load i8*, i8** %5, align 8
  %292 = load i8, i8* %291, align 1
  %293 = sext i8 %292 to i32
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %486

295:                                              ; preds = %290
  %296 = load i8*, i8** %5, align 8
  %297 = load i8, i8* %296, align 1
  %298 = sext i8 %297 to i32
  %299 = icmp ne i32 %298, 59
  br i1 %299, label %300, label %486

300:                                              ; preds = %295
  %301 = load i32, i32* %10, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %316, label %303

303:                                              ; preds = %300
  %304 = load i8*, i8** %5, align 8
  %305 = load i8, i8* %304, align 1
  %306 = sext i8 %305 to i32
  %307 = icmp ne i32 %306, 40
  br i1 %307, label %308, label %316

308:                                              ; preds = %303
  %309 = load i8*, i8** %5, align 8
  %310 = load i8, i8* %309, align 1
  %311 = sext i8 %310 to i32
  %312 = icmp ne i32 %311, 91
  br i1 %312, label %313, label %316

313:                                              ; preds = %308
  %314 = load i32, i32* %7, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %7, align 4
  br label %316

316:                                              ; preds = %313, %308, %303, %300
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %317 = load i32, i32* %10, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %344, label %319

319:                                              ; preds = %316
  %320 = load i8*, i8** %5, align 8
  %321 = load i8, i8* %320, align 1
  %322 = sext i8 %321 to i32
  %323 = icmp ne i32 %322, 34
  br i1 %323, label %324, label %457

324:                                              ; preds = %319
  %325 = load i8*, i8** %5, align 8
  %326 = load i8, i8* %325, align 1
  %327 = sext i8 %326 to i32
  %328 = icmp ne i32 %327, 39
  br i1 %328, label %329, label %457

329:                                              ; preds = %324
  %330 = load i8*, i8** %5, align 8
  %331 = load i8, i8* %330, align 1
  %332 = sext i8 %331 to i32
  %333 = icmp ne i32 %332, 35
  br i1 %333, label %334, label %457

334:                                              ; preds = %329
  %335 = load i8*, i8** %5, align 8
  %336 = load i8, i8* %335, align 1
  %337 = sext i8 %336 to i32
  %338 = icmp slt i32 %337, 48
  br i1 %338, label %344, label %339

339:                                              ; preds = %334
  %340 = load i8*, i8** %5, align 8
  %341 = load i8, i8* %340, align 1
  %342 = sext i8 %341 to i32
  %343 = icmp sgt i32 %342, 57
  br i1 %343, label %344, label %457

344:                                              ; preds = %339, %334, %316
  br label %345

345:                                              ; preds = %448, %344
  %346 = load i8*, i8** %5, align 8
  %347 = load i8, i8* %346, align 1
  %348 = sext i8 %347 to i32
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %383

350:                                              ; preds = %345
  %351 = load i8*, i8** %5, align 8
  %352 = load i8, i8* %351, align 1
  %353 = call i64 @vim_iswhite(i8 signext %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %361

355:                                              ; preds = %350
  %356 = load i32, i32* %9, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %361, label %358

358:                                              ; preds = %355
  %359 = load i32, i32* %8, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %383

361:                                              ; preds = %358, %355, %350
  %362 = load i8*, i8** %5, align 8
  %363 = load i8, i8* %362, align 1
  %364 = sext i8 %363 to i32
  %365 = icmp eq i32 %364, 40
  br i1 %365, label %371, label %366

366:                                              ; preds = %361
  %367 = load i8*, i8** %5, align 8
  %368 = load i8, i8* %367, align 1
  %369 = sext i8 %368 to i32
  %370 = icmp eq i32 %369, 91
  br i1 %370, label %371, label %380

371:                                              ; preds = %366, %361
  %372 = load i32, i32* %9, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %380, label %374

374:                                              ; preds = %371
  %375 = load i32, i32* %8, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %380, label %377

377:                                              ; preds = %374
  %378 = load i32, i32* %10, align 4
  %379 = icmp ne i32 %378, 0
  br label %380

380:                                              ; preds = %377, %374, %371, %366
  %381 = phi i1 [ false, %374 ], [ false, %371 ], [ false, %366 ], [ %379, %377 ]
  %382 = xor i1 %381, true
  br label %383

383:                                              ; preds = %380, %358, %345
  %384 = phi i1 [ false, %358 ], [ false, %345 ], [ %382, %380 ]
  br i1 %384, label %385, label %456

385:                                              ; preds = %383
  %386 = load i8*, i8** %5, align 8
  %387 = load i8, i8* %386, align 1
  %388 = sext i8 %387 to i32
  %389 = icmp eq i32 %388, 34
  br i1 %389, label %390, label %395

390:                                              ; preds = %385
  %391 = load i32, i32* %9, align 4
  %392 = icmp ne i32 %391, 0
  %393 = xor i1 %392, true
  %394 = zext i1 %393 to i32
  store i32 %394, i32* %9, align 4
  br label %395

395:                                              ; preds = %390, %385
  %396 = load i8*, i8** %5, align 8
  %397 = load i8, i8* %396, align 1
  %398 = sext i8 %397 to i32
  %399 = icmp eq i32 %398, 40
  br i1 %399, label %405, label %400

400:                                              ; preds = %395
  %401 = load i8*, i8** %5, align 8
  %402 = load i8, i8* %401, align 1
  %403 = sext i8 %402 to i32
  %404 = icmp eq i32 %403, 91
  br i1 %404, label %405, label %411

405:                                              ; preds = %400, %395
  %406 = load i32, i32* %9, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %411, label %408

408:                                              ; preds = %405
  %409 = load i32, i32* %8, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %8, align 4
  br label %411

411:                                              ; preds = %408, %405, %400
  %412 = load i8*, i8** %5, align 8
  %413 = load i8, i8* %412, align 1
  %414 = sext i8 %413 to i32
  %415 = icmp eq i32 %414, 41
  br i1 %415, label %421, label %416

416:                                              ; preds = %411
  %417 = load i8*, i8** %5, align 8
  %418 = load i8, i8* %417, align 1
  %419 = sext i8 %418 to i32
  %420 = icmp eq i32 %419, 93
  br i1 %420, label %421, label %427

421:                                              ; preds = %416, %411
  %422 = load i32, i32* %9, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %427, label %424

424:                                              ; preds = %421
  %425 = load i32, i32* %8, align 4
  %426 = add nsw i32 %425, -1
  store i32 %426, i32* %8, align 4
  br label %427

427:                                              ; preds = %424, %421, %416
  %428 = load i8*, i8** %5, align 8
  %429 = load i8, i8* %428, align 1
  %430 = sext i8 %429 to i32
  %431 = icmp eq i32 %430, 92
  br i1 %431, label %432, label %448

432:                                              ; preds = %427
  %433 = load i8*, i8** %5, align 8
  %434 = getelementptr inbounds i8, i8* %433, i64 1
  %435 = load i8, i8* %434, align 1
  %436 = sext i8 %435 to i32
  %437 = load i8, i8* @NUL, align 1
  %438 = sext i8 %437 to i32
  %439 = icmp ne i32 %436, %438
  br i1 %439, label %440, label %448

440:                                              ; preds = %432
  %441 = load i8*, i8** %11, align 8
  %442 = load i32, i32* %4, align 4
  %443 = call i64 @lbr_chartabsize_adv(i8* %441, i8** %5, i32 %442)
  %444 = load i32, i32* %4, align 4
  %445 = sext i32 %444 to i64
  %446 = add nsw i64 %445, %443
  %447 = trunc i64 %446 to i32
  store i32 %447, i32* %4, align 4
  br label %448

448:                                              ; preds = %440, %432, %427
  %449 = load i8*, i8** %11, align 8
  %450 = load i32, i32* %4, align 4
  %451 = call i64 @lbr_chartabsize_adv(i8* %449, i8** %5, i32 %450)
  %452 = load i32, i32* %4, align 4
  %453 = sext i32 %452 to i64
  %454 = add nsw i64 %453, %451
  %455 = trunc i64 %454 to i32
  store i32 %455, i32* %4, align 4
  br label %345

456:                                              ; preds = %383
  br label %457

457:                                              ; preds = %456, %339, %329, %324, %319
  br label %458

458:                                              ; preds = %463, %457
  %459 = load i8*, i8** %5, align 8
  %460 = load i8, i8* %459, align 1
  %461 = call i64 @vim_iswhite(i8 signext %460)
  %462 = icmp ne i64 %461, 0
  br i1 %462, label %463, label %474

463:                                              ; preds = %458
  %464 = load i8*, i8** %11, align 8
  %465 = load i8*, i8** %5, align 8
  %466 = load i32, i32* %4, align 4
  %467 = call i64 @lbr_chartabsize(i8* %464, i8* %465, i32 %466)
  %468 = load i32, i32* %4, align 4
  %469 = sext i32 %468 to i64
  %470 = add nsw i64 %469, %467
  %471 = trunc i64 %470 to i32
  store i32 %471, i32* %4, align 4
  %472 = load i8*, i8** %5, align 8
  %473 = getelementptr inbounds i8, i8* %472, i32 1
  store i8* %473, i8** %5, align 8
  br label %458

474:                                              ; preds = %458
  %475 = load i8*, i8** %5, align 8
  %476 = load i8, i8* %475, align 1
  %477 = icmp ne i8 %476, 0
  br i1 %477, label %478, label %483

478:                                              ; preds = %474
  %479 = load i8*, i8** %5, align 8
  %480 = load i8, i8* %479, align 1
  %481 = sext i8 %480 to i32
  %482 = icmp eq i32 %481, 59
  br i1 %482, label %483, label %485

483:                                              ; preds = %478, %474
  %484 = load i32, i32* %7, align 4
  store i32 %484, i32* %4, align 4
  br label %485

485:                                              ; preds = %483, %478
  br label %486

486:                                              ; preds = %485, %295, %290
  br label %487

487:                                              ; preds = %486, %265
  br label %488

488:                                              ; preds = %487, %224
  br label %489

489:                                              ; preds = %488, %199
  br label %491

490:                                              ; preds = %41
  store i32 0, i32* %4, align 4
  br label %491

491:                                              ; preds = %490, %489
  %492 = load %struct.TYPE_7__*, %struct.TYPE_7__** @curwin, align 8
  %493 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %492, i32 0, i32 0
  %494 = bitcast %struct.TYPE_6__* %493 to i8*
  %495 = bitcast %struct.TYPE_6__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %494, i8* align 8 %495, i64 16, i1 false)
  %496 = load i32, i32* %4, align 4
  ret i32 %496
}

declare dso_local i32* @vim_strchr(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_6__* @findmatch(i32*, i8 signext) #1

declare dso_local i64 @ltp(%struct.TYPE_6__*, %struct.TYPE_6__*) #1

declare dso_local i64 @linewhite(i64) #1

declare dso_local i8* @ml_get_curline(...) #1

declare dso_local i32 @get_indent(...) #1

declare dso_local i64 @lbr_chartabsize_adv(i8*, i8**, i32) #1

declare dso_local i64 @lisp_match(i8*) #1

declare dso_local i64 @vim_iswhite(i8 signext) #1

declare dso_local i64 @lbr_chartabsize(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

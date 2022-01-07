; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/mode/extr_mode.c_wmain.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/mode/extr_mode.c_wmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@StdErr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i32] [i32 69, i32 82, i32 82, i32 79, i32 82, i32 58, i32 32, i32 78, i32 111, i32 116, i32 32, i32 101, i32 110, i32 111, i32 117, i32 103, i32 104, i32 32, i32 109, i32 101, i32 109, i32 111, i32 114, i32 121, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [3 x i32] [i32 47, i32 63, i32 0], align 4
@.str.2 = private unnamed_addr constant [3 x i32] [i32 45, i32 63, i32 0], align 4
@StdOut = common dso_local global i32 0, align 4
@IDS_USAGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i32] [i32 47, i32 83, i32 84, i32 65, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i32] [i32 76, i32 80, i32 84, i32 0], align 4
@.str.5 = private unnamed_addr constant [49 x i32] [i32 69, i32 82, i32 82, i32 79, i32 82, i32 58, i32 32, i32 76, i32 80, i32 84, i32 32, i32 112, i32 111, i32 114, i32 116, i32 32, i32 114, i32 101, i32 100, i32 105, i32 114, i32 101, i32 99, i32 116, i32 105, i32 111, i32 110, i32 32, i32 105, i32 115, i32 32, i32 110, i32 111, i32 116, i32 32, i32 105, i32 109, i32 112, i32 108, i32 101, i32 109, i32 101, i32 110, i32 116, i32 101, i32 100, i32 33, i32 10, i32 0], align 4
@.str.6 = private unnamed_addr constant [4 x i32] [i32 67, i32 79, i32 77, i32 0], align 4
@.str.7 = private unnamed_addr constant [4 x i32] [i32 67, i32 79, i32 78, i32 0], align 4
@.str.8 = private unnamed_addr constant [3 x i32] [i32 67, i32 80, i32 0], align 4
@.str.9 = private unnamed_addr constant [9 x i32] [i32 67, i32 79, i32 68, i32 69, i32 80, i32 65, i32 71, i32 69, i32 0], align 4
@IDS_ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmain(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = call i32 (...) @ConInitStdStreams()
  store i32 0, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %13

13:                                               ; preds = %29, %2
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = load i32**, i32*** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = call i64 @wcslen(i32* %22)
  %24 = add nsw i64 %23, 1
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %17
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %13

32:                                               ; preds = %13
  %33 = call i32 (...) @GetProcessHeap()
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call i32* @HeapAlloc(i32 %33, i32 0, i32 %38)
  store i32* %39, i32** %9, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i32, i32* @StdErr, align 4
  %44 = call i32 @ConPuts(i32 %43, i8* bitcast ([26 x i32]* @.str to i8*))
  store i32 1, i32* %3, align 4
  br label %303

45:                                               ; preds = %32
  %46 = load i32*, i32** %9, align 8
  store i32* %46, i32** %10, align 8
  store i32 1, i32* %7, align 4
  br label %47

47:                                               ; preds = %69, %45
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %47
  %52 = load i32*, i32** %10, align 8
  %53 = load i32**, i32*** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @wcscpy(i32* %52, i32* %57)
  %59 = load i32**, i32*** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = call i64 @wcslen(i32* %63)
  %65 = load i32*, i32** %10, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 %64
  store i32* %66, i32** %10, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %10, align 8
  store i32 32, i32* %67, align 4
  br label %69

69:                                               ; preds = %51
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %47

72:                                               ; preds = %47
  %73 = load i32*, i32** %10, align 8
  store i32 0, i32* %73, align 4
  %74 = load i32*, i32** %9, align 8
  store i32* %74, i32** %10, align 8
  br label %75

75:                                               ; preds = %79, %72
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 32
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32*, i32** %10, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %10, align 8
  br label %75

82:                                               ; preds = %75
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  br label %291

87:                                               ; preds = %82
  %88 = load i32*, i32** %10, align 8
  %89 = call i64 @wcsstr(i32* %88, i8* bitcast ([3 x i32]* @.str.1 to i8*))
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i32*, i32** %10, align 8
  %93 = call i64 @wcsstr(i32* %92, i8* bitcast ([3 x i32]* @.str.2 to i8*))
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %91, %87
  %96 = load i32, i32* @StdOut, align 4
  %97 = load i32, i32* @IDS_USAGE, align 4
  %98 = call i32 @ConResPuts(i32 %96, i32 %97)
  br label %298

99:                                               ; preds = %91
  %100 = load i32*, i32** %10, align 8
  %101 = call i64 @_wcsnicmp(i32* %100, i8* bitcast ([5 x i32]* @.str.3 to i8*), i32 4)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %125

103:                                              ; preds = %99
  br label %104

104:                                              ; preds = %108, %103
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 32
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32*, i32** %10, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %10, align 8
  br label %104

111:                                              ; preds = %104
  br label %112

112:                                              ; preds = %116, %111
  %113 = load i32*, i32** %10, align 8
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 32
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load i32*, i32** %10, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %10, align 8
  br label %112

119:                                              ; preds = %112
  %120 = load i32*, i32** %10, align 8
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  br label %293

124:                                              ; preds = %119
  br label %291

125:                                              ; preds = %99
  %126 = load i32*, i32** %10, align 8
  %127 = call i64 @_wcsnicmp(i32* %126, i8* bitcast ([4 x i32]* @.str.4 to i8*), i32 3)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %169

129:                                              ; preds = %125
  %130 = load i32*, i32** %10, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 3
  %132 = call i32* @FindPortNum(i32* %131, i32* %11)
  store i32* %132, i32** %10, align 8
  %133 = load i32*, i32** %10, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = load i32, i32* %11, align 4
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %138, label %139

138:                                              ; preds = %135, %129
  br label %293

139:                                              ; preds = %135
  %140 = load i32*, i32** %10, align 8
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 58
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load i32*, i32** %10, align 8
  %145 = getelementptr inbounds i32, i32* %144, i32 1
  store i32* %145, i32** %10, align 8
  br label %146

146:                                              ; preds = %143, %139
  br label %147

147:                                              ; preds = %151, %146
  %148 = load i32*, i32** %10, align 8
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 32
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i32*, i32** %10, align 8
  %153 = getelementptr inbounds i32, i32* %152, i32 1
  store i32* %153, i32** %10, align 8
  br label %147

154:                                              ; preds = %147
  %155 = load i32*, i32** %10, align 8
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = load i32*, i32** %10, align 8
  %160 = call i64 @_wcsnicmp(i32* %159, i8* bitcast ([5 x i32]* @.str.3 to i8*), i32 4)
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %158, %154
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @ShowParallelStatus(i32 %163)
  store i32 %164, i32* %6, align 4
  br label %168

165:                                              ; preds = %158
  %166 = load i32, i32* @StdErr, align 4
  %167 = call i32 @ConPuts(i32 %166, i8* bitcast ([49 x i32]* @.str.5 to i8*))
  br label %168

168:                                              ; preds = %165, %162
  br label %298

169:                                              ; preds = %125
  %170 = load i32*, i32** %10, align 8
  %171 = call i64 @_wcsnicmp(i32* %170, i8* bitcast ([4 x i32]* @.str.6 to i8*), i32 3)
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %214

173:                                              ; preds = %169
  %174 = load i32*, i32** %10, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 3
  %176 = call i32* @FindPortNum(i32* %175, i32* %11)
  store i32* %176, i32** %10, align 8
  %177 = load i32*, i32** %10, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %173
  %180 = load i32, i32* %11, align 4
  %181 = icmp eq i32 %180, -1
  br i1 %181, label %182, label %183

182:                                              ; preds = %179, %173
  br label %293

183:                                              ; preds = %179
  %184 = load i32*, i32** %10, align 8
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 58
  br i1 %186, label %187, label %190

187:                                              ; preds = %183
  %188 = load i32*, i32** %10, align 8
  %189 = getelementptr inbounds i32, i32* %188, i32 1
  store i32* %189, i32** %10, align 8
  br label %190

190:                                              ; preds = %187, %183
  br label %191

191:                                              ; preds = %195, %190
  %192 = load i32*, i32** %10, align 8
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %193, 32
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = load i32*, i32** %10, align 8
  %197 = getelementptr inbounds i32, i32* %196, i32 1
  store i32* %197, i32** %10, align 8
  br label %191

198:                                              ; preds = %191
  %199 = load i32*, i32** %10, align 8
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %198
  %203 = load i32*, i32** %10, align 8
  %204 = call i64 @_wcsnicmp(i32* %203, i8* bitcast ([5 x i32]* @.str.3 to i8*), i32 4)
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %202, %198
  %207 = load i32, i32* %11, align 4
  %208 = call i32 @ShowSerialStatus(i32 %207)
  store i32 %208, i32* %6, align 4
  br label %213

209:                                              ; preds = %202
  %210 = load i32, i32* %11, align 4
  %211 = load i32*, i32** %10, align 8
  %212 = call i32 @SetSerialState(i32 %210, i32* %211)
  store i32 %212, i32* %6, align 4
  br label %213

213:                                              ; preds = %209, %206
  br label %298

214:                                              ; preds = %169
  %215 = load i32*, i32** %10, align 8
  %216 = call i64 @_wcsnicmp(i32* %215, i8* bitcast ([4 x i32]* @.str.7 to i8*), i32 3)
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %218, label %288

218:                                              ; preds = %214
  %219 = load i32*, i32** %10, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 3
  store i32* %220, i32** %10, align 8
  %221 = load i32*, i32** %10, align 8
  %222 = load i32, i32* %221, align 4
  %223 = icmp eq i32 %222, 58
  br i1 %223, label %224, label %227

224:                                              ; preds = %218
  %225 = load i32*, i32** %10, align 8
  %226 = getelementptr inbounds i32, i32* %225, i32 1
  store i32* %226, i32** %10, align 8
  br label %227

227:                                              ; preds = %224, %218
  br label %228

228:                                              ; preds = %232, %227
  %229 = load i32*, i32** %10, align 8
  %230 = load i32, i32* %229, align 4
  %231 = icmp eq i32 %230, 32
  br i1 %231, label %232, label %235

232:                                              ; preds = %228
  %233 = load i32*, i32** %10, align 8
  %234 = getelementptr inbounds i32, i32* %233, i32 1
  store i32* %234, i32** %10, align 8
  br label %228

235:                                              ; preds = %228
  %236 = load i32*, i32** %10, align 8
  %237 = load i32, i32* %236, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %235
  %240 = load i32*, i32** %10, align 8
  %241 = call i64 @_wcsnicmp(i32* %240, i8* bitcast ([5 x i32]* @.str.3 to i8*), i32 4)
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %239, %235
  %244 = call i32 (...) @ShowConsoleStatus()
  store i32 %244, i32* %6, align 4
  br label %287

245:                                              ; preds = %239
  %246 = load i32*, i32** %10, align 8
  %247 = call i64 @_wcsnicmp(i32* %246, i8* bitcast ([3 x i32]* @.str.8 to i8*), i32 2)
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %245
  %250 = load i32*, i32** %10, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 2
  store i32* %251, i32** %10, align 8
  %252 = icmp ne i32* %251, null
  br i1 %252, label %261, label %253

253:                                              ; preds = %249, %245
  %254 = load i32*, i32** %10, align 8
  %255 = call i64 @_wcsnicmp(i32* %254, i8* bitcast ([9 x i32]* @.str.9 to i8*), i32 8)
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %257, label %283

257:                                              ; preds = %253
  %258 = load i32*, i32** %10, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 8
  store i32* %259, i32** %10, align 8
  %260 = icmp ne i32* %259, null
  br i1 %260, label %261, label %283

261:                                              ; preds = %257, %249
  br label %262

262:                                              ; preds = %266, %261
  %263 = load i32*, i32** %10, align 8
  %264 = load i32, i32* %263, align 4
  %265 = icmp eq i32 %264, 32
  br i1 %265, label %266, label %269

266:                                              ; preds = %262
  %267 = load i32*, i32** %10, align 8
  %268 = getelementptr inbounds i32, i32* %267, i32 1
  store i32* %268, i32** %10, align 8
  br label %262

269:                                              ; preds = %262
  %270 = load i32*, i32** %10, align 8
  %271 = load i32, i32* %270, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %269
  %274 = load i32*, i32** %10, align 8
  %275 = call i64 @_wcsnicmp(i32* %274, i8* bitcast ([5 x i32]* @.str.3 to i8*), i32 4)
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %273, %269
  %278 = call i32 (...) @ShowConsoleCPStatus()
  store i32 %278, i32* %6, align 4
  br label %282

279:                                              ; preds = %273
  %280 = load i32*, i32** %10, align 8
  %281 = call i32 @SetConsoleCPState(i32* %280)
  store i32 %281, i32* %6, align 4
  br label %282

282:                                              ; preds = %279, %277
  br label %286

283:                                              ; preds = %257, %253
  %284 = load i32*, i32** %10, align 8
  %285 = call i32 @SetConsoleState(i32* %284)
  store i32 %285, i32* %6, align 4
  br label %286

286:                                              ; preds = %283, %282
  br label %287

287:                                              ; preds = %286, %243
  br label %298

288:                                              ; preds = %214
  %289 = load i32*, i32** %10, align 8
  %290 = call i32 @SetConsoleStateOld(i32* %289)
  store i32 %290, i32* %6, align 4
  br label %298

291:                                              ; preds = %124, %86
  %292 = call i32 (...) @EnumerateDevices()
  br label %298

293:                                              ; preds = %182, %138, %123
  %294 = load i32, i32* @StdErr, align 4
  %295 = load i32, i32* @IDS_ERROR_INVALID_PARAMETER, align 4
  %296 = load i32*, i32** %9, align 8
  %297 = call i32 @ConResPrintf(i32 %294, i32 %295, i32* %296)
  br label %298

298:                                              ; preds = %293, %291, %288, %287, %213, %168, %95
  %299 = call i32 (...) @GetProcessHeap()
  %300 = load i32*, i32** %9, align 8
  %301 = call i32 @HeapFree(i32 %299, i32 0, i32* %300)
  %302 = load i32, i32* %6, align 4
  store i32 %302, i32* %3, align 4
  br label %303

303:                                              ; preds = %298, %42
  %304 = load i32, i32* %3, align 4
  ret i32 %304
}

declare dso_local i32 @ConInitStdStreams(...) #1

declare dso_local i64 @wcslen(i32*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ConPuts(i32, i8*) #1

declare dso_local i32 @wcscpy(i32*, i32*) #1

declare dso_local i64 @wcsstr(i32*, i8*) #1

declare dso_local i32 @ConResPuts(i32, i32) #1

declare dso_local i64 @_wcsnicmp(i32*, i8*, i32) #1

declare dso_local i32* @FindPortNum(i32*, i32*) #1

declare dso_local i32 @ShowParallelStatus(i32) #1

declare dso_local i32 @ShowSerialStatus(i32) #1

declare dso_local i32 @SetSerialState(i32, i32*) #1

declare dso_local i32 @ShowConsoleStatus(...) #1

declare dso_local i32 @ShowConsoleCPStatus(...) #1

declare dso_local i32 @SetConsoleCPState(i32*) #1

declare dso_local i32 @SetConsoleState(i32*) #1

declare dso_local i32 @SetConsoleStateOld(i32*) #1

declare dso_local i32 @EnumerateDevices(...) #1

declare dso_local i32 @ConResPrintf(i32, i32, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

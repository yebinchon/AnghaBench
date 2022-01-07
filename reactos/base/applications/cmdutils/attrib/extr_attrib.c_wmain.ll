; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/attrib/extr_attrib.c_wmain.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/attrib/extr_attrib.c_wmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i32] [i32 47, i32 63, i32 0], align 4
@StdOut = common dso_local global i32 0, align 4
@STRING_ATTRIB_HELP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i32] [i32 47, i32 115, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i32] [i32 47, i32 100, i32 0], align 4
@StdErr = common dso_local global i32 0, align 4
@STRING_ERROR_INVALID_PARAM_FORMAT = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_ARCHIVE = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_HIDDEN = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_READONLY = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_SYSTEM = common dso_local global i32 0, align 4
@UNICODE_NULL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i32] [i32 42, i32 46, i32 42, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmain(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %21 = load i32, i32* @MAX_PATH, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %26 = call i32 (...) @ConInitStdStreams()
  %27 = load i32, i32* %4, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %39

29:                                               ; preds = %2
  %30 = load i32**, i32*** %5, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @wcscmp(i32* %32, i8* bitcast ([3 x i32]* @.str to i8*))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* @StdOut, align 4
  %37 = load i32, i32* @STRING_ATTRIB_HELP, align 4
  %38 = call i32 @ConResPuts(i32 %36, i32 %37)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %311

39:                                               ; preds = %29, %2
  store i32 1, i32* %6, align 4
  br label %40

40:                                               ; preds = %66, %39
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %69

44:                                               ; preds = %40
  %45 = load i32**, i32*** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = call i64 @wcsicmp(i32* %49, i8* bitcast ([3 x i32]* @.str.1 to i8*))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %10, align 4
  br label %65

54:                                               ; preds = %44
  %55 = load i32**, i32*** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = call i64 @wcsicmp(i32* %59, i8* bitcast ([3 x i32]* @.str.2 to i8*))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* @TRUE, align 4
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %62, %54
  br label %65

65:                                               ; preds = %64, %52
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %40

69:                                               ; preds = %40
  store i32 1, i32* %6, align 4
  br label %70

70:                                               ; preds = %224, %69
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %227

74:                                               ; preds = %70
  %75 = load i32**, i32*** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 43
  br i1 %81, label %82, label %146

82:                                               ; preds = %74
  %83 = load i32**, i32*** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @wcslen(i32* %87)
  %89 = icmp ne i32 %88, 2
  br i1 %89, label %90, label %99

90:                                               ; preds = %82
  %91 = load i32, i32* @StdErr, align 4
  %92 = load i32, i32* @STRING_ERROR_INVALID_PARAM_FORMAT, align 4
  %93 = load i32**, i32*** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %93, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @ConResPrintf(i32 %91, i32 %92, i32* %97)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %311

99:                                               ; preds = %82
  %100 = load i32**, i32*** %5, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @towupper(i32 %106)
  switch i32 %107, label %136 [
    i32 65, label %108
    i32 72, label %115
    i32 82, label %122
    i32 83, label %129
  ]

108:                                              ; preds = %99
  %109 = load i32, i32* @FILE_ATTRIBUTE_ARCHIVE, align 4
  %110 = load i32, i32* %13, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* @FILE_ATTRIBUTE_ARCHIVE, align 4
  %113 = load i32, i32* %12, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %12, align 4
  br label %145

115:                                              ; preds = %99
  %116 = load i32, i32* @FILE_ATTRIBUTE_HIDDEN, align 4
  %117 = load i32, i32* %13, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* @FILE_ATTRIBUTE_HIDDEN, align 4
  %120 = load i32, i32* %12, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %12, align 4
  br label %145

122:                                              ; preds = %99
  %123 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %124 = load i32, i32* %13, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %127 = load i32, i32* %12, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %12, align 4
  br label %145

129:                                              ; preds = %99
  %130 = load i32, i32* @FILE_ATTRIBUTE_SYSTEM, align 4
  %131 = load i32, i32* %13, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* @FILE_ATTRIBUTE_SYSTEM, align 4
  %134 = load i32, i32* %12, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %12, align 4
  br label %145

136:                                              ; preds = %99
  %137 = load i32, i32* @StdErr, align 4
  %138 = load i32, i32* @STRING_ERROR_INVALID_PARAM_FORMAT, align 4
  %139 = load i32**, i32*** %5, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32*, i32** %139, i64 %141
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @ConResPrintf(i32 %137, i32 %138, i32* %143)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %311

145:                                              ; preds = %129, %122, %115, %108
  br label %223

146:                                              ; preds = %74
  %147 = load i32**, i32*** %5, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32*, i32** %147, i64 %149
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 45
  br i1 %153, label %154, label %222

154:                                              ; preds = %146
  %155 = load i32**, i32*** %5, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32*, i32** %155, i64 %157
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @wcslen(i32* %159)
  %161 = icmp ne i32 %160, 2
  br i1 %161, label %162, label %171

162:                                              ; preds = %154
  %163 = load i32, i32* @StdErr, align 4
  %164 = load i32, i32* @STRING_ERROR_INVALID_PARAM_FORMAT, align 4
  %165 = load i32**, i32*** %5, align 8
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32*, i32** %165, i64 %167
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @ConResPrintf(i32 %163, i32 %164, i32* %169)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %311

171:                                              ; preds = %154
  %172 = load i32**, i32*** %5, align 8
  %173 = load i32, i32* %6, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32*, i32** %172, i64 %174
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @towupper(i32 %178)
  switch i32 %179, label %212 [
    i32 65, label %180
    i32 72, label %188
    i32 82, label %196
    i32 83, label %204
  ]

180:                                              ; preds = %171
  %181 = load i32, i32* @FILE_ATTRIBUTE_ARCHIVE, align 4
  %182 = load i32, i32* %13, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %13, align 4
  %184 = load i32, i32* @FILE_ATTRIBUTE_ARCHIVE, align 4
  %185 = xor i32 %184, -1
  %186 = load i32, i32* %12, align 4
  %187 = and i32 %186, %185
  store i32 %187, i32* %12, align 4
  br label %221

188:                                              ; preds = %171
  %189 = load i32, i32* @FILE_ATTRIBUTE_HIDDEN, align 4
  %190 = load i32, i32* %13, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %13, align 4
  %192 = load i32, i32* @FILE_ATTRIBUTE_HIDDEN, align 4
  %193 = xor i32 %192, -1
  %194 = load i32, i32* %12, align 4
  %195 = and i32 %194, %193
  store i32 %195, i32* %12, align 4
  br label %221

196:                                              ; preds = %171
  %197 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %198 = load i32, i32* %13, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %13, align 4
  %200 = load i32, i32* @FILE_ATTRIBUTE_READONLY, align 4
  %201 = xor i32 %200, -1
  %202 = load i32, i32* %12, align 4
  %203 = and i32 %202, %201
  store i32 %203, i32* %12, align 4
  br label %221

204:                                              ; preds = %171
  %205 = load i32, i32* @FILE_ATTRIBUTE_SYSTEM, align 4
  %206 = load i32, i32* %13, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %13, align 4
  %208 = load i32, i32* @FILE_ATTRIBUTE_SYSTEM, align 4
  %209 = xor i32 %208, -1
  %210 = load i32, i32* %12, align 4
  %211 = and i32 %210, %209
  store i32 %211, i32* %12, align 4
  br label %221

212:                                              ; preds = %171
  %213 = load i32, i32* @StdErr, align 4
  %214 = load i32, i32* @STRING_ERROR_INVALID_PARAM_FORMAT, align 4
  %215 = load i32**, i32*** %5, align 8
  %216 = load i32, i32* %6, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32*, i32** %215, i64 %217
  %219 = load i32*, i32** %218, align 8
  %220 = call i32 @ConResPrintf(i32 %213, i32 %214, i32* %219)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %311

221:                                              ; preds = %204, %196, %188, %180
  br label %222

222:                                              ; preds = %221, %146
  br label %223

223:                                              ; preds = %222, %145
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %6, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %6, align 4
  br label %70

227:                                              ; preds = %70
  %228 = load i32, i32* %4, align 4
  %229 = icmp eq i32 %228, 1
  br i1 %229, label %230, label %252

230:                                              ; preds = %227
  %231 = load i32, i32* @MAX_PATH, align 4
  %232 = call i32 @GetCurrentDirectory(i32 %231, i32* %20)
  store i32 %232, i32* %15, align 4
  %233 = load i32, i32* %15, align 4
  %234 = sub nsw i32 %233, 1
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %20, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = icmp ne i32 %237, 92
  br i1 %238, label %239, label %248

239:                                              ; preds = %230
  %240 = load i32, i32* %15, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %20, i64 %241
  store i32 92, i32* %242, align 4
  %243 = load i32, i32* @UNICODE_NULL, align 4
  %244 = load i32, i32* %15, align 4
  %245 = add nsw i32 %244, 1
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %20, i64 %246
  store i32 %243, i32* %247, align 4
  br label %248

248:                                              ; preds = %239, %230
  %249 = call i32 @wcscpy(i32* %23, i8* bitcast ([4 x i32]* @.str.3 to i8*))
  %250 = load i32, i32* %10, align 4
  %251 = call i32 @PrintAttribute(i32* %20, i32* %23, i32 %250)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %311

252:                                              ; preds = %227
  store i32 1, i32* %6, align 4
  br label %253

253:                                              ; preds = %307, %252
  %254 = load i32, i32* %6, align 4
  %255 = load i32, i32* %4, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %310

257:                                              ; preds = %253
  %258 = load i32**, i32*** %5, align 8
  %259 = load i32, i32* %6, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32*, i32** %258, i64 %260
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* %262, align 4
  %264 = icmp ne i32 %263, 43
  br i1 %264, label %265, label %306

265:                                              ; preds = %257
  %266 = load i32**, i32*** %5, align 8
  %267 = load i32, i32* %6, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32*, i32** %266, i64 %268
  %270 = load i32*, i32** %269, align 8
  %271 = load i32, i32* %270, align 4
  %272 = icmp ne i32 %271, 45
  br i1 %272, label %273, label %306

273:                                              ; preds = %265
  %274 = load i32**, i32*** %5, align 8
  %275 = load i32, i32* %6, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32*, i32** %274, i64 %276
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %278, align 4
  %280 = icmp ne i32 %279, 47
  br i1 %280, label %281, label %306

281:                                              ; preds = %273
  %282 = load i32**, i32*** %5, align 8
  %283 = load i32, i32* %6, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32*, i32** %282, i64 %284
  %286 = load i32*, i32** %285, align 8
  %287 = load i32, i32* @MAX_PATH, align 4
  %288 = call i32 @GetFullPathName(i32* %286, i32 %287, i32* %20, i32* null)
  %289 = call i8* @wcsrchr(i32* %20, i32 92)
  %290 = getelementptr inbounds i8, i8* %289, i64 1
  store i8* %290, i8** %16, align 8
  %291 = load i8*, i8** %16, align 8
  %292 = call i32 @wcscpy(i32* %23, i8* %291)
  %293 = load i8*, i8** %16, align 8
  store i8 0, i8* %293, align 1
  %294 = load i32, i32* %13, align 4
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %281
  %297 = load i32, i32* %10, align 4
  %298 = call i32 @PrintAttribute(i32* %20, i32* %23, i32 %297)
  br label %305

299:                                              ; preds = %281
  %300 = load i32, i32* %13, align 4
  %301 = load i32, i32* %12, align 4
  %302 = load i32, i32* %10, align 4
  %303 = load i32, i32* %11, align 4
  %304 = call i32 @ChangeAttribute(i32* %20, i32* %23, i32 %300, i32 %301, i32 %302, i32 %303)
  br label %305

305:                                              ; preds = %299, %296
  br label %306

306:                                              ; preds = %305, %273, %265, %257
  br label %307

307:                                              ; preds = %306
  %308 = load i32, i32* %6, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %6, align 4
  br label %253

310:                                              ; preds = %253
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %311

311:                                              ; preds = %310, %248, %212, %162, %136, %90, %35
  %312 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %312)
  %313 = load i32, i32* %3, align 4
  ret i32 %313
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ConInitStdStreams(...) #2

declare dso_local i64 @wcscmp(i32*, i8*) #2

declare dso_local i32 @ConResPuts(i32, i32) #2

declare dso_local i64 @wcsicmp(i32*, i8*) #2

declare dso_local i32 @wcslen(i32*) #2

declare dso_local i32 @ConResPrintf(i32, i32, i32*) #2

declare dso_local i32 @towupper(i32) #2

declare dso_local i32 @GetCurrentDirectory(i32, i32*) #2

declare dso_local i32 @wcscpy(i32*, i8*) #2

declare dso_local i32 @PrintAttribute(i32*, i32*, i32) #2

declare dso_local i32 @GetFullPathName(i32*, i32, i32*, i32*) #2

declare dso_local i8* @wcsrchr(i32*, i32) #2

declare dso_local i32 @ChangeAttribute(i32*, i32*, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

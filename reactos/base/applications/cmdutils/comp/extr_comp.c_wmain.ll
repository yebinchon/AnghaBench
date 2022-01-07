; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/comp/extr_comp.c_wmain.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/comp/extr_comp.c_wmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@StdOut = common dso_local global i32 0, align 4
@IDS_HELP = common dso_local global i32 0, align 4
@StdErr = common dso_local global i32 0, align 4
@IDS_INVALIDSWITCH = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@IDS_BADSYNTAX = common dso_local global i32 0, align 4
@STRBUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i32] [i32 67, i32 97, i32 110, i32 39, i32 116, i32 32, i32 103, i32 101, i32 116, i32 32, i32 102, i32 114, i32 101, i32 101, i32 32, i32 109, i32 101, i32 109, i32 111, i32 114, i32 121, i32 32, i32 102, i32 111, i32 114, i32 32, i32 66, i32 117, i32 102, i32 102, i32 49, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [33 x i32] [i32 67, i32 97, i32 110, i32 39, i32 116, i32 32, i32 103, i32 101, i32 116, i32 32, i32 102, i32 114, i32 101, i32 101, i32 32, i32 109, i32 101, i32 109, i32 111, i32 114, i32 121, i32 32, i32 102, i32 111, i32 114, i32 32, i32 66, i32 117, i32 102, i32 102, i32 50, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [3 x i32] [i32 114, i32 98, i32 0], align 4
@IDS_FILEERROR = common dso_local global i32 0, align 4
@IDS_COMPARING = common dso_local global i32 0, align 4
@IDS_FILESIZEERROR = common dso_local global i32 0, align 4
@IDS_SIZEDIFFERS = common dso_local global i32 0, align 4
@IDS_READERROR = common dso_local global i32 0, align 4
@IDS_MISMATCHLINE = common dso_local global i32 0, align 4
@IDS_MISMATCHOFFSET = common dso_local global i32 0, align 4
@IDS_ASCIIDIFF = common dso_local global i32 0, align 4
@IDS_HEXADECIMALDIFF = common dso_local global i32 0, align 4
@IDS_MATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmain(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %26 = load i32, i32* @_MAX_PATH, align 4
  %27 = add nsw i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %13, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %14, align 8
  %31 = load i32, i32* @_MAX_PATH, align 4
  %32 = add nsw i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %15, align 8
  %35 = load i64, i64* @FALSE, align 8
  store i64 %35, i64* %16, align 8
  %36 = load i64, i64* @FALSE, align 8
  store i64 %36, i64* %17, align 8
  store i32 0, i32* %22, align 4
  store i32 1, i32* %23, align 4
  %37 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %37, i32* %24, align 4
  %38 = call i32 (...) @ConInitStdStreams()
  store i32 1, i32* %6, align 4
  br label %39

39:                                               ; preds = %91, %2
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %94

43:                                               ; preds = %39
  %44 = load i32**, i32*** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 47
  br i1 %51, label %52, label %90

52:                                               ; preds = %43
  %53 = load i32**, i32*** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @towlower(i32 %59)
  switch i32 %60, label %74 [
    i32 97, label %61
    i32 108, label %65
    i32 63, label %69
  ]

61:                                               ; preds = %52
  %62 = load i64, i64* @TRUE, align 8
  store i64 %62, i64* %16, align 8
  %63 = load i32, i32* %22, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %22, align 4
  br label %89

65:                                               ; preds = %52
  %66 = load i64, i64* @TRUE, align 8
  store i64 %66, i64* %17, align 8
  %67 = load i32, i32* %22, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %22, align 4
  br label %89

69:                                               ; preds = %52
  %70 = load i32, i32* @StdOut, align 4
  %71 = load i32, i32* @IDS_HELP, align 4
  %72 = call i32 @ConResPuts(i32 %70, i32 %71)
  %73 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %73, i32* %3, align 4
  store i32 1, i32* %25, align 4
  br label %348

74:                                               ; preds = %52
  %75 = load i32, i32* @StdErr, align 4
  %76 = load i32, i32* @IDS_INVALIDSWITCH, align 4
  %77 = load i32**, i32*** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i32, i32, ...) @ConResPrintf(i32 %75, i32 %76, i32 %83)
  %85 = load i32, i32* @StdOut, align 4
  %86 = load i32, i32* @IDS_HELP, align 4
  %87 = call i32 @ConResPuts(i32 %85, i32 %86)
  %88 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %88, i32* %3, align 4
  store i32 1, i32* %25, align 4
  br label %348

89:                                               ; preds = %65, %61
  br label %90

90:                                               ; preds = %89, %43
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %39

94:                                               ; preds = %39
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* %22, align 4
  %97 = sub nsw i32 %95, %96
  %98 = icmp eq i32 %97, 3
  br i1 %98, label %99, label %116

99:                                               ; preds = %94
  %100 = load i32**, i32*** %5, align 8
  %101 = load i32, i32* %22, align 4
  %102 = add nsw i32 1, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32*, i32** %100, i64 %103
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* @_MAX_PATH, align 4
  %107 = call i32 @wcsncpy(i32* %30, i32* %105, i32 %106)
  %108 = load i32**, i32*** %5, align 8
  %109 = load i32, i32* %22, align 4
  %110 = add nsw i32 2, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32*, i32** %108, i64 %111
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* @_MAX_PATH, align 4
  %115 = call i32 @wcsncpy(i32* %34, i32* %113, i32 %114)
  br label %121

116:                                              ; preds = %94
  %117 = load i32, i32* @StdErr, align 4
  %118 = load i32, i32* @IDS_BADSYNTAX, align 4
  %119 = call i32 @ConResPuts(i32 %117, i32 %118)
  %120 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %120, i32* %3, align 4
  store i32 1, i32* %25, align 4
  br label %348

121:                                              ; preds = %99
  %122 = load i32, i32* @STRBUF, align 4
  %123 = call i64 @malloc(i32 %122)
  %124 = inttoptr i64 %123 to i8*
  store i8* %124, i8** %11, align 8
  %125 = load i8*, i8** %11, align 8
  %126 = icmp eq i8* %125, null
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = load i32, i32* @StdErr, align 4
  %129 = call i32 @ConPuts(i32 %128, i8* bitcast ([33 x i32]* @.str to i8*))
  %130 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %130, i32* %24, align 4
  br label %322

131:                                              ; preds = %121
  %132 = load i32, i32* @STRBUF, align 4
  %133 = call i64 @malloc(i32 %132)
  %134 = inttoptr i64 %133 to i8*
  store i8* %134, i8** %12, align 8
  %135 = load i8*, i8** %12, align 8
  %136 = icmp eq i8* %135, null
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load i32, i32* @StdErr, align 4
  %139 = call i32 @ConPuts(i32 %138, i8* bitcast ([33 x i32]* @.str.1 to i8*))
  %140 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %140, i32* %24, align 4
  br label %322

141:                                              ; preds = %131
  %142 = call i32* @_wfopen(i32* %30, i8* bitcast ([3 x i32]* @.str.2 to i8*))
  store i32* %142, i32** %7, align 8
  %143 = icmp eq i32* %142, null
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load i32, i32* @StdErr, align 4
  %146 = load i32, i32* @IDS_FILEERROR, align 4
  %147 = call i32 (i32, i32, ...) @ConResPrintf(i32 %145, i32 %146, i32* %30)
  %148 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %148, i32* %24, align 4
  br label %322

149:                                              ; preds = %141
  %150 = call i32* @_wfopen(i32* %34, i8* bitcast ([3 x i32]* @.str.2 to i8*))
  store i32* %150, i32** %8, align 8
  %151 = icmp eq i32* %150, null
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load i32, i32* @StdErr, align 4
  %154 = load i32, i32* @IDS_FILEERROR, align 4
  %155 = call i32 (i32, i32, ...) @ConResPrintf(i32 %153, i32 %154, i32* %34)
  %156 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %156, i32* %24, align 4
  br label %322

157:                                              ; preds = %149
  %158 = load i32, i32* @StdOut, align 4
  %159 = load i32, i32* @IDS_COMPARING, align 4
  %160 = call i32 (i32, i32, ...) @ConResPrintf(i32 %158, i32 %159, i32* %30, i32* %34)
  %161 = load i32*, i32** %7, align 8
  %162 = call i32 @FileSize(i32* %161)
  store i32 %162, i32* %20, align 4
  %163 = load i32, i32* %20, align 4
  %164 = icmp eq i32 %163, -1
  br i1 %164, label %165, label %170

165:                                              ; preds = %157
  %166 = load i32, i32* @StdErr, align 4
  %167 = load i32, i32* @IDS_FILESIZEERROR, align 4
  %168 = call i32 (i32, i32, ...) @ConResPrintf(i32 %166, i32 %167, i32* %30)
  %169 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %169, i32* %24, align 4
  br label %322

170:                                              ; preds = %157
  %171 = load i32*, i32** %8, align 8
  %172 = call i32 @FileSize(i32* %171)
  store i32 %172, i32* %21, align 4
  %173 = load i32, i32* %21, align 4
  %174 = icmp eq i32 %173, -1
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load i32, i32* @StdErr, align 4
  %177 = load i32, i32* @IDS_FILESIZEERROR, align 4
  %178 = call i32 (i32, i32, ...) @ConResPrintf(i32 %176, i32 %177, i32* %34)
  %179 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %179, i32* %24, align 4
  br label %322

180:                                              ; preds = %170
  %181 = load i32, i32* %20, align 4
  %182 = load i32, i32* %21, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %184, label %189

184:                                              ; preds = %180
  %185 = load i32, i32* @StdOut, align 4
  %186 = load i32, i32* @IDS_SIZEDIFFERS, align 4
  %187 = call i32 @ConResPuts(i32 %185, i32 %186)
  %188 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %188, i32* %24, align 4
  br label %322

189:                                              ; preds = %180
  store i32 1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %190

190:                                              ; preds = %313, %189
  br label %191

191:                                              ; preds = %190
  %192 = load i8*, i8** %11, align 8
  %193 = load i32*, i32** %7, align 8
  %194 = call i32 @GetBuff(i8* %192, i32* %193)
  store i32 %194, i32* %9, align 4
  %195 = load i8*, i8** %12, align 8
  %196 = load i32*, i32** %8, align 8
  %197 = call i32 @GetBuff(i8* %195, i32* %196)
  store i32 %197, i32* %10, align 4
  %198 = load i32*, i32** %7, align 8
  %199 = call i64 @ferror(i32* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %205, label %201

201:                                              ; preds = %191
  %202 = load i32*, i32** %8, align 8
  %203 = call i64 @ferror(i32* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %201, %191
  %206 = load i32, i32* @StdErr, align 4
  %207 = load i32, i32* @IDS_READERROR, align 4
  %208 = call i32 @ConResPuts(i32 %206, i32 %207)
  %209 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %209, i32* %24, align 4
  br label %322

210:                                              ; preds = %201
  %211 = load i32, i32* %9, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %217, label %213

213:                                              ; preds = %210
  %214 = load i32, i32* %10, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %213
  br label %314

217:                                              ; preds = %213, %210
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* %10, align 4
  %220 = icmp eq i32 %218, %219
  %221 = zext i1 %220 to i32
  %222 = call i32 @assert(i32 %221)
  store i32 0, i32* %6, align 4
  br label %223

223:                                              ; preds = %310, %217
  %224 = load i32, i32* %6, align 4
  %225 = load i32, i32* %9, align 4
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %227, label %313

227:                                              ; preds = %223
  %228 = load i8*, i8** %11, align 8
  %229 = load i32, i32* %6, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, i8* %228, i64 %230
  %232 = load i8, i8* %231, align 1
  %233 = sext i8 %232 to i32
  %234 = load i8*, i8** %12, align 8
  %235 = load i32, i32* %6, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, i8* %234, i64 %236
  %238 = load i8, i8* %237, align 1
  %239 = sext i8 %238 to i32
  %240 = icmp ne i32 %233, %239
  br i1 %240, label %241, label %296

241:                                              ; preds = %227
  store i32 0, i32* %23, align 4
  %242 = load i64, i64* %17, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %249

244:                                              ; preds = %241
  %245 = load i32, i32* @StdOut, align 4
  %246 = load i32, i32* @IDS_MISMATCHLINE, align 4
  %247 = load i32, i32* %18, align 4
  %248 = call i32 (i32, i32, ...) @ConResPrintf(i32 %245, i32 %246, i32 %247)
  br label %254

249:                                              ; preds = %241
  %250 = load i32, i32* @StdOut, align 4
  %251 = load i32, i32* @IDS_MISMATCHOFFSET, align 4
  %252 = load i32, i32* %19, align 4
  %253 = call i32 (i32, i32, ...) @ConResPrintf(i32 %250, i32 %251, i32 %252)
  br label %254

254:                                              ; preds = %249, %244
  %255 = load i64, i64* %16, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %276

257:                                              ; preds = %254
  %258 = load i32, i32* @StdOut, align 4
  %259 = load i32, i32* @IDS_ASCIIDIFF, align 4
  %260 = load i8*, i8** %11, align 8
  %261 = load i32, i32* %6, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8, i8* %260, i64 %262
  %264 = load i8, i8* %263, align 1
  %265 = sext i8 %264 to i32
  %266 = call i32 (i32, i32, ...) @ConResPrintf(i32 %258, i32 %259, i32 1, i32 %265)
  %267 = load i32, i32* @StdOut, align 4
  %268 = load i32, i32* @IDS_ASCIIDIFF, align 4
  %269 = load i8*, i8** %12, align 8
  %270 = load i32, i32* %6, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8, i8* %269, i64 %271
  %273 = load i8, i8* %272, align 1
  %274 = sext i8 %273 to i32
  %275 = call i32 (i32, i32, ...) @ConResPrintf(i32 %267, i32 %268, i32 2, i32 %274)
  br label %295

276:                                              ; preds = %254
  %277 = load i32, i32* @StdOut, align 4
  %278 = load i32, i32* @IDS_HEXADECIMALDIFF, align 4
  %279 = load i8*, i8** %11, align 8
  %280 = load i32, i32* %6, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i8, i8* %279, i64 %281
  %283 = load i8, i8* %282, align 1
  %284 = sext i8 %283 to i32
  %285 = call i32 (i32, i32, ...) @ConResPrintf(i32 %277, i32 %278, i32 1, i32 %284)
  %286 = load i32, i32* @StdOut, align 4
  %287 = load i32, i32* @IDS_HEXADECIMALDIFF, align 4
  %288 = load i8*, i8** %12, align 8
  %289 = load i32, i32* %6, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i8, i8* %288, i64 %290
  %292 = load i8, i8* %291, align 1
  %293 = sext i8 %292 to i32
  %294 = call i32 (i32, i32, ...) @ConResPrintf(i32 %286, i32 %287, i32 2, i32 %293)
  br label %295

295:                                              ; preds = %276, %257
  br label %296

296:                                              ; preds = %295, %227
  %297 = load i32, i32* %19, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %19, align 4
  %299 = load i8*, i8** %11, align 8
  %300 = load i32, i32* %6, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8, i8* %299, i64 %301
  %303 = load i8, i8* %302, align 1
  %304 = sext i8 %303 to i32
  %305 = icmp eq i32 %304, 10
  br i1 %305, label %306, label %309

306:                                              ; preds = %296
  %307 = load i32, i32* %18, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %18, align 4
  br label %309

309:                                              ; preds = %306, %296
  br label %310

310:                                              ; preds = %309
  %311 = load i32, i32* %6, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %6, align 4
  br label %223

313:                                              ; preds = %223
  br label %190

314:                                              ; preds = %216
  %315 = load i32, i32* %23, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %321

317:                                              ; preds = %314
  %318 = load i32, i32* @StdOut, align 4
  %319 = load i32, i32* @IDS_MATCH, align 4
  %320 = call i32 @ConResPuts(i32 %318, i32 %319)
  br label %321

321:                                              ; preds = %317, %314
  br label %322

322:                                              ; preds = %321, %205, %184, %175, %165, %152, %144, %137, %127
  %323 = load i32*, i32** %8, align 8
  %324 = icmp ne i32* %323, null
  br i1 %324, label %325, label %328

325:                                              ; preds = %322
  %326 = load i32*, i32** %8, align 8
  %327 = call i32 @fclose(i32* %326)
  br label %328

328:                                              ; preds = %325, %322
  %329 = load i32*, i32** %7, align 8
  %330 = icmp ne i32* %329, null
  br i1 %330, label %331, label %334

331:                                              ; preds = %328
  %332 = load i32*, i32** %7, align 8
  %333 = call i32 @fclose(i32* %332)
  br label %334

334:                                              ; preds = %331, %328
  %335 = load i8*, i8** %12, align 8
  %336 = icmp ne i8* %335, null
  br i1 %336, label %337, label %340

337:                                              ; preds = %334
  %338 = load i8*, i8** %12, align 8
  %339 = call i32 @free(i8* %338)
  br label %340

340:                                              ; preds = %337, %334
  %341 = load i8*, i8** %11, align 8
  %342 = icmp ne i8* %341, null
  br i1 %342, label %343, label %346

343:                                              ; preds = %340
  %344 = load i8*, i8** %11, align 8
  %345 = call i32 @free(i8* %344)
  br label %346

346:                                              ; preds = %343, %340
  %347 = load i32, i32* %24, align 4
  store i32 %347, i32* %3, align 4
  store i32 1, i32* %25, align 4
  br label %348

348:                                              ; preds = %346, %116, %74, %69
  %349 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %349)
  %350 = load i32, i32* %3, align 4
  ret i32 %350
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ConInitStdStreams(...) #2

declare dso_local i32 @towlower(i32) #2

declare dso_local i32 @ConResPuts(i32, i32) #2

declare dso_local i32 @ConResPrintf(i32, i32, ...) #2

declare dso_local i32 @wcsncpy(i32*, i32*, i32) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @ConPuts(i32, i8*) #2

declare dso_local i32* @_wfopen(i32*, i8*) #2

declare dso_local i32 @FileSize(i32*) #2

declare dso_local i32 @GetBuff(i8*, i32*) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

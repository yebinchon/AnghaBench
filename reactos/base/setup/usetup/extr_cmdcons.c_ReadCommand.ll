; ModuleID = '/home/carl/AnghaBench/reactos/base/setup/usetup/extr_cmdcons.c_ReadCommand.c'
source_filename = "/home/carl/AnghaBench/reactos/base/setup/usetup/extr_cmdcons.c_ReadCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@RIGHT_ALT_PRESSED = common dso_local global i32 0, align 4
@LEFT_ALT_PRESSED = common dso_local global i32 0, align 4
@RIGHT_CTRL_PRESSED = common dso_local global i32 0, align 4
@LEFT_CTRL_PRESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"\08 \08\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@maxx = common dso_local global i32 0, align 4
@maxy = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, i32*, i32)* @ReadCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ReadCommand(%struct.TYPE_11__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_12__, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %19 = load i64, i64* @FALSE, align 8
  store i64 %19, i64* %17, align 8
  %20 = call i32 @CONSOLE_GetCursorXY(i32* %7, i32* %8)
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = call i32 @memset(i32* %23, i32 0, i32 %27)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TRUE, align 8
  %33 = call i32 @CONSOLE_SetCursorType(i64 %31, i64 %32)
  br label %34

34:                                               ; preds = %496, %3
  %35 = load i64, i64* @FALSE, align 8
  store i64 %35, i64* %17, align 8
  %36 = call i32 @CONSOLE_ConInKey(%struct.TYPE_12__* %15)
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @RIGHT_ALT_PRESSED, align 4
  %42 = load i32, i32* @LEFT_ALT_PRESSED, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @RIGHT_CTRL_PRESSED, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @LEFT_CTRL_PRESSED, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %40, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %34
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %55 [
  ]

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55, %34
  %57 = load i64, i64* @FALSE, align 8
  store i64 %57, i64* %18, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %332 [
    i32 139, label %62
    i32 132, label %169
    i32 138, label %180
    i32 133, label %220
    i32 136, label %230
    i32 77, label %243
    i32 67, label %243
    i32 130, label %256
    i32 135, label %263
    i32 128, label %271
    i32 137, label %272
    i32 131, label %273
    i32 129, label %304
  ]

62:                                               ; preds = %56
  %63 = load i32, i32* %13, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %168

65:                                               ; preds = %62
  %66 = load i32, i32* %14, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %168

68:                                               ; preds = %65
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %107

72:                                               ; preds = %68
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  store i32 0, i32* %77, align 4
  %78 = call i32 (...) @CONSOLE_GetCursorX()
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = call i32 (i8*, ...) @CONSOLE_ConOutPrintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %9, align 4
  br label %106

84:                                               ; preds = %72
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 %87, 1
  %89 = call i32 (...) @CONSOLE_GetCursorY()
  %90 = sub nsw i32 %89, 1
  %91 = call i32 @CONSOLE_SetCursorXY(i32 %88, i32 %90)
  %92 = call i32 @CONSOLE_ConOutChar(i32 32)
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sub nsw i32 %95, 1
  %97 = call i32 (...) @CONSOLE_GetCursorY()
  %98 = sub nsw i32 %97, 1
  %99 = call i32 @CONSOLE_SetCursorXY(i32 %96, i32 %98)
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %10, align 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sub nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %84, %80
  br label %163

107:                                              ; preds = %68
  %108 = load i32, i32* %13, align 4
  %109 = sub nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  br label %110

110:                                              ; preds = %125, %107
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %128

114:                                              ; preds = %110
  %115 = load i32*, i32** %5, align 8
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %5, align 8
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %120, i32* %124, align 4
  br label %125

125:                                              ; preds = %114
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %12, align 4
  br label %110

128:                                              ; preds = %110
  %129 = call i32 (...) @CONSOLE_GetCursorX()
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %128
  %132 = call i32 (...) @CONSOLE_GetCursorX()
  %133 = sub nsw i32 %132, 1
  %134 = call i32 (...) @CONSOLE_GetCursorY()
  %135 = call i32 @CONSOLE_SetCursorXY(i32 %133, i32 %134)
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %9, align 4
  br label %152

138:                                              ; preds = %128
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sub nsw i32 %141, 1
  %143 = call i32 (...) @CONSOLE_GetCursorY()
  %144 = sub nsw i32 %143, 1
  %145 = call i32 @CONSOLE_SetCursorXY(i32 %142, i32 %144)
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %10, align 4
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sub nsw i32 %150, 1
  store i32 %151, i32* %9, align 4
  br label %152

152:                                              ; preds = %138, %131
  %153 = call i32 @CONSOLE_GetCursorXY(i32* %9, i32* %10)
  %154 = load i32*, i32** %5, align 8
  %155 = load i32, i32* %13, align 4
  %156 = sub nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  %159 = call i32 (i8*, ...) @CONSOLE_ConOutPrintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %158)
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @CONSOLE_SetCursorXY(i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %152, %106
  %164 = load i32, i32* %14, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %14, align 4
  %166 = load i32, i32* %13, align 4
  %167 = add nsw i32 %166, -1
  store i32 %167, i32* %13, align 4
  br label %168

168:                                              ; preds = %163, %65, %62
  br label %334

169:                                              ; preds = %56
  %170 = load i64, i64* @TRUE, align 8
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = xor i64 %173, %170
  store i64 %174, i64* %172, align 8
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @TRUE, align 8
  %179 = call i32 @CONSOLE_SetCursorType(i64 %177, i64 %178)
  br label %334

180:                                              ; preds = %56
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* %14, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %184, label %219

184:                                              ; preds = %180
  %185 = load i32, i32* %14, align 4
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %219

187:                                              ; preds = %184
  %188 = load i32, i32* %13, align 4
  store i32 %188, i32* %12, align 4
  br label %189

189:                                              ; preds = %204, %187
  %190 = load i32, i32* %12, align 4
  %191 = load i32, i32* %14, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %207

193:                                              ; preds = %189
  %194 = load i32*, i32** %5, align 8
  %195 = load i32, i32* %12, align 4
  %196 = add nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %194, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load i32*, i32** %5, align 8
  %201 = load i32, i32* %12, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  store i32 %199, i32* %203, align 4
  br label %204

204:                                              ; preds = %193
  %205 = load i32, i32* %12, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %12, align 4
  br label %189

207:                                              ; preds = %189
  %208 = load i32, i32* %14, align 4
  %209 = add nsw i32 %208, -1
  store i32 %209, i32* %14, align 4
  %210 = call i32 @CONSOLE_GetCursorXY(i32* %9, i32* %10)
  %211 = load i32*, i32** %5, align 8
  %212 = load i32, i32* %13, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = call i32 (i8*, ...) @CONSOLE_ConOutPrintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %214)
  %216 = load i32, i32* %9, align 4
  %217 = load i32, i32* %10, align 4
  %218 = call i32 @CONSOLE_SetCursorXY(i32 %216, i32 %217)
  br label %219

219:                                              ; preds = %207, %184, %180
  br label %334

220:                                              ; preds = %56
  %221 = load i32, i32* %13, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %220
  %224 = load i32, i32* %7, align 4
  %225 = load i32, i32* %8, align 4
  %226 = call i32 @CONSOLE_SetCursorXY(i32 %224, i32 %225)
  %227 = load i32, i32* %7, align 4
  store i32 %227, i32* %9, align 4
  %228 = load i32, i32* %8, align 4
  store i32 %228, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %229

229:                                              ; preds = %223, %220
  br label %334

230:                                              ; preds = %56
  %231 = load i32, i32* %13, align 4
  %232 = load i32, i32* %14, align 4
  %233 = icmp ne i32 %231, %232
  br i1 %233, label %234, label %242

234:                                              ; preds = %230
  %235 = load i32, i32* %7, align 4
  %236 = load i32, i32* %8, align 4
  %237 = call i32 @CONSOLE_SetCursorXY(i32 %235, i32 %236)
  %238 = load i32*, i32** %5, align 8
  %239 = call i32 (i8*, ...) @CONSOLE_ConOutPrintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %238)
  %240 = call i32 @CONSOLE_GetCursorXY(i32* %9, i32* %10)
  %241 = load i32, i32* %14, align 4
  store i32 %241, i32* %13, align 4
  br label %242

242:                                              ; preds = %234, %230
  br label %334

243:                                              ; preds = %56, %56
  %244 = load i64, i64* @TRUE, align 8
  store i64 %244, i64* %18, align 8
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @RIGHT_CTRL_PRESSED, align 4
  %250 = load i32, i32* @LEFT_CTRL_PRESSED, align 4
  %251 = or i32 %249, %250
  %252 = and i32 %248, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %255, label %254

254:                                              ; preds = %243
  br label %334

255:                                              ; preds = %243
  br label %256

256:                                              ; preds = %56, %255
  %257 = load i32*, i32** %5, align 8
  %258 = load i32, i32* %14, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  store i32 0, i32* %260, align 4
  %261 = call i32 @CONSOLE_ConOutChar(i32 10)
  %262 = load i64, i64* @TRUE, align 8
  store i64 %262, i64* %17, align 8
  br label %334

263:                                              ; preds = %56
  %264 = load i32*, i32** %5, align 8
  %265 = load i32, i32* %6, align 4
  %266 = load i32, i32* %7, align 4
  %267 = load i32, i32* %8, align 4
  %268 = call i32 @ClearCommandLine(i32* %264, i32 %265, i32 %266, i32 %267)
  %269 = load i32, i32* %7, align 4
  store i32 %269, i32* %9, align 4
  %270 = load i32, i32* %8, align 4
  store i32 %270, i32* %10, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %334

271:                                              ; preds = %56
  br label %334

272:                                              ; preds = %56
  br label %334

273:                                              ; preds = %56
  %274 = load i32, i32* %13, align 4
  %275 = icmp sgt i32 %274, 0
  br i1 %275, label %276, label %303

276:                                              ; preds = %273
  %277 = load i32, i32* %13, align 4
  %278 = add nsw i32 %277, -1
  store i32 %278, i32* %13, align 4
  %279 = call i32 (...) @CONSOLE_GetCursorX()
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %295

281:                                              ; preds = %276
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = sub nsw i32 %284, 1
  %286 = call i32 (...) @CONSOLE_GetCursorY()
  %287 = sub nsw i32 %286, 1
  %288 = call i32 @CONSOLE_SetCursorXY(i32 %285, i32 %287)
  %289 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = sub nsw i32 %291, 1
  store i32 %292, i32* %9, align 4
  %293 = load i32, i32* %10, align 4
  %294 = add nsw i32 %293, -1
  store i32 %294, i32* %10, align 4
  br label %302

295:                                              ; preds = %276
  %296 = call i32 (...) @CONSOLE_GetCursorX()
  %297 = sub nsw i32 %296, 1
  %298 = call i32 (...) @CONSOLE_GetCursorY()
  %299 = call i32 @CONSOLE_SetCursorXY(i32 %297, i32 %298)
  %300 = load i32, i32* %9, align 4
  %301 = add nsw i32 %300, -1
  store i32 %301, i32* %9, align 4
  br label %302

302:                                              ; preds = %295, %281
  br label %303

303:                                              ; preds = %302, %273
  br label %334

304:                                              ; preds = %56
  %305 = load i32, i32* %13, align 4
  %306 = load i32, i32* %14, align 4
  %307 = icmp ne i32 %305, %306
  br i1 %307, label %308, label %331

308:                                              ; preds = %304
  %309 = load i32, i32* %13, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %13, align 4
  %311 = call i32 (...) @CONSOLE_GetCursorX()
  %312 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = sub nsw i32 %314, 1
  %316 = icmp eq i32 %311, %315
  br i1 %316, label %317, label %323

317:                                              ; preds = %308
  %318 = call i32 (...) @CONSOLE_GetCursorY()
  %319 = add nsw i32 %318, 1
  %320 = call i32 @CONSOLE_SetCursorXY(i32 0, i32 %319)
  store i32 0, i32* %9, align 4
  %321 = load i32, i32* %10, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %10, align 4
  br label %330

323:                                              ; preds = %308
  %324 = call i32 (...) @CONSOLE_GetCursorX()
  %325 = add nsw i32 %324, 1
  %326 = call i32 (...) @CONSOLE_GetCursorY()
  %327 = call i32 @CONSOLE_SetCursorXY(i32 %325, i32 %326)
  %328 = load i32, i32* %9, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %9, align 4
  br label %330

330:                                              ; preds = %323, %317
  br label %331

331:                                              ; preds = %330, %304
  br label %334

332:                                              ; preds = %56
  %333 = load i64, i64* @TRUE, align 8
  store i64 %333, i64* %18, align 8
  br label %334

334:                                              ; preds = %332, %331, %303, %272, %271, %263, %256, %254, %242, %229, %219, %169, %168
  %335 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i32 0, i32 2
  %338 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  store i32 %339, i32* %16, align 4
  %340 = load i32, i32* %16, align 4
  %341 = icmp sge i32 %340, 32
  br i1 %341, label %342, label %495

342:                                              ; preds = %334
  %343 = load i32, i32* %14, align 4
  %344 = load i32, i32* %6, align 4
  %345 = sub nsw i32 %344, 2
  %346 = icmp ne i32 %343, %345
  br i1 %346, label %347, label %495

347:                                              ; preds = %342
  %348 = load i64, i64* %18, align 8
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %495

350:                                              ; preds = %347
  %351 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %351, i32 0, i32 2
  %353 = load i64, i64* %352, align 8
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %446

355:                                              ; preds = %350
  %356 = load i32, i32* %13, align 4
  %357 = load i32, i32* %14, align 4
  %358 = icmp ne i32 %356, %357
  br i1 %358, label %359, label %446

359:                                              ; preds = %355
  %360 = load i32*, i32** %5, align 8
  %361 = load i32, i32* %13, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, i32* %360, i64 %362
  %364 = call i32 @strlen(i32* %363)
  %365 = load i32, i32* %9, align 4
  %366 = add nsw i32 %364, %365
  store i32 %366, i32* %11, align 4
  %367 = load i32, i32* %11, align 4
  %368 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = srem i32 %367, %370
  %372 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %373 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = sub nsw i32 %374, 1
  %376 = icmp eq i32 %371, %375
  br i1 %376, label %377, label %395

377:                                              ; preds = %359
  %378 = load i32, i32* %11, align 4
  %379 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %380 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = sdiv i32 %378, %381
  %383 = load i32, i32* %10, align 4
  %384 = add nsw i32 %382, %383
  %385 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %386 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = sub nsw i32 %387, 1
  %389 = icmp eq i32 %384, %388
  br i1 %389, label %390, label %395

390:                                              ; preds = %377
  %391 = load i32, i32* %8, align 4
  %392 = add nsw i32 %391, -1
  store i32 %392, i32* %8, align 4
  %393 = load i32, i32* %10, align 4
  %394 = add nsw i32 %393, -1
  store i32 %394, i32* %10, align 4
  br label %395

395:                                              ; preds = %390, %377, %359
  %396 = load i32, i32* %14, align 4
  store i32 %396, i32* %12, align 4
  br label %397

397:                                              ; preds = %412, %395
  %398 = load i32, i32* %12, align 4
  %399 = load i32, i32* %13, align 4
  %400 = icmp sgt i32 %398, %399
  br i1 %400, label %401, label %415

401:                                              ; preds = %397
  %402 = load i32*, i32** %5, align 8
  %403 = load i32, i32* %12, align 4
  %404 = sub nsw i32 %403, 1
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %402, i64 %405
  %407 = load i32, i32* %406, align 4
  %408 = load i32*, i32** %5, align 8
  %409 = load i32, i32* %12, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i32, i32* %408, i64 %410
  store i32 %407, i32* %411, align 4
  br label %412

412:                                              ; preds = %401
  %413 = load i32, i32* %12, align 4
  %414 = add nsw i32 %413, -1
  store i32 %414, i32* %12, align 4
  br label %397

415:                                              ; preds = %397
  %416 = load i32, i32* %16, align 4
  %417 = load i32*, i32** %5, align 8
  %418 = load i32, i32* %13, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %13, align 4
  %420 = sext i32 %418 to i64
  %421 = getelementptr inbounds i32, i32* %417, i64 %420
  store i32 %416, i32* %421, align 4
  %422 = load i32, i32* %9, align 4
  %423 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %424 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = sub nsw i32 %425, 1
  %427 = icmp eq i32 %422, %426
  br i1 %427, label %428, label %431

428:                                              ; preds = %415
  store i32 0, i32* %9, align 4
  %429 = load i32, i32* %10, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %10, align 4
  br label %434

431:                                              ; preds = %415
  %432 = load i32, i32* %9, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %9, align 4
  br label %434

434:                                              ; preds = %431, %428
  %435 = load i32*, i32** %5, align 8
  %436 = load i32, i32* %13, align 4
  %437 = sub nsw i32 %436, 1
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %435, i64 %438
  %440 = call i32 (i8*, ...) @CONSOLE_ConOutPrintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %439)
  %441 = load i32, i32* %9, align 4
  %442 = load i32, i32* %10, align 4
  %443 = call i32 @CONSOLE_SetCursorXY(i32 %441, i32 %442)
  %444 = load i32, i32* %14, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %14, align 4
  br label %494

446:                                              ; preds = %355, %350
  %447 = load i32, i32* %13, align 4
  %448 = load i32, i32* %14, align 4
  %449 = icmp eq i32 %447, %448
  br i1 %449, label %450, label %453

450:                                              ; preds = %446
  %451 = load i32, i32* %14, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %14, align 4
  br label %453

453:                                              ; preds = %450, %446
  %454 = load i32, i32* %16, align 4
  %455 = load i32*, i32** %5, align 8
  %456 = load i32, i32* %13, align 4
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %13, align 4
  %458 = sext i32 %456 to i64
  %459 = getelementptr inbounds i32, i32* %455, i64 %458
  store i32 %454, i32* %459, align 4
  %460 = call i32 (...) @CONSOLE_GetCursorX()
  %461 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %462 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 8
  %464 = sub nsw i32 %463, 1
  %465 = icmp eq i32 %460, %464
  br i1 %465, label %466, label %478

466:                                              ; preds = %453
  %467 = call i32 (...) @CONSOLE_GetCursorY()
  %468 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %469 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 4
  %471 = sub nsw i32 %470, 1
  %472 = icmp eq i32 %467, %471
  br i1 %472, label %473, label %478

473:                                              ; preds = %466
  %474 = load i32, i32* %8, align 4
  %475 = add nsw i32 %474, -1
  store i32 %475, i32* %8, align 4
  %476 = load i32, i32* %10, align 4
  %477 = add nsw i32 %476, -1
  store i32 %477, i32* %10, align 4
  br label %478

478:                                              ; preds = %473, %466, %453
  %479 = call i32 (...) @CONSOLE_GetCursorX()
  %480 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %481 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 8
  %483 = sub nsw i32 %482, 1
  %484 = icmp eq i32 %479, %483
  br i1 %484, label %485, label %488

485:                                              ; preds = %478
  store i32 0, i32* %9, align 4
  %486 = load i32, i32* %10, align 4
  %487 = add nsw i32 %486, 1
  store i32 %487, i32* %10, align 4
  br label %491

488:                                              ; preds = %478
  %489 = load i32, i32* %9, align 4
  %490 = add nsw i32 %489, 1
  store i32 %490, i32* %9, align 4
  br label %491

491:                                              ; preds = %488, %485
  %492 = load i32, i32* %16, align 4
  %493 = call i32 @CONSOLE_ConOutChar(i32 %492)
  br label %494

494:                                              ; preds = %491, %434
  br label %495

495:                                              ; preds = %494, %347, %342, %334
  br label %496

496:                                              ; preds = %495
  %497 = load i64, i64* %17, align 8
  %498 = icmp ne i64 %497, 0
  %499 = xor i1 %498, true
  br i1 %499, label %34, label %500

500:                                              ; preds = %496
  %501 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %502 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %501, i32 0, i32 2
  %503 = load i64, i64* %502, align 8
  %504 = load i64, i64* @TRUE, align 8
  %505 = call i32 @CONSOLE_SetCursorType(i64 %503, i64 %504)
  %506 = load i64, i64* @TRUE, align 8
  ret i64 %506
}

declare dso_local i32 @CONSOLE_GetCursorXY(i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @CONSOLE_SetCursorType(i64, i64) #1

declare dso_local i32 @CONSOLE_ConInKey(%struct.TYPE_12__*) #1

declare dso_local i32 @CONSOLE_GetCursorX(...) #1

declare dso_local i32 @CONSOLE_ConOutPrintf(i8*, ...) #1

declare dso_local i32 @CONSOLE_SetCursorXY(i32, i32) #1

declare dso_local i32 @CONSOLE_GetCursorY(...) #1

declare dso_local i32 @CONSOLE_ConOutChar(i32) #1

declare dso_local i32 @ClearCommandLine(i32*, i32, i32, i32) #1

declare dso_local i32 @strlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

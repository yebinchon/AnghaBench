; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_agraph.c_normal_RANode_print.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_agraph.c_normal_RANode_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64, %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i8*, i8* }

@TITLE_LEN = common dso_local global i32 0, align 4
@MARGIN_TEXT_X = common dso_local global i32 0, align 4
@BORDER_HEIGHT = common dso_local global i32 0, align 4
@MARGIN_TEXT_Y = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@Color_RESET = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" %s%s \00", align 1
@BORDER_WIDTH = common dso_local global i32 0, align 4
@ZOOM_DEFAULT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_8__*, i32)* @normal_RANode_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @normal_RANode_print(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %28 = load i32, i32* @TITLE_LEN, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %13, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %14, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %18, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %19, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %20, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %43, %48
  store i32 %49, i32* %16, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %52, %57
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* @MARGIN_TEXT_X, align 4
  %61 = add nsw i32 %59, %60
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %3
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* @MARGIN_TEXT_X, align 4
  %66 = add nsw i32 %64, %65
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %63, %3
  %69 = load i32, i32* %16, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %69, %72
  %74 = load i32, i32* @MARGIN_TEXT_X, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp slt i32 %73, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  store i32 1, i32* %21, align 4
  br label %387

78:                                               ; preds = %68
  %79 = load i32, i32* %17, align 4
  %80 = icmp slt i32 %79, -1
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @BORDER_HEIGHT, align 4
  %86 = sub nsw i32 %84, %85
  %87 = sub nsw i32 %86, 1
  %88 = load i32, i32* %17, align 4
  %89 = sub nsw i32 0, %88
  %90 = load i32, i32* @MARGIN_TEXT_Y, align 4
  %91 = sub nsw i32 %89, %90
  %92 = call i32 @R_MIN(i32 %87, i32 %91)
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %81, %78
  %94 = load i32, i32* %19, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %166

96:                                               ; preds = %93
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = sub i64 %29, 1
  %101 = trunc i64 %100 to i32
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 5
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %31, i32 %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %104)
  br label %135

106:                                              ; preds = %96
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %106
  %114 = load i8*, i8** @Color_RESET, align 8
  br label %116

115:                                              ; preds = %106
  br label %116

116:                                              ; preds = %115, %113
  %117 = phi i8* [ %114, %113 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %115 ]
  store i8* %117, i8** %22, align 8
  %118 = sub i64 %29, 1
  %119 = trunc i64 %118 to i32
  %120 = load i8*, i8** %22, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 5
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %31, i32 %119, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %120, i8* %123)
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 5
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @strlen(i8* %31)
  %130 = sext i32 %129 to i64
  %131 = sub i64 %29, %130
  %132 = sub i64 %131, 1
  %133 = trunc i64 %132 to i32
  %134 = call i32 @append_shortcut(%struct.TYPE_9__* %125, i8* %31, i8* %128, i32 %133)
  br label %135

135:                                              ; preds = %116, %99
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @strlen(i8* %31)
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %165

139:                                              ; preds = %135
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @MARGIN_TEXT_X, align 4
  %144 = add nsw i32 %142, %143
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %144, %145
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, 1
  %151 = call i64 @G(i32 %146, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %139
  %154 = load i32, i32* %9, align 4
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @BORDER_WIDTH, align 4
  %159 = sub nsw i32 %157, %158
  %160 = call i8* @r_str_ansi_crop(i8* %31, i32 %154, i32 0, i32 %159, i32 1)
  store i8* %160, i8** %23, align 8
  %161 = load i8*, i8** %23, align 8
  %162 = call i32 @W(i8* %161)
  %163 = load i8*, i8** %23, align 8
  %164 = call i32 @free(i8* %163)
  br label %165

165:                                              ; preds = %153, %139, %135
  br label %166

166:                                              ; preds = %165, %93
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @ZOOM_DEFAULT, align 8
  %171 = icmp sgt i64 %169, %170
  br i1 %171, label %172, label %193

172:                                              ; preds = %166
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @ZOOM_DEFAULT, align 8
  %177 = sub nsw i64 %175, %176
  %178 = sdiv i64 %177, 10
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %7, align 4
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @ZOOM_DEFAULT, align 8
  %184 = sub nsw i64 %182, %183
  %185 = sdiv i64 %184, 30
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %8, align 4
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* %7, align 4
  %189 = call i32 @R_MIN(i32 %187, i32 %188)
  store i32 %189, i32* %10, align 4
  %190 = load i32, i32* %11, align 4
  %191 = load i32, i32* %8, align 4
  %192 = call i32 @R_MIN(i32 %190, i32 %191)
  store i32 %192, i32* %12, align 4
  br label %193

193:                                              ; preds = %172, %166
  %194 = load i32, i32* %20, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %341

196:                                              ; preds = %193
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @MARGIN_TEXT_X, align 4
  %201 = add nsw i32 %199, %200
  %202 = load i32, i32* %9, align 4
  %203 = add nsw i32 %201, %202
  %204 = load i32, i32* %7, align 4
  %205 = add nsw i32 %203, %204
  %206 = load i32, i32* %10, align 4
  %207 = sub nsw i32 %205, %206
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @MARGIN_TEXT_Y, align 4
  %212 = add nsw i32 %210, %211
  %213 = load i32, i32* %11, align 4
  %214 = add nsw i32 %212, %213
  %215 = load i32, i32* %8, align 4
  %216 = add nsw i32 %214, %215
  %217 = load i32, i32* %12, align 4
  %218 = sub nsw i32 %216, %217
  %219 = call i64 @G(i32 %207, i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %340

221:                                              ; preds = %196
  %222 = load i32, i32* %7, align 4
  %223 = load i32, i32* %9, align 4
  %224 = icmp sge i32 %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %221
  br label %230

226:                                              ; preds = %221
  %227 = load i32, i32* %9, align 4
  %228 = load i32, i32* %7, align 4
  %229 = sub nsw i32 %227, %228
  br label %230

230:                                              ; preds = %226, %225
  %231 = phi i32 [ 0, %225 ], [ %229, %226 ]
  store i32 %231, i32* %24, align 4
  %232 = load i32, i32* %8, align 4
  %233 = load i32, i32* %11, align 4
  %234 = icmp sge i32 %232, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %230
  br label %240

236:                                              ; preds = %230
  %237 = load i32, i32* %11, align 4
  %238 = load i32, i32* %8, align 4
  %239 = sub nsw i32 %237, %238
  br label %240

240:                                              ; preds = %236, %235
  %241 = phi i32 [ 0, %235 ], [ %239, %236 ]
  store i32 %241, i32* %25, align 4
  %242 = load i32, i32* @BORDER_HEIGHT, align 4
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 8
  %246 = icmp sge i32 %242, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %240
  br label %254

248:                                              ; preds = %240
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @BORDER_HEIGHT, align 4
  %253 = sub nsw i32 %251, %252
  br label %254

254:                                              ; preds = %248, %247
  %255 = phi i32 [ 1, %247 ], [ %253, %248 ]
  store i32 %255, i32* %26, align 4
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 2
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @ZOOM_DEFAULT, align 8
  %260 = icmp slt i64 %258, %259
  br i1 %260, label %261, label %264

261:                                              ; preds = %254
  %262 = load i32, i32* %26, align 4
  %263 = add nsw i32 %262, -1
  store i32 %263, i32* %26, align 4
  br label %264

264:                                              ; preds = %261, %254
  %265 = load i32, i32* %25, align 4
  %266 = add nsw i32 %265, 1
  %267 = load i32, i32* %26, align 4
  %268 = icmp sle i32 %266, %267
  br i1 %268, label %269, label %303

269:                                              ; preds = %264
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 6
  %272 = load i8*, i8** %271, align 8
  %273 = load i32, i32* %24, align 4
  %274 = load i32, i32* %25, align 4
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @BORDER_WIDTH, align 4
  %279 = sub nsw i32 %277, %278
  %280 = load i32, i32* %26, align 4
  %281 = call i8* @r_str_ansi_crop(i8* %272, i32 %273, i32 %274, i32 %279, i32 %280)
  store i8* %281, i8** %15, align 8
  %282 = load i8*, i8** %15, align 8
  %283 = icmp ne i8* %282, null
  br i1 %283, label %284, label %297

284:                                              ; preds = %269
  %285 = load i8*, i8** %15, align 8
  %286 = call i32 @W(i8* %285)
  %287 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 2
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @ZOOM_DEFAULT, align 8
  %291 = icmp slt i64 %289, %290
  br i1 %291, label %292, label %294

292:                                              ; preds = %284
  %293 = call i32 @W(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %294

294:                                              ; preds = %292, %284
  %295 = load i8*, i8** %15, align 8
  %296 = call i32 @free(i8* %295)
  br label %302

297:                                              ; preds = %269
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i32 0, i32 6
  %300 = load i8*, i8** %299, align 8
  %301 = call i32 @W(i8* %300)
  br label %302

302:                                              ; preds = %297, %294
  br label %303

303:                                              ; preds = %302, %264
  %304 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 6
  %306 = load i8*, i8** %305, align 8
  %307 = icmp ne i8* %306, null
  br i1 %307, label %308, label %339

308:                                              ; preds = %303
  %309 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 6
  %311 = load i8*, i8** %310, align 8
  %312 = load i8, i8* %311, align 1
  %313 = sext i8 %312 to i32
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %339

315:                                              ; preds = %308
  %316 = load i32, i32* %25, align 4
  %317 = load i32, i32* %26, align 4
  %318 = icmp sle i32 %316, %317
  br i1 %318, label %319, label %338

319:                                              ; preds = %315
  %320 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %320, i32 0, i32 2
  %322 = load i64, i64* %321, align 8
  %323 = load i64, i64* @ZOOM_DEFAULT, align 8
  %324 = icmp slt i64 %322, %323
  br i1 %324, label %325, label %338

325:                                              ; preds = %319
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %27, align 8
  %326 = load i32, i32* %9, align 4
  %327 = load i8*, i8** %27, align 8
  %328 = call i32 @strlen(i8* %327)
  %329 = icmp slt i32 %326, %328
  br i1 %329, label %330, label %337

330:                                              ; preds = %325
  %331 = load i32, i32* %9, align 4
  %332 = load i8*, i8** %27, align 8
  %333 = sext i32 %331 to i64
  %334 = getelementptr inbounds i8, i8* %332, i64 %333
  store i8* %334, i8** %27, align 8
  %335 = load i8*, i8** %27, align 8
  %336 = call i32 @W(i8* %335)
  br label %337

337:                                              ; preds = %330, %325
  br label %338

338:                                              ; preds = %337, %319, %315
  br label %339

339:                                              ; preds = %338, %308, %303
  br label %340

340:                                              ; preds = %339, %196
  br label %341

341:                                              ; preds = %340, %193
  %342 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %342, i32 0, i32 4
  %344 = load i64, i64* %343, align 8
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %366

346:                                              ; preds = %341
  %347 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %348 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %347, i32 0, i32 3
  %349 = load %struct.TYPE_10__*, %struct.TYPE_10__** %348, align 8
  %350 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %354 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 8
  %356 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 3
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %359, i32 0, i32 4
  %361 = load i32, i32* %360, align 8
  %362 = load i32, i32* %18, align 4
  %363 = load i32, i32* %6, align 4
  %364 = call i32 @get_node_color(i32 %362, i32 %363)
  %365 = call i32 @r_cons_canvas_circle(%struct.TYPE_10__* %349, i32 %352, i32 %355, i32 %358, i32 %361, i32 %364)
  br label %386

366:                                              ; preds = %341
  %367 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %368 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %367, i32 0, i32 3
  %369 = load %struct.TYPE_10__*, %struct.TYPE_10__** %368, align 8
  %370 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %374 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i32 0, i32 2
  %375 = load i32, i32* %374, align 8
  %376 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i32 0, i32 3
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %380 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %379, i32 0, i32 4
  %381 = load i32, i32* %380, align 8
  %382 = load i32, i32* %18, align 4
  %383 = load i32, i32* %6, align 4
  %384 = call i32 @get_node_color(i32 %382, i32 %383)
  %385 = call i32 @r_cons_canvas_box(%struct.TYPE_10__* %369, i32 %372, i32 %375, i32 %378, i32 %381, i32 %384)
  br label %386

386:                                              ; preds = %366, %346
  store i32 0, i32* %21, align 4
  br label %387

387:                                              ; preds = %386, %77
  %388 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %388)
  %389 = load i32, i32* %21, align 4
  switch i32 %389, label %391 [
    i32 0, label %390
    i32 1, label %390
  ]

390:                                              ; preds = %387, %387
  ret void

391:                                              ; preds = %387
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @R_MIN(i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @append_shortcut(%struct.TYPE_9__*, i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @G(i32, i32) #2

declare dso_local i8* @r_str_ansi_crop(i8*, i32, i32, i32, i32) #2

declare dso_local i32 @W(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @r_cons_canvas_circle(%struct.TYPE_10__*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @get_node_color(i32, i32) #2

declare dso_local i32 @r_cons_canvas_box(%struct.TYPE_10__*, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

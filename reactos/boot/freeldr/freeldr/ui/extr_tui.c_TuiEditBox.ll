; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ui/extr_tui.c_TuiEditBox.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ui/extr_tui.c_TuiEditBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UiScreenWidth = common dso_local global i32 0, align 4
@UiScreenHeight = common dso_local global i32 0, align 4
@TAG_TUI_SCREENBUFFER = common dso_local global i32 0, align 4
@D_VERT = common dso_local global i32 0, align 4
@D_HORZ = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@UiMessageBoxFgColor = common dso_local global i32 0, align 4
@UiMessageBoxBgColor = common dso_local global i32 0, align 4
@UiEditBoxTextColor = common dso_local global i32 0, align 4
@UiEditBoxBgColor = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Press ENTER to continue, or ESC to cancel\00", align 1
@FALSE = common dso_local global i64 0, align 8
@KEY_EXTENDED = common dso_local global i64 0, align 8
@KEY_ENTER = common dso_local global i64 0, align 8
@KEY_ESC = common dso_local global i64 0, align 8
@KEY_BACKSPACE = common dso_local global i64 0, align 8
@KEY_DELETE = common dso_local global i64 0, align 8
@KEY_HOME = common dso_local global i64 0, align 8
@KEY_END = common dso_local global i64 0, align 8
@KEY_RIGHT = common dso_local global i64 0, align 8
@KEY_LEFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @TuiEditBox(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [260 x i64], align 16
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 8, i32* %7, align 4
  store i64 1, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %29 = load i32, i32* @UiScreenWidth, align 4
  %30 = load i32, i32* @UiScreenHeight, align 4
  %31 = mul nsw i32 %29, %30
  %32 = mul nsw i32 %31, 2
  %33 = load i32, i32* @TAG_TUI_SCREENBUFFER, align 4
  %34 = call i32 @FrLdrTempAlloc(i32 %32, i32 %33)
  store i32 %34, i32* %28, align 4
  %35 = load i32, i32* %28, align 4
  %36 = call i32 @TuiSaveScreen(i32 %35)
  store i64 0, i64* %11, align 8
  br label %37

37:                                               ; preds = %54, %3
  %38 = load i64, i64* %11, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = sext i32 %40 to i64
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = load i8*, i8** %4, align 8
  %45 = load i64, i64* %11, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 10
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i64, i64* %8, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %8, align 8
  br label %53

53:                                               ; preds = %50, %43
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %11, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %11, align 8
  br label %37

57:                                               ; preds = %37
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %93, %57
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %96

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %79, %62
  %64 = load i8*, i8** %4, align 8
  %65 = load i64, i64* %12, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 10
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = load i8*, i8** %4, align 8
  %72 = load i64, i64* %12, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br label %77

77:                                               ; preds = %70, %63
  %78 = phi i1 [ false, %63 ], [ %76, %70 ]
  br i1 %78, label %79, label %84

79:                                               ; preds = %77
  %80 = load i64, i64* %12, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %12, align 8
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %63

84:                                               ; preds = %77
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %88, %84
  store i32 0, i32* %10, align 4
  %91 = load i64, i64* %12, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %12, align 8
  br label %93

93:                                               ; preds = %90
  %94 = load i64, i64* %11, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %11, align 8
  br label %58

96:                                               ; preds = %58
  %97 = load i32, i32* @UiScreenWidth, align 4
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 2
  %100 = sub nsw i32 %97, %99
  %101 = sdiv i32 %100, 2
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %102, %103
  %105 = add nsw i32 %104, 3
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* @UiScreenHeight, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %8, align 8
  %109 = sub i64 %107, %108
  %110 = sub i64 %109, 2
  %111 = udiv i64 %110, 2
  %112 = add i64 %111, 1
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %15, align 4
  %115 = sext i32 %114 to i64
  %116 = load i64, i64* %8, align 8
  %117 = add i64 %115, %116
  %118 = add i64 %117, 4
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* @D_VERT, align 4
  %125 = load i32, i32* @D_HORZ, align 4
  %126 = load i64, i64* @TRUE, align 8
  %127 = load i64, i64* @TRUE, align 8
  %128 = load i32, i32* @UiMessageBoxFgColor, align 4
  %129 = load i32, i32* @UiMessageBoxBgColor, align 4
  %130 = call i32 @ATTR(i32 %128, i32 %129)
  %131 = call i32 @TuiDrawBox(i32 %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 %125, i64 %126, i64 %127, i32 %130)
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %132

132:                                              ; preds = %179, %96
  %133 = load i64, i64* %11, align 8
  %134 = load i8*, i8** %4, align 8
  %135 = call i32 @strlen(i8* %134)
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = icmp ult i64 %133, %137
  br i1 %138, label %139, label %182

139:                                              ; preds = %132
  %140 = load i8*, i8** %4, align 8
  %141 = load i64, i64* %11, align 8
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 10
  br i1 %145, label %153, label %146

146:                                              ; preds = %139
  %147 = load i8*, i8** %4, align 8
  %148 = load i64, i64* %11, align 8
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %169

153:                                              ; preds = %146, %139
  %154 = load i64, i64* %12, align 8
  %155 = getelementptr inbounds [260 x i64], [260 x i64]* %17, i64 0, i64 %154
  store i64 0, i64* %155, align 8
  store i64 0, i64* %12, align 8
  %156 = load i32, i32* %13, align 4
  %157 = add nsw i32 %156, 2
  %158 = load i32, i32* %15, align 4
  %159 = add nsw i32 %158, 1
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %159, %160
  %162 = getelementptr inbounds [260 x i64], [260 x i64]* %17, i64 0, i64 0
  %163 = load i32, i32* @UiMessageBoxFgColor, align 4
  %164 = load i32, i32* @UiMessageBoxBgColor, align 4
  %165 = call i32 @ATTR(i32 %163, i32 %164)
  %166 = call i32 @UiDrawText(i32 %157, i32 %161, i64* %162, i32 %165)
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %9, align 4
  br label %178

169:                                              ; preds = %146
  %170 = load i8*, i8** %4, align 8
  %171 = load i64, i64* %11, align 8
  %172 = getelementptr inbounds i8, i8* %170, i64 %171
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i64
  %175 = load i64, i64* %12, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %12, align 8
  %177 = getelementptr inbounds [260 x i64], [260 x i64]* %17, i64 0, i64 %175
  store i64 %174, i64* %177, align 8
  br label %178

178:                                              ; preds = %169, %153
  br label %179

179:                                              ; preds = %178
  %180 = load i64, i64* %11, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %11, align 8
  br label %132

182:                                              ; preds = %132
  %183 = load i8*, i8** %5, align 8
  %184 = call i32 @strlen(i8* %183)
  %185 = sext i32 %184 to i64
  store i64 %185, i64* %24, align 8
  %186 = load i64, i64* %24, align 8
  %187 = load i64, i64* %6, align 8
  %188 = sub i64 %187, 1
  %189 = call i64 @min(i64 %186, i64 %188)
  store i64 %189, i64* %24, align 8
  store i64 0, i64* %25, align 8
  %190 = load i32, i32* %16, align 4
  %191 = sub nsw i32 %190, 2
  store i32 %191, i32* %20, align 4
  %192 = load i32, i32* %13, align 4
  %193 = add nsw i32 %192, 3
  %194 = sext i32 %193 to i64
  store i64 %194, i64* %21, align 8
  %195 = load i32, i32* %14, align 4
  %196 = sub nsw i32 %195, 3
  %197 = sext i32 %196 to i64
  store i64 %197, i64* %22, align 8
  %198 = load i64, i64* %21, align 8
  %199 = load i32, i32* %20, align 4
  %200 = load i64, i64* %22, align 8
  %201 = load i32, i32* %20, align 4
  %202 = load i32, i32* @UiEditBoxTextColor, align 4
  %203 = load i32, i32* @UiEditBoxBgColor, align 4
  %204 = call i32 @ATTR(i32 %202, i32 %203)
  %205 = call i32 @UiFillArea(i64 %198, i32 %199, i64 %200, i32 %201, i8 signext 32, i32 %204)
  %206 = load i64, i64* %21, align 8
  %207 = load i32, i32* %20, align 4
  %208 = load i64, i64* %22, align 8
  %209 = load i64, i64* %21, align 8
  %210 = sub i64 %208, %209
  %211 = add i64 %210, 1
  %212 = load i8*, i8** %5, align 8
  %213 = load i32, i32* @UiEditBoxTextColor, align 4
  %214 = load i32, i32* @UiEditBoxBgColor, align 4
  %215 = call i32 @ATTR(i32 %213, i32 %214)
  %216 = call i32 @UiDrawText2(i64 %206, i32 %207, i64 %211, i8* %212, i32 %215)
  %217 = load i64, i64* %21, align 8
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %23, align 4
  %219 = load i32, i32* %23, align 4
  %220 = load i32, i32* %20, align 4
  %221 = call i32 @MachVideoSetTextCursorPosition(i32 %219, i32 %220)
  %222 = load i64, i64* @TRUE, align 8
  %223 = call i32 @MachVideoHideShowTextCursor(i64 %222)
  %224 = call i32 @UiDrawStatusText(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %225 = call i32 (...) @VideoCopyOffScreenBufferToVRAM()
  br label %226

226:                                              ; preds = %449, %182
  %227 = call i64 (...) @MachConsKbHit()
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %421

229:                                              ; preds = %226
  %230 = load i64, i64* @FALSE, align 8
  store i64 %230, i64* %19, align 8
  %231 = call i64 (...) @MachConsGetCh()
  store i64 %231, i64* %18, align 8
  %232 = load i64, i64* %18, align 8
  %233 = load i64, i64* @KEY_EXTENDED, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %229
  %236 = load i64, i64* @TRUE, align 8
  store i64 %236, i64* %19, align 8
  %237 = call i64 (...) @MachConsGetCh()
  store i64 %237, i64* %18, align 8
  br label %238

238:                                              ; preds = %235, %229
  %239 = load i64, i64* %18, align 8
  %240 = load i64, i64* @KEY_ENTER, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %244

242:                                              ; preds = %238
  %243 = load i64, i64* @TRUE, align 8
  store i64 %243, i64* %27, align 8
  br label %470

244:                                              ; preds = %238
  %245 = load i64, i64* %18, align 8
  %246 = load i64, i64* @KEY_ESC, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %250

248:                                              ; preds = %244
  %249 = load i64, i64* @FALSE, align 8
  store i64 %249, i64* %27, align 8
  br label %470

250:                                              ; preds = %244
  %251 = load i64, i64* %18, align 8
  %252 = load i64, i64* @KEY_BACKSPACE, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %286

254:                                              ; preds = %250
  %255 = load i64, i64* %24, align 8
  %256 = icmp ugt i64 %255, 0
  br i1 %256, label %257, label %283

257:                                              ; preds = %254
  %258 = load i64, i64* %25, align 8
  %259 = icmp ugt i64 %258, 0
  br i1 %259, label %260, label %283

260:                                              ; preds = %257
  %261 = load i64, i64* %25, align 8
  %262 = load i64, i64* %24, align 8
  %263 = icmp ule i64 %261, %262
  br i1 %263, label %264, label %283

264:                                              ; preds = %260
  %265 = load i64, i64* %25, align 8
  %266 = add i64 %265, -1
  store i64 %266, i64* %25, align 8
  %267 = load i8*, i8** %5, align 8
  %268 = load i64, i64* %25, align 8
  %269 = getelementptr inbounds i8, i8* %267, i64 %268
  %270 = load i8*, i8** %5, align 8
  %271 = load i64, i64* %25, align 8
  %272 = getelementptr inbounds i8, i8* %270, i64 %271
  %273 = getelementptr inbounds i8, i8* %272, i64 1
  %274 = load i64, i64* %24, align 8
  %275 = load i64, i64* %25, align 8
  %276 = sub i64 %274, %275
  %277 = call i32 @memmove(i8* %269, i8* %273, i64 %276)
  %278 = load i64, i64* %24, align 8
  %279 = add i64 %278, -1
  store i64 %279, i64* %24, align 8
  %280 = load i8*, i8** %5, align 8
  %281 = load i64, i64* %24, align 8
  %282 = getelementptr inbounds i8, i8* %280, i64 %281
  store i8 0, i8* %282, align 1
  br label %285

283:                                              ; preds = %260, %257, %254
  %284 = call i32 (...) @MachBeep()
  br label %285

285:                                              ; preds = %283, %264
  br label %418

286:                                              ; preds = %250
  %287 = load i64, i64* %19, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %320

289:                                              ; preds = %286
  %290 = load i64, i64* %18, align 8
  %291 = load i64, i64* @KEY_DELETE, align 8
  %292 = icmp eq i64 %290, %291
  br i1 %292, label %293, label %320

293:                                              ; preds = %289
  %294 = load i64, i64* %24, align 8
  %295 = icmp ugt i64 %294, 0
  br i1 %295, label %296, label %317

296:                                              ; preds = %293
  %297 = load i64, i64* %25, align 8
  %298 = load i64, i64* %24, align 8
  %299 = icmp ult i64 %297, %298
  br i1 %299, label %300, label %317

300:                                              ; preds = %296
  %301 = load i8*, i8** %5, align 8
  %302 = load i64, i64* %25, align 8
  %303 = getelementptr inbounds i8, i8* %301, i64 %302
  %304 = load i8*, i8** %5, align 8
  %305 = load i64, i64* %25, align 8
  %306 = getelementptr inbounds i8, i8* %304, i64 %305
  %307 = getelementptr inbounds i8, i8* %306, i64 1
  %308 = load i64, i64* %24, align 8
  %309 = load i64, i64* %25, align 8
  %310 = sub i64 %308, %309
  %311 = call i32 @memmove(i8* %303, i8* %307, i64 %310)
  %312 = load i64, i64* %24, align 8
  %313 = add i64 %312, -1
  store i64 %313, i64* %24, align 8
  %314 = load i8*, i8** %5, align 8
  %315 = load i64, i64* %24, align 8
  %316 = getelementptr inbounds i8, i8* %314, i64 %315
  store i8 0, i8* %316, align 1
  br label %319

317:                                              ; preds = %296, %293
  %318 = call i32 (...) @MachBeep()
  br label %319

319:                                              ; preds = %317, %300
  br label %417

320:                                              ; preds = %289, %286
  %321 = load i64, i64* %19, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %328

323:                                              ; preds = %320
  %324 = load i64, i64* %18, align 8
  %325 = load i64, i64* @KEY_HOME, align 8
  %326 = icmp eq i64 %324, %325
  br i1 %326, label %327, label %328

327:                                              ; preds = %323
  store i64 0, i64* %25, align 8
  br label %416

328:                                              ; preds = %323, %320
  %329 = load i64, i64* %19, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %337

331:                                              ; preds = %328
  %332 = load i64, i64* %18, align 8
  %333 = load i64, i64* @KEY_END, align 8
  %334 = icmp eq i64 %332, %333
  br i1 %334, label %335, label %337

335:                                              ; preds = %331
  %336 = load i64, i64* %24, align 8
  store i64 %336, i64* %25, align 8
  br label %415

337:                                              ; preds = %331, %328
  %338 = load i64, i64* %19, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %354

340:                                              ; preds = %337
  %341 = load i64, i64* %18, align 8
  %342 = load i64, i64* @KEY_RIGHT, align 8
  %343 = icmp eq i64 %341, %342
  br i1 %343, label %344, label %354

344:                                              ; preds = %340
  %345 = load i64, i64* %25, align 8
  %346 = load i64, i64* %24, align 8
  %347 = icmp ult i64 %345, %346
  br i1 %347, label %348, label %351

348:                                              ; preds = %344
  %349 = load i64, i64* %25, align 8
  %350 = add i64 %349, 1
  store i64 %350, i64* %25, align 8
  br label %353

351:                                              ; preds = %344
  %352 = call i32 (...) @MachBeep()
  br label %353

353:                                              ; preds = %351, %348
  br label %414

354:                                              ; preds = %340, %337
  %355 = load i64, i64* %19, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %370

357:                                              ; preds = %354
  %358 = load i64, i64* %18, align 8
  %359 = load i64, i64* @KEY_LEFT, align 8
  %360 = icmp eq i64 %358, %359
  br i1 %360, label %361, label %370

361:                                              ; preds = %357
  %362 = load i64, i64* %25, align 8
  %363 = icmp ugt i64 %362, 0
  br i1 %363, label %364, label %367

364:                                              ; preds = %361
  %365 = load i64, i64* %25, align 8
  %366 = add i64 %365, -1
  store i64 %366, i64* %25, align 8
  br label %369

367:                                              ; preds = %361
  %368 = call i32 (...) @MachBeep()
  br label %369

369:                                              ; preds = %367, %364
  br label %413

370:                                              ; preds = %357, %354
  %371 = load i64, i64* %19, align 8
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %410, label %373

373:                                              ; preds = %370
  %374 = load i64, i64* %24, align 8
  %375 = load i64, i64* %6, align 8
  %376 = sub i64 %375, 1
  %377 = icmp ult i64 %374, %376
  br i1 %377, label %378, label %407

378:                                              ; preds = %373
  %379 = load i64, i64* %25, align 8
  %380 = load i64, i64* %6, align 8
  %381 = sub i64 %380, 1
  %382 = icmp ult i64 %379, %381
  br i1 %382, label %383, label %407

383:                                              ; preds = %378
  %384 = load i8*, i8** %5, align 8
  %385 = load i64, i64* %25, align 8
  %386 = getelementptr inbounds i8, i8* %384, i64 %385
  %387 = getelementptr inbounds i8, i8* %386, i64 1
  %388 = load i8*, i8** %5, align 8
  %389 = load i64, i64* %25, align 8
  %390 = getelementptr inbounds i8, i8* %388, i64 %389
  %391 = load i64, i64* %24, align 8
  %392 = load i64, i64* %25, align 8
  %393 = sub i64 %391, %392
  %394 = call i32 @memmove(i8* %387, i8* %390, i64 %393)
  %395 = load i64, i64* %18, align 8
  %396 = trunc i64 %395 to i8
  %397 = load i8*, i8** %5, align 8
  %398 = load i64, i64* %25, align 8
  %399 = getelementptr inbounds i8, i8* %397, i64 %398
  store i8 %396, i8* %399, align 1
  %400 = load i64, i64* %25, align 8
  %401 = add i64 %400, 1
  store i64 %401, i64* %25, align 8
  %402 = load i64, i64* %24, align 8
  %403 = add i64 %402, 1
  store i64 %403, i64* %24, align 8
  %404 = load i8*, i8** %5, align 8
  %405 = load i64, i64* %24, align 8
  %406 = getelementptr inbounds i8, i8* %404, i64 %405
  store i8 0, i8* %406, align 1
  br label %409

407:                                              ; preds = %378, %373
  %408 = call i32 (...) @MachBeep()
  br label %409

409:                                              ; preds = %407, %383
  br label %412

410:                                              ; preds = %370
  %411 = call i32 (...) @MachBeep()
  br label %412

412:                                              ; preds = %410, %409
  br label %413

413:                                              ; preds = %412, %369
  br label %414

414:                                              ; preds = %413, %353
  br label %415

415:                                              ; preds = %414, %335
  br label %416

416:                                              ; preds = %415, %327
  br label %417

417:                                              ; preds = %416, %319
  br label %418

418:                                              ; preds = %417, %285
  br label %419

419:                                              ; preds = %418
  br label %420

420:                                              ; preds = %419
  br label %421

421:                                              ; preds = %420, %226
  %422 = load i64, i64* %21, align 8
  %423 = load i32, i32* %20, align 4
  %424 = load i64, i64* %22, align 8
  %425 = load i32, i32* %20, align 4
  %426 = load i32, i32* @UiEditBoxTextColor, align 4
  %427 = load i32, i32* @UiEditBoxBgColor, align 4
  %428 = call i32 @ATTR(i32 %426, i32 %427)
  %429 = call i32 @UiFillArea(i64 %422, i32 %423, i64 %424, i32 %425, i8 signext 32, i32 %428)
  %430 = load i64, i64* %25, align 8
  %431 = load i64, i64* %22, align 8
  %432 = load i64, i64* %21, align 8
  %433 = sub i64 %431, %432
  %434 = icmp ugt i64 %430, %433
  br i1 %434, label %435, label %444

435:                                              ; preds = %421
  %436 = load i64, i64* %25, align 8
  %437 = load i64, i64* %22, align 8
  %438 = load i64, i64* %21, align 8
  %439 = sub i64 %437, %438
  %440 = sub i64 %436, %439
  %441 = trunc i64 %440 to i32
  store i32 %441, i32* %26, align 4
  %442 = load i64, i64* %22, align 8
  %443 = trunc i64 %442 to i32
  store i32 %443, i32* %23, align 4
  br label %449

444:                                              ; preds = %421
  store i32 0, i32* %26, align 4
  %445 = load i64, i64* %21, align 8
  %446 = load i64, i64* %25, align 8
  %447 = add i64 %445, %446
  %448 = trunc i64 %447 to i32
  store i32 %448, i32* %23, align 4
  br label %449

449:                                              ; preds = %444, %435
  %450 = load i64, i64* %21, align 8
  %451 = load i32, i32* %20, align 4
  %452 = load i64, i64* %22, align 8
  %453 = load i64, i64* %21, align 8
  %454 = sub i64 %452, %453
  %455 = add i64 %454, 1
  %456 = load i8*, i8** %5, align 8
  %457 = load i32, i32* %26, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i8, i8* %456, i64 %458
  %460 = load i32, i32* @UiEditBoxTextColor, align 4
  %461 = load i32, i32* @UiEditBoxBgColor, align 4
  %462 = call i32 @ATTR(i32 %460, i32 %461)
  %463 = call i32 @UiDrawText2(i64 %450, i32 %451, i64 %455, i8* %459, i32 %462)
  %464 = load i32, i32* %23, align 4
  %465 = load i32, i32* %20, align 4
  %466 = call i32 @MachVideoSetTextCursorPosition(i32 %464, i32 %465)
  %467 = call i32 (...) @TuiUpdateDateTime()
  %468 = call i32 (...) @VideoCopyOffScreenBufferToVRAM()
  %469 = call i32 (...) @MachHwIdle()
  br label %226

470:                                              ; preds = %248, %242
  %471 = load i64, i64* @FALSE, align 8
  %472 = call i32 @MachVideoHideShowTextCursor(i64 %471)
  %473 = load i32, i32* %28, align 4
  %474 = call i32 @TuiRestoreScreen(i32 %473)
  %475 = load i32, i32* %28, align 4
  %476 = load i32, i32* @TAG_TUI_SCREENBUFFER, align 4
  %477 = call i32 @FrLdrTempFree(i32 %475, i32 %476)
  %478 = load i64, i64* %27, align 8
  ret i64 %478
}

declare dso_local i32 @FrLdrTempAlloc(i32, i32) #1

declare dso_local i32 @TuiSaveScreen(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @TuiDrawBox(i32, i32, i32, i32, i32, i32, i64, i64, i32) #1

declare dso_local i32 @ATTR(i32, i32) #1

declare dso_local i32 @UiDrawText(i32, i32, i64*, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @UiFillArea(i64, i32, i64, i32, i8 signext, i32) #1

declare dso_local i32 @UiDrawText2(i64, i32, i64, i8*, i32) #1

declare dso_local i32 @MachVideoSetTextCursorPosition(i32, i32) #1

declare dso_local i32 @MachVideoHideShowTextCursor(i64) #1

declare dso_local i32 @UiDrawStatusText(i8*) #1

declare dso_local i32 @VideoCopyOffScreenBufferToVRAM(...) #1

declare dso_local i64 @MachConsKbHit(...) #1

declare dso_local i64 @MachConsGetCh(...) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @MachBeep(...) #1

declare dso_local i32 @TuiUpdateDateTime(...) #1

declare dso_local i32 @MachHwIdle(...) #1

declare dso_local i32 @TuiRestoreScreen(i32) #1

declare dso_local i32 @FrLdrTempFree(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

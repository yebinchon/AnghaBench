; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_LISTVIEW_ProcessLetterKeys.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_listview.c_LISTVIEW_ProcessLetterKeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i32, i8*, i8, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32*, i64, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i8* }

@MAX_PATH = common dso_local global i32 0, align 4
@KEY_DELAY = common dso_local global i64 0, align 8
@LVS_OWNERDATA = common dso_local global i32 0, align 4
@LVFI_WRAP = common dso_local global i32 0, align 4
@LVFI_PARTIAL = common dso_local global i32 0, align 4
@LVN_ODFINDITEMW = common dso_local global i32 0, align 4
@LVIF_TEXT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, i8, i32)* @LISTVIEW_ProcessLetterKeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @LISTVIEW_ProcessLetterKeys(%struct.TYPE_12__* %0, i8 signext %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_11__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_10__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %23 = load i8, i8* %6, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28, %25, %3
  store i64 0, i64* %4, align 8
  store i32 1, i32* %15, align 4
  br label %384

34:                                               ; preds = %28
  %35 = load i8, i8* %6, align 1
  %36 = call i32 @iswalnum(i8 signext %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %147, label %38

38:                                               ; preds = %34
  %39 = load i8, i8* %6, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 46
  br i1 %41, label %42, label %147

42:                                               ; preds = %38
  %43 = load i8, i8* %6, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 96
  br i1 %45, label %46, label %147

46:                                               ; preds = %42
  %47 = load i8, i8* %6, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 33
  br i1 %49, label %50, label %147

50:                                               ; preds = %46
  %51 = load i8, i8* %6, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 64
  br i1 %53, label %54, label %147

54:                                               ; preds = %50
  %55 = load i8, i8* %6, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 35
  br i1 %57, label %58, label %147

58:                                               ; preds = %54
  %59 = load i8, i8* %6, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 36
  br i1 %61, label %62, label %147

62:                                               ; preds = %58
  %63 = load i8, i8* %6, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 37
  br i1 %65, label %66, label %147

66:                                               ; preds = %62
  %67 = load i8, i8* %6, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 94
  br i1 %69, label %70, label %147

70:                                               ; preds = %66
  %71 = load i8, i8* %6, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 38
  br i1 %73, label %74, label %147

74:                                               ; preds = %70
  %75 = load i8, i8* %6, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 42
  br i1 %77, label %78, label %147

78:                                               ; preds = %74
  %79 = load i8, i8* %6, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 40
  br i1 %81, label %82, label %147

82:                                               ; preds = %78
  %83 = load i8, i8* %6, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 41
  br i1 %85, label %86, label %147

86:                                               ; preds = %82
  %87 = load i8, i8* %6, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 45
  br i1 %89, label %90, label %147

90:                                               ; preds = %86
  %91 = load i8, i8* %6, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 95
  br i1 %93, label %94, label %147

94:                                               ; preds = %90
  %95 = load i8, i8* %6, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 43
  br i1 %97, label %98, label %147

98:                                               ; preds = %94
  %99 = load i8, i8* %6, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 61
  br i1 %101, label %102, label %147

102:                                              ; preds = %98
  %103 = load i8, i8* %6, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 92
  br i1 %105, label %106, label %147

106:                                              ; preds = %102
  %107 = load i8, i8* %6, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 93
  br i1 %109, label %110, label %147

110:                                              ; preds = %106
  %111 = load i8, i8* %6, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 125
  br i1 %113, label %114, label %147

114:                                              ; preds = %110
  %115 = load i8, i8* %6, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp ne i32 %116, 91
  br i1 %117, label %118, label %147

118:                                              ; preds = %114
  %119 = load i8, i8* %6, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp ne i32 %120, 123
  br i1 %121, label %122, label %147

122:                                              ; preds = %118
  %123 = load i8, i8* %6, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp ne i32 %124, 47
  br i1 %125, label %126, label %147

126:                                              ; preds = %122
  %127 = load i8, i8* %6, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp ne i32 %128, 63
  br i1 %129, label %130, label %147

130:                                              ; preds = %126
  %131 = load i8, i8* %6, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 62
  br i1 %133, label %134, label %147

134:                                              ; preds = %130
  %135 = load i8, i8* %6, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %136, 60
  br i1 %137, label %138, label %147

138:                                              ; preds = %134
  %139 = load i8, i8* %6, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp ne i32 %140, 44
  br i1 %141, label %142, label %147

142:                                              ; preds = %138
  %143 = load i8, i8* %6, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp ne i32 %144, 126
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  store i64 0, i64* %4, align 8
  store i32 1, i32* %15, align 4
  br label %384

147:                                              ; preds = %142, %138, %134, %130, %126, %122, %118, %114, %110, %106, %102, %98, %94, %90, %86, %82, %78, %74, %70, %66, %62, %58, %54, %50, %46, %42, %38, %34
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %10, align 8
  %151 = call i64 (...) @GetTickCount()
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  store i64 %151, i64* %153, align 8
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* %10, align 8
  %158 = sub nsw i64 %156, %157
  store i64 %158, i64* %14, align 8
  %159 = load i64, i64* %14, align 8
  %160 = icmp sge i64 %159, 0
  br i1 %160, label %161, label %195

161:                                              ; preds = %147
  %162 = load i64, i64* %14, align 8
  %163 = load i64, i64* @KEY_DELAY, align 8
  %164 = icmp slt i64 %162, %163
  br i1 %164, label %165, label %195

165:                                              ; preds = %161
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @MAX_PATH, align 4
  %170 = sub nsw i32 %169, 1
  %171 = icmp slt i32 %168, %170
  br i1 %171, label %172, label %183

172:                                              ; preds = %165
  %173 = load i8, i8* %6, align 1
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 3
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %178, align 8
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds i8, i8* %176, i64 %181
  store i8 %173, i8* %182, align 1
  br label %183

183:                                              ; preds = %172, %165
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 4
  %186 = load i8, i8* %185, align 8
  %187 = sext i8 %186 to i32
  %188 = load i8, i8* %6, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp ne i32 %187, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %183
  store i8 0, i8* %6, align 1
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 4
  store i8 0, i8* %193, align 8
  br label %194

194:                                              ; preds = %191, %183
  br label %206

195:                                              ; preds = %161, %147
  %196 = load i8, i8* %6, align 1
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 4
  store i8 %196, i8* %198, align 8
  %199 = load i8, i8* %6, align 1
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 3
  %202 = load i8*, i8** %201, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 0
  store i8 %199, i8* %203, align 1
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 2
  store i32 1, i32* %205, align 8
  br label %206

206:                                              ; preds = %195, %194
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 4
  %210 = icmp sge i32 %209, 0
  br i1 %210, label %211, label %240

211:                                              ; preds = %206
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp sgt i64 %214, 1
  br i1 %215, label %216, label %240

216:                                              ; preds = %211
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = icmp sgt i32 %219, 1
  br i1 %220, label %221, label %225

221:                                              ; preds = %216
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 4
  br label %230

225:                                              ; preds = %216
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 5
  %228 = load i32, i32* %227, align 4
  %229 = add nsw i32 %228, 1
  br label %230

230:                                              ; preds = %225, %221
  %231 = phi i32 [ %224, %221 ], [ %229, %225 ]
  store i32 %231, i32* %12, align 4
  %232 = load i32, i32* %12, align 4
  %233 = sext i32 %232 to i64
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = icmp eq i64 %233, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %230
  store i32 0, i32* %12, align 4
  br label %239

239:                                              ; preds = %238, %230
  br label %241

240:                                              ; preds = %211, %206
  store i32 0, i32* %12, align 4
  br label %241

241:                                              ; preds = %240, %239
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 6
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @LVS_OWNERDATA, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %276

248:                                              ; preds = %241
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %250 = call i32 @memset(%struct.TYPE_13__* %249, i32 0, i32 16)
  %251 = load i32, i32* @LVFI_WRAP, align 4
  %252 = load i32, i32* @LVFI_PARTIAL, align 4
  %253 = or i32 %251, %252
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 0
  store i32 %253, i32* %255, align 8
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 3
  %258 = load i8*, i8** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 1
  store i8* %258, i8** %260, align 8
  %261 = load i32, i32* %12, align 4
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  store i32 %261, i32* %262, align 8
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 3
  %265 = load i8*, i8** %264, align 8
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i8, i8* %265, i64 %269
  store i8 0, i8* %270, align 1
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %272 = load i32, i32* @LVN_ODFINDITEMW, align 4
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %274 = ptrtoint i32* %273 to i32
  %275 = call i64 @notify_hdr(%struct.TYPE_12__* %271, i32 %272, i32 %274)
  store i64 %275, i64* %13, align 8
  br label %375

276:                                              ; preds = %241
  %277 = load i32, i32* %12, align 4
  store i32 %277, i32* %17, align 4
  store i64 -1, i64* %13, align 8
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = trunc i64 %280 to i32
  store i32 %281, i32* %18, align 4
  br label %282

282:                                              ; preds = %373, %276
  br label %283

283:                                              ; preds = %282
  %284 = load i32, i32* %17, align 4
  %285 = sext i32 %284 to i64
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = icmp eq i64 %285, %288
  br i1 %289, label %290, label %295

290:                                              ; preds = %283
  %291 = load i32, i32* %12, align 4
  %292 = icmp sgt i32 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %290
  %294 = load i32, i32* %12, align 4
  store i32 %294, i32* %18, align 4
  store i32 0, i32* %12, align 4
  br label %295

295:                                              ; preds = %293, %290, %283
  %296 = load i32, i32* %12, align 4
  store i32 %296, i32* %17, align 4
  br label %297

297:                                              ; preds = %349, %295
  %298 = load i32, i32* %17, align 4
  %299 = load i32, i32* %18, align 4
  %300 = icmp slt i32 %298, %299
  br i1 %300, label %301, label %352

301:                                              ; preds = %297
  %302 = load i32, i32* @LVIF_TEXT, align 4
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 4
  store i32 %302, i32* %303, align 8
  %304 = load i32, i32* %17, align 4
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  store i32 %304, i32* %305, align 8
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 3
  store i64 0, i64* %306, align 8
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  store i32* %22, i32** %307, align 8
  %308 = load i32, i32* @MAX_PATH, align 4
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  store i32 %308, i32* %309, align 4
  %310 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %311 = call i32 @LISTVIEW_GetItemW(%struct.TYPE_12__* %310, %struct.TYPE_11__* %11)
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %314, label %313

313:                                              ; preds = %301
  store i64 0, i64* %4, align 8
  store i32 1, i32* %15, align 4
  br label %384

314:                                              ; preds = %301
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %316 = load i32*, i32** %315, align 8
  %317 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 3
  %319 = load i8*, i8** %318, align 8
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 8
  %323 = call i32 @lstrncmpiW(i32* %316, i8* %319, i32 %322)
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %328, label %325

325:                                              ; preds = %314
  %326 = load i32, i32* %17, align 4
  %327 = sext i32 %326 to i64
  store i64 %327, i64* %13, align 8
  br label %352

328:                                              ; preds = %314
  %329 = load i64, i64* %13, align 8
  %330 = icmp eq i64 %329, -1
  br i1 %330, label %331, label %347

331:                                              ; preds = %328
  %332 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 8
  %335 = icmp eq i32 %334, 1
  br i1 %335, label %336, label %347

336:                                              ; preds = %331
  %337 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %338 = load i32*, i32** %337, align 8
  %339 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %339, i32 0, i32 3
  %341 = load i8*, i8** %340, align 8
  %342 = call i32 @lstrncmpiW(i32* %338, i8* %341, i32 1)
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %347, label %344

344:                                              ; preds = %336
  %345 = load i32, i32* %17, align 4
  %346 = sext i32 %345 to i64
  store i64 %346, i64* %13, align 8
  br label %347

347:                                              ; preds = %344, %336, %331, %328
  br label %348

348:                                              ; preds = %347
  br label %349

349:                                              ; preds = %348
  %350 = load i32, i32* %17, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %17, align 4
  br label %297

352:                                              ; preds = %325, %297
  %353 = load i64, i64* %13, align 8
  %354 = icmp ne i64 %353, -1
  br i1 %354, label %372, label %355

355:                                              ; preds = %352
  %356 = load i32, i32* %18, align 4
  %357 = sext i32 %356 to i64
  %358 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %359 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = icmp ne i64 %357, %360
  br i1 %361, label %372, label %362

362:                                              ; preds = %355
  %363 = load i32, i32* %12, align 4
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %373

365:                                              ; preds = %362
  %366 = load i32, i32* %18, align 4
  %367 = sext i32 %366 to i64
  %368 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %369 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = icmp eq i64 %367, %370
  br i1 %371, label %372, label %373

372:                                              ; preds = %365, %355, %352
  br label %374

373:                                              ; preds = %365, %362
  br label %282

374:                                              ; preds = %372
  br label %375

375:                                              ; preds = %374, %248
  %376 = load i64, i64* %13, align 8
  %377 = icmp ne i64 %376, -1
  br i1 %377, label %378, label %383

378:                                              ; preds = %375
  %379 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %380 = load i64, i64* %13, align 8
  %381 = load i32, i32* @FALSE, align 4
  %382 = call i32 @LISTVIEW_KeySelection(%struct.TYPE_12__* %379, i64 %380, i32 %381)
  br label %383

383:                                              ; preds = %378, %375
  store i64 0, i64* %4, align 8
  store i32 1, i32* %15, align 4
  br label %384

384:                                              ; preds = %383, %313, %146, %33
  %385 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %385)
  %386 = load i64, i64* %4, align 8
  ret i64 %386
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @iswalnum(i8 signext) #2

declare dso_local i64 @GetTickCount(...) #2

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #2

declare dso_local i64 @notify_hdr(%struct.TYPE_12__*, i32, i32) #2

declare dso_local i32 @LISTVIEW_GetItemW(%struct.TYPE_12__*, %struct.TYPE_11__*) #2

declare dso_local i32 @lstrncmpiW(i32*, i8*, i32) #2

declare dso_local i32 @LISTVIEW_KeySelection(%struct.TYPE_12__*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

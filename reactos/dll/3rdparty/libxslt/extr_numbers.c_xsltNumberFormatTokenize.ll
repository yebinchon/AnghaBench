; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_numbers.c_xsltNumberFormatTokenize.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_numbers.c_xsltNumberFormatTokenize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i32*, %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32, i32, i32* }

@DEFAULT_TOKEN = common dso_local global i32 0, align 4
@default_token = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@DEFAULT_SEPARATOR = common dso_local global i32 0, align 4
@MAX_TOKENS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, %struct.TYPE_6__*)* @xsltNumberFormatTokenize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsltNumberFormatTokenize(i64* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* @DEFAULT_TOKEN, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @default_token, i32 0, i32 2), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @default_token, i32 0, i32 0), align 4
  %10 = load i32, i32* @DEFAULT_SEPARATOR, align 4
  %11 = call i32 @BAD_CAST(i32 %10)
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @default_token, i32 0, i32 1), align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  store i32* null, i32** %13, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  store i32* null, i32** %18, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %44, %2
  %22 = load i64*, i64** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = call i32 @xmlStringCurrentChar(i32* null, i64* %25, i32* %8)
  store i32 %26, i32* %7, align 4
  %27 = call i64 @IS_LETTER(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @IS_DIGIT(i32 %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %29, %21
  %34 = phi i1 [ true, %21 ], [ %32, %29 ]
  %35 = xor i1 %34, true
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load i64*, i64** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %48

44:                                               ; preds = %36
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %21

48:                                               ; preds = %43, %33
  %49 = load i32, i32* %5, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i64*, i64** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i8* @xmlStrndup(i64* %52, i32 %53)
  %55 = bitcast i8* %54 to i32*
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  store i32* %55, i32** %57, align 8
  br label %58

58:                                               ; preds = %51, %48
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %278, %58
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MAX_TOKENS, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %283

67:                                               ; preds = %61
  %68 = load i64*, i64** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %283

75:                                               ; preds = %67
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ugt i64 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %75
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  store i32* %83, i32** %91, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  store i32* null, i32** %93, align 8
  br label %94

94:                                               ; preds = %80, %75
  %95 = load i64*, i64** %3, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = call i32 @xmlStringCurrentChar(i32* null, i64* %98, i32* %8)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i64 @IS_DIGIT_ONE(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %94
  %104 = load i32, i32* %7, align 4
  %105 = call i64 @IS_DIGIT_ZERO(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %163

107:                                              ; preds = %103, %94
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  store i32 1, i32* %115, align 8
  br label %116

116:                                              ; preds = %120, %107
  %117 = load i32, i32* %7, align 4
  %118 = call i64 @IS_DIGIT_ZERO(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %139

120:                                              ; preds = %116
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %5, align 4
  %134 = load i64*, i64** %3, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = call i32 @xmlStringCurrentChar(i32* null, i64* %137, i32* %8)
  store i32 %138, i32* %7, align 4
  br label %116

139:                                              ; preds = %116
  %140 = load i32, i32* %7, align 4
  %141 = call i64 @IS_DIGIT_ONE(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %162

143:                                              ; preds = %139
  %144 = load i32, i32* %7, align 4
  %145 = sub nsw i32 %144, 1
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  store i32 %145, i32* %153, align 4
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %5, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %5, align 4
  %157 = load i64*, i64** %3, align 8
  %158 = load i32, i32* %5, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %157, i64 %159
  %161 = call i32 @xmlStringCurrentChar(i32* null, i64* %160, i32* %8)
  store i32 %161, i32* %7, align 4
  br label %162

162:                                              ; preds = %143, %139
  br label %215

163:                                              ; preds = %103
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = icmp eq i64 %165, 65
  br i1 %166, label %179, label %167

167:                                              ; preds = %163
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = icmp eq i64 %169, 97
  br i1 %170, label %179, label %171

171:                                              ; preds = %167
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = icmp eq i64 %173, 73
  br i1 %174, label %179, label %175

175:                                              ; preds = %171
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = icmp eq i64 %177, 105
  br i1 %178, label %179, label %197

179:                                              ; preds = %175, %171, %167, %163
  %180 = load i32, i32* %7, align 4
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %182, align 8
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 1
  store i32 %180, i32* %188, align 4
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* %5, align 4
  %191 = add nsw i32 %190, %189
  store i32 %191, i32* %5, align 4
  %192 = load i64*, i64** %3, align 8
  %193 = load i32, i32* %5, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i64, i64* %192, i64 %194
  %196 = call i32 @xmlStringCurrentChar(i32* null, i64* %195, i32* %8)
  store i32 %196, i32* %7, align 4
  br label %214

197:                                              ; preds = %175
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 2
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %199, align 8
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 1
  store i32 48, i32* %205, align 4
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 2
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %207, align 8
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  store i32 1, i32* %213, align 8
  br label %214

214:                                              ; preds = %197, %179
  br label %215

215:                                              ; preds = %214, %162
  br label %216

216:                                              ; preds = %226, %215
  %217 = load i32, i32* %7, align 4
  %218 = call i64 @IS_LETTER(i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %224, label %220

220:                                              ; preds = %216
  %221 = load i32, i32* %7, align 4
  %222 = call i64 @IS_DIGIT(i32 %221)
  %223 = icmp ne i64 %222, 0
  br label %224

224:                                              ; preds = %220, %216
  %225 = phi i1 [ true, %216 ], [ %223, %220 ]
  br i1 %225, label %226, label %235

226:                                              ; preds = %224
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* %5, align 4
  %229 = add nsw i32 %228, %227
  store i32 %229, i32* %5, align 4
  %230 = load i64*, i64** %3, align 8
  %231 = load i32, i32* %5, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i64, i64* %230, i64 %232
  %234 = call i32 @xmlStringCurrentChar(i32* null, i64* %233, i32* %8)
  store i32 %234, i32* %7, align 4
  br label %216

235:                                              ; preds = %224
  %236 = load i32, i32* %5, align 4
  store i32 %236, i32* %6, align 4
  br label %237

237:                                              ; preds = %252, %235
  %238 = load i32, i32* %7, align 4
  %239 = call i64 @IS_LETTER(i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %245, label %241

241:                                              ; preds = %237
  %242 = load i32, i32* %7, align 4
  %243 = call i64 @IS_DIGIT(i32 %242)
  %244 = icmp ne i64 %243, 0
  br label %245

245:                                              ; preds = %241, %237
  %246 = phi i1 [ true, %237 ], [ %244, %241 ]
  %247 = xor i1 %246, true
  br i1 %247, label %248, label %261

248:                                              ; preds = %245
  %249 = load i32, i32* %7, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %248
  br label %261

252:                                              ; preds = %248
  %253 = load i32, i32* %8, align 4
  %254 = load i32, i32* %5, align 4
  %255 = add nsw i32 %254, %253
  store i32 %255, i32* %5, align 4
  %256 = load i64*, i64** %3, align 8
  %257 = load i32, i32* %5, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i64, i64* %256, i64 %258
  %260 = call i32 @xmlStringCurrentChar(i32* null, i64* %259, i32* %8)
  store i32 %260, i32* %7, align 4
  br label %237

261:                                              ; preds = %251, %245
  %262 = load i32, i32* %5, align 4
  %263 = load i32, i32* %6, align 4
  %264 = icmp sgt i32 %262, %263
  br i1 %264, label %265, label %277

265:                                              ; preds = %261
  %266 = load i64*, i64** %3, align 8
  %267 = load i32, i32* %6, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i64, i64* %266, i64 %268
  %270 = load i32, i32* %5, align 4
  %271 = load i32, i32* %6, align 4
  %272 = sub nsw i32 %270, %271
  %273 = call i8* @xmlStrndup(i64* %269, i32 %272)
  %274 = bitcast i8* %273 to i32*
  %275 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 1
  store i32* %274, i32** %276, align 8
  br label %277

277:                                              ; preds = %265, %261
  br label %278

278:                                              ; preds = %277
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = add i64 %281, 1
  store i64 %282, i64* %280, align 8
  br label %61

283:                                              ; preds = %74, %61
  ret void
}

declare dso_local i32 @BAD_CAST(i32) #1

declare dso_local i64 @IS_LETTER(i32) #1

declare dso_local i32 @xmlStringCurrentChar(i32*, i64*, i32*) #1

declare dso_local i64 @IS_DIGIT(i32) #1

declare dso_local i8* @xmlStrndup(i64*, i32) #1

declare dso_local i64 @IS_DIGIT_ONE(i32) #1

declare dso_local i64 @IS_DIGIT_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_regexp.c_CalculateBitmapSize.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_regexp.c_CalculateBitmapSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i8* }

@FALSE = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@js_GetErrorMessage = common dso_local global i32 0, align 4
@JSMSG_BAD_CLASS_RANGE = common dso_local global i32 0, align 4
@REG_FOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_10__*, %struct.TYPE_9__*, i8*, i8*)* @CalculateBitmapSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @CalculateBitmapSize(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %23 = load i8*, i8** @FALSE, align 8
  store i8* %23, i8** %11, align 8
  store i8 0, i8* %13, align 1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load i8*, i8** @TRUE, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store i8* %28, i8** %32, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = icmp eq i8* %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i8*, i8** @TRUE, align 8
  store i8* %37, i8** %5, align 8
  br label %320

38:                                               ; preds = %4
  %39 = load i8*, i8** %8, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 94
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %8, align 8
  %46 = load i8*, i8** @FALSE, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store i8* %46, i8** %50, align 8
  br label %51

51:                                               ; preds = %43, %38
  br label %52

52:                                               ; preds = %312, %245, %51
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = icmp ne i8* %53, %54
  br i1 %55, label %56, label %313

56:                                               ; preds = %52
  %57 = load i8*, i8** @TRUE, align 8
  store i8* %57, i8** %18, align 8
  store i32 0, i32* %19, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  switch i32 %60, label %209 [
    i32 92, label %61
  ]

61:                                               ; preds = %56
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %8, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %8, align 8
  %66 = load i8, i8* %64, align 1
  store i8 %66, i8* %12, align 1
  %67 = load i8, i8* %12, align 1
  %68 = sext i8 %67 to i32
  switch i32 %68, label %205 [
    i32 98, label %69
    i32 102, label %70
    i32 110, label %71
    i32 114, label %72
    i32 116, label %73
    i32 118, label %74
    i32 99, label %75
    i32 120, label %94
    i32 117, label %95
    i32 100, label %131
    i32 68, label %144
    i32 115, label %144
    i32 83, label %144
    i32 119, label %144
    i32 87, label %144
    i32 48, label %157
    i32 49, label %157
    i32 50, label %157
    i32 51, label %157
    i32 52, label %157
    i32 53, label %157
    i32 54, label %157
    i32 55, label %157
  ]

69:                                               ; preds = %61
  store i32 8, i32* %19, align 4
  br label %208

70:                                               ; preds = %61
  store i32 12, i32* %19, align 4
  br label %208

71:                                               ; preds = %61
  store i32 10, i32* %19, align 4
  br label %208

72:                                               ; preds = %61
  store i32 13, i32* %19, align 4
  br label %208

73:                                               ; preds = %61
  store i32 9, i32* %19, align 4
  br label %208

74:                                               ; preds = %61
  store i32 11, i32* %19, align 4
  br label %208

75:                                               ; preds = %61
  %76 = load i8*, i8** %8, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = icmp ult i8* %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = load i8*, i8** %8, align 8
  %81 = load i8, i8* %80, align 1
  %82 = call i32 @RE_IS_LETTER(i8 signext %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %8, align 8
  %87 = load i8, i8* %85, align 1
  %88 = sext i8 %87 to i32
  %89 = and i32 %88, 31
  store i32 %89, i32* %19, align 4
  br label %93

90:                                               ; preds = %79, %75
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 -1
  store i8* %92, i8** %8, align 8
  store i32 92, i32* %19, align 4
  br label %93

93:                                               ; preds = %90, %84
  br label %208

94:                                               ; preds = %61
  store i32 2, i32* %16, align 4
  br label %96

95:                                               ; preds = %61
  store i32 4, i32* %16, align 4
  br label %96

96:                                               ; preds = %95, %94
  store i32 0, i32* %14, align 4
  store i32 0, i32* %17, align 4
  br label %97

97:                                               ; preds = %126, %96
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* %16, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load i8*, i8** %8, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = icmp ult i8* %102, %103
  br label %105

105:                                              ; preds = %101, %97
  %106 = phi i1 [ false, %97 ], [ %104, %101 ]
  br i1 %106, label %107, label %129

107:                                              ; preds = %105
  %108 = load i8*, i8** %8, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %8, align 8
  %110 = load i8, i8* %108, align 1
  store i8 %110, i8* %12, align 1
  %111 = load i8, i8* %12, align 1
  %112 = call i32 @isASCIIHexDigit(i8 signext %111, i32* %15)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %107
  %115 = load i32, i32* %17, align 4
  %116 = add nsw i32 %115, 1
  %117 = load i8*, i8** %8, align 8
  %118 = sext i32 %116 to i64
  %119 = sub i64 0, %118
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  store i8* %120, i8** %8, align 8
  store i32 92, i32* %14, align 4
  br label %129

121:                                              ; preds = %107
  %122 = load i32, i32* %14, align 4
  %123 = shl i32 %122, 4
  %124 = load i32, i32* %15, align 4
  %125 = or i32 %123, %124
  store i32 %125, i32* %14, align 4
  br label %126

126:                                              ; preds = %121
  %127 = load i32, i32* %17, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %17, align 4
  br label %97

129:                                              ; preds = %114, %105
  %130 = load i32, i32* %14, align 4
  store i32 %130, i32* %19, align 4
  br label %208

131:                                              ; preds = %61
  %132 = load i8*, i8** @FALSE, align 8
  store i8* %132, i8** %18, align 8
  %133 = load i8*, i8** %11, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %143

135:                                              ; preds = %131
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @js_GetErrorMessage, align 4
  %140 = load i32, i32* @JSMSG_BAD_CLASS_RANGE, align 4
  %141 = call i32 @JS_ReportErrorNumber(i32 %138, i32 %139, i32* null, i32 %140)
  %142 = load i8*, i8** @FALSE, align 8
  store i8* %142, i8** %5, align 8
  br label %320

143:                                              ; preds = %131
  store i32 57, i32* %19, align 4
  br label %208

144:                                              ; preds = %61, %61, %61, %61, %61
  %145 = load i8*, i8** @FALSE, align 8
  store i8* %145, i8** %18, align 8
  %146 = load i8*, i8** %11, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %156

148:                                              ; preds = %144
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @js_GetErrorMessage, align 4
  %153 = load i32, i32* @JSMSG_BAD_CLASS_RANGE, align 4
  %154 = call i32 @JS_ReportErrorNumber(i32 %151, i32 %152, i32* null, i32 %153)
  %155 = load i8*, i8** @FALSE, align 8
  store i8* %155, i8** %5, align 8
  br label %320

156:                                              ; preds = %144
  store i32 65535, i32* %10, align 4
  store i32 0, i32* %19, align 4
  br label %208

157:                                              ; preds = %61, %61, %61, %61, %61, %61, %61, %61
  %158 = load i8, i8* %12, align 1
  %159 = call i32 @JS7_UNDEC(i8 signext %158)
  store i32 %159, i32* %14, align 4
  %160 = load i8*, i8** %8, align 8
  %161 = load i8, i8* %160, align 1
  store i8 %161, i8* %12, align 1
  %162 = load i8, i8* %12, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp sle i32 48, %163
  br i1 %164, label %165, label %203

165:                                              ; preds = %157
  %166 = load i8, i8* %12, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp sle i32 %167, 55
  br i1 %168, label %169, label %203

169:                                              ; preds = %165
  %170 = load i8*, i8** %8, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %8, align 8
  %172 = load i32, i32* %14, align 4
  %173 = mul nsw i32 8, %172
  %174 = load i8, i8* %12, align 1
  %175 = call i32 @JS7_UNDEC(i8 signext %174)
  %176 = add nsw i32 %173, %175
  store i32 %176, i32* %14, align 4
  %177 = load i8*, i8** %8, align 8
  %178 = load i8, i8* %177, align 1
  store i8 %178, i8* %12, align 1
  %179 = load i8, i8* %12, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp sle i32 48, %180
  br i1 %181, label %182, label %202

182:                                              ; preds = %169
  %183 = load i8, i8* %12, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp sle i32 %184, 55
  br i1 %185, label %186, label %202

186:                                              ; preds = %182
  %187 = load i8*, i8** %8, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %8, align 8
  %189 = load i32, i32* %14, align 4
  %190 = mul nsw i32 8, %189
  %191 = load i8, i8* %12, align 1
  %192 = call i32 @JS7_UNDEC(i8 signext %191)
  %193 = add nsw i32 %190, %192
  store i32 %193, i32* %17, align 4
  %194 = load i32, i32* %17, align 4
  %195 = icmp sle i32 %194, 255
  br i1 %195, label %196, label %198

196:                                              ; preds = %186
  %197 = load i32, i32* %17, align 4
  store i32 %197, i32* %14, align 4
  br label %201

198:                                              ; preds = %186
  %199 = load i8*, i8** %8, align 8
  %200 = getelementptr inbounds i8, i8* %199, i32 -1
  store i8* %200, i8** %8, align 8
  br label %201

201:                                              ; preds = %198, %196
  br label %202

202:                                              ; preds = %201, %182, %169
  br label %203

203:                                              ; preds = %202, %165, %157
  %204 = load i32, i32* %14, align 4
  store i32 %204, i32* %19, align 4
  br label %208

205:                                              ; preds = %61
  %206 = load i8, i8* %12, align 1
  %207 = sext i8 %206 to i32
  store i32 %207, i32* %19, align 4
  br label %208

208:                                              ; preds = %205, %203, %156, %143, %129, %93, %74, %73, %72, %71, %70, %69
  br label %214

209:                                              ; preds = %56
  %210 = load i8*, i8** %8, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %8, align 8
  %212 = load i8, i8* %210, align 1
  %213 = sext i8 %212 to i32
  store i32 %213, i32* %19, align 4
  br label %214

214:                                              ; preds = %209, %208
  %215 = load i8*, i8** %11, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %217, label %232

217:                                              ; preds = %214
  %218 = load i8, i8* %13, align 1
  %219 = sext i8 %218 to i32
  %220 = load i32, i32* %19, align 4
  %221 = icmp sgt i32 %219, %220
  br i1 %221, label %222, label %230

222:                                              ; preds = %217
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @js_GetErrorMessage, align 4
  %227 = load i32, i32* @JSMSG_BAD_CLASS_RANGE, align 4
  %228 = call i32 @JS_ReportErrorNumber(i32 %225, i32 %226, i32* null, i32 %227)
  %229 = load i8*, i8** @FALSE, align 8
  store i8* %229, i8** %5, align 8
  br label %320

230:                                              ; preds = %217
  %231 = load i8*, i8** @FALSE, align 8
  store i8* %231, i8** %11, align 8
  br label %263

232:                                              ; preds = %214
  %233 = load i8*, i8** %18, align 8
  %234 = icmp ne i8* %233, null
  br i1 %234, label %235, label %252

235:                                              ; preds = %232
  %236 = load i8*, i8** %8, align 8
  %237 = load i8*, i8** %9, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 -1
  %239 = icmp ult i8* %236, %238
  br i1 %239, label %240, label %252

240:                                              ; preds = %235
  %241 = load i8*, i8** %8, align 8
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp eq i32 %243, 45
  br i1 %244, label %245, label %251

245:                                              ; preds = %240
  %246 = load i8*, i8** %8, align 8
  %247 = getelementptr inbounds i8, i8* %246, i32 1
  store i8* %247, i8** %8, align 8
  %248 = load i8*, i8** @TRUE, align 8
  store i8* %248, i8** %11, align 8
  %249 = load i32, i32* %19, align 4
  %250 = trunc i32 %249 to i8
  store i8 %250, i8* %13, align 1
  br label %52

251:                                              ; preds = %240
  br label %252

252:                                              ; preds = %251, %235, %232
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @REG_FOLD, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %252
  %260 = load i32, i32* %19, align 4
  %261 = trunc i32 %260 to i8
  store i8 %261, i8* %13, align 1
  br label %262

262:                                              ; preds = %259, %252
  br label %263

263:                                              ; preds = %262, %230
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @REG_FOLD, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %306

270:                                              ; preds = %263
  %271 = load i32, i32* %19, align 4
  %272 = trunc i32 %271 to i8
  store i8 %272, i8* %20, align 1
  %273 = load i8, i8* %13, align 1
  %274 = sext i8 %273 to i32
  store i32 %274, i32* %17, align 4
  br label %275

275:                                              ; preds = %300, %270
  %276 = load i32, i32* %17, align 4
  %277 = load i32, i32* %19, align 4
  %278 = icmp sle i32 %276, %277
  br i1 %278, label %279, label %303

279:                                              ; preds = %275
  %280 = load i32, i32* %17, align 4
  %281 = call signext i8 @towupper(i32 %280)
  store i8 %281, i8* %21, align 1
  %282 = load i32, i32* %17, align 4
  %283 = call signext i8 @towlower(i32 %282)
  store i8 %283, i8* %22, align 1
  %284 = load i8, i8* %20, align 1
  %285 = sext i8 %284 to i32
  %286 = load i8, i8* %21, align 1
  %287 = sext i8 %286 to i32
  %288 = icmp slt i32 %285, %287
  br i1 %288, label %289, label %291

289:                                              ; preds = %279
  %290 = load i8, i8* %21, align 1
  store i8 %290, i8* %20, align 1
  br label %291

291:                                              ; preds = %289, %279
  %292 = load i8, i8* %20, align 1
  %293 = sext i8 %292 to i32
  %294 = load i8, i8* %22, align 1
  %295 = sext i8 %294 to i32
  %296 = icmp slt i32 %293, %295
  br i1 %296, label %297, label %299

297:                                              ; preds = %291
  %298 = load i8, i8* %22, align 1
  store i8 %298, i8* %20, align 1
  br label %299

299:                                              ; preds = %297, %291
  br label %300

300:                                              ; preds = %299
  %301 = load i32, i32* %17, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %17, align 4
  br label %275

303:                                              ; preds = %275
  %304 = load i8, i8* %20, align 1
  %305 = sext i8 %304 to i32
  store i32 %305, i32* %19, align 4
  br label %306

306:                                              ; preds = %303, %263
  %307 = load i32, i32* %19, align 4
  %308 = load i32, i32* %10, align 4
  %309 = icmp sgt i32 %307, %308
  br i1 %309, label %310, label %312

310:                                              ; preds = %306
  %311 = load i32, i32* %19, align 4
  store i32 %311, i32* %10, align 4
  br label %312

312:                                              ; preds = %310, %306
  br label %52

313:                                              ; preds = %52
  %314 = load i32, i32* %10, align 4
  %315 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i32 0, i32 0
  store i32 %314, i32* %318, align 8
  %319 = load i8*, i8** @TRUE, align 8
  store i8* %319, i8** %5, align 8
  br label %320

320:                                              ; preds = %313, %222, %148, %135, %36
  %321 = load i8*, i8** %5, align 8
  ret i8* %321
}

declare dso_local i32 @RE_IS_LETTER(i8 signext) #1

declare dso_local i32 @isASCIIHexDigit(i8 signext, i32*) #1

declare dso_local i32 @JS_ReportErrorNumber(i32, i32, i32*, i32) #1

declare dso_local i32 @JS7_UNDEC(i8 signext) #1

declare dso_local signext i8 @towupper(i32) #1

declare dso_local signext i8 @towlower(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

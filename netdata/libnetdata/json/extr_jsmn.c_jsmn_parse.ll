; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/json/extr_jsmn.c_jsmn_parse.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/json/extr_jsmn.c_jsmn_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32 }
%struct.TYPE_12__ = type { i64, i64, i32, i32, i8* }

@JSMN_ERROR_NOMEM = common dso_local global i32 0, align 4
@JSMN_OBJECT = common dso_local global i8* null, align 8
@JSMN_ARRAY = common dso_local global i8* null, align 8
@JSMN_ERROR_INVAL = common dso_local global i32 0, align 4
@JSMN_ERROR_PART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jsmn_parse(%struct.TYPE_13__* %0, i8* %1, i64 %2, %struct.TYPE_12__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %18

18:                                               ; preds = %252, %5
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load i8*, i8** %8, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %24, %18
  %34 = phi i1 [ false, %18 ], [ %32, %24 ]
  br i1 %34, label %35, label %257

35:                                               ; preds = %33
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* %16, align 1
  %42 = load i8, i8* %16, align 1
  %43 = sext i8 %42 to i32
  switch i32 %43, label %219 [
    i32 123, label %44
    i32 91, label %44
    i32 125, label %97
    i32 93, label %97
    i32 34, label %186
    i32 9, label %218
    i32 13, label %218
    i32 10, label %218
    i32 58, label %218
    i32 44, label %218
    i32 32, label %218
  ]

44:                                               ; preds = %35, %35
  %45 = load i32, i32* %15, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %15, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %48 = icmp eq %struct.TYPE_12__* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %251

50:                                               ; preds = %44
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call %struct.TYPE_12__* @jsmn_alloc_token(%struct.TYPE_13__* %51, %struct.TYPE_12__* %52, i32 %53)
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %14, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %56 = icmp eq %struct.TYPE_12__* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @JSMN_ERROR_NOMEM, align 4
  store i32 %58, i32* %6, align 4
  br label %293

59:                                               ; preds = %50
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, -1
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %64, %59
  %75 = load i8, i8* %16, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 123
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i8*, i8** @JSMN_OBJECT, align 8
  br label %82

80:                                               ; preds = %74
  %81 = load i8*, i8** @JSMN_ARRAY, align 8
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i8* [ %79, %78 ], [ %81, %80 ]
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 4
  store i8* %83, i8** %85, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %93, 1
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  br label %251

97:                                               ; preds = %35, %35
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %99 = icmp eq %struct.TYPE_12__* %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %251

101:                                              ; preds = %97
  %102 = load i8, i8* %16, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 125
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i8*, i8** @JSMN_OBJECT, align 8
  br label %109

107:                                              ; preds = %101
  %108 = load i8*, i8** @JSMN_ARRAY, align 8
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i8* [ %106, %105 ], [ %108, %107 ]
  store i8* %110, i8** %17, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %113, 1
  store i32 %114, i32* %13, align 4
  br label %115

115:                                              ; preds = %151, %109
  %116 = load i32, i32* %13, align 4
  %117 = icmp sge i32 %116, 0
  br i1 %117, label %118, label %154

118:                                              ; preds = %115
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i64 %121
  store %struct.TYPE_12__* %122, %struct.TYPE_12__** %14, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, -1
  br i1 %126, label %127, label %150

127:                                              ; preds = %118
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %130, -1
  br i1 %131, label %132, label %150

132:                                              ; preds = %127
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 4
  %135 = load i8*, i8** %134, align 8
  %136 = load i8*, i8** %17, align 8
  %137 = icmp ne i8* %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load i32, i32* @JSMN_ERROR_INVAL, align 4
  store i32 %139, i32* %6, align 4
  br label %293

140:                                              ; preds = %132
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 1
  store i32 -1, i32* %142, align 8
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = add i64 %145, 1
  %147 = trunc i64 %146 to i32
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  br label %154

150:                                              ; preds = %127, %118
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %13, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %13, align 4
  br label %115

154:                                              ; preds = %140, %115
  %155 = load i32, i32* %13, align 4
  %156 = icmp eq i32 %155, -1
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = load i32, i32* @JSMN_ERROR_INVAL, align 4
  store i32 %158, i32* %6, align 4
  br label %293

159:                                              ; preds = %154
  br label %160

160:                                              ; preds = %182, %159
  %161 = load i32, i32* %13, align 4
  %162 = icmp sge i32 %161, 0
  br i1 %162, label %163, label %185

163:                                              ; preds = %160
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i64 %166
  store %struct.TYPE_12__* %167, %struct.TYPE_12__** %14, align 8
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, -1
  br i1 %171, label %172, label %181

172:                                              ; preds = %163
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = icmp eq i32 %175, -1
  br i1 %176, label %177, label %181

177:                                              ; preds = %172
  %178 = load i32, i32* %13, align 4
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 8
  br label %185

181:                                              ; preds = %172, %163
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %13, align 4
  %184 = add nsw i32 %183, -1
  store i32 %184, i32* %13, align 4
  br label %160

185:                                              ; preds = %177, %160
  br label %251

186:                                              ; preds = %35
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %188 = load i8*, i8** %8, align 8
  %189 = load i64, i64* %9, align 8
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %191 = load i32, i32* %11, align 4
  %192 = call i32 @jsmn_parse_string(%struct.TYPE_13__* %187, i8* %188, i64 %189, %struct.TYPE_12__* %190, i32 %191)
  store i32 %192, i32* %12, align 4
  %193 = load i32, i32* %12, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %186
  %196 = load i32, i32* %12, align 4
  store i32 %196, i32* %6, align 4
  br label %293

197:                                              ; preds = %186
  %198 = load i32, i32* %15, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %15, align 4
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, -1
  br i1 %203, label %204, label %217

204:                                              ; preds = %197
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %206 = icmp ne %struct.TYPE_12__* %205, null
  br i1 %206, label %207, label %217

207:                                              ; preds = %204
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %214, align 4
  br label %217

217:                                              ; preds = %207, %204, %197
  br label %251

218:                                              ; preds = %35, %35, %35, %35, %35, %35
  br label %251

219:                                              ; preds = %35
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %221 = load i8*, i8** %8, align 8
  %222 = load i64, i64* %9, align 8
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %224 = load i32, i32* %11, align 4
  %225 = call i32 @jsmn_parse_primitive(%struct.TYPE_13__* %220, i8* %221, i64 %222, %struct.TYPE_12__* %223, i32 %224)
  store i32 %225, i32* %12, align 4
  %226 = load i32, i32* %12, align 4
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %219
  %229 = load i32, i32* %12, align 4
  store i32 %229, i32* %6, align 4
  br label %293

230:                                              ; preds = %219
  %231 = load i32, i32* %15, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %15, align 4
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = icmp ne i32 %235, -1
  br i1 %236, label %237, label %250

237:                                              ; preds = %230
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %239 = icmp ne %struct.TYPE_12__* %238, null
  br i1 %239, label %240, label %250

240:                                              ; preds = %237
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %247, align 4
  br label %250

250:                                              ; preds = %240, %237, %230
  br label %251

251:                                              ; preds = %250, %218, %217, %185, %100, %82, %49
  br label %252

252:                                              ; preds = %251
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = add i64 %255, 1
  store i64 %256, i64* %254, align 8
  br label %18

257:                                              ; preds = %33
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %259 = icmp ne %struct.TYPE_12__* %258, null
  br i1 %259, label %260, label %291

260:                                              ; preds = %257
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = sub nsw i32 %263, 1
  store i32 %264, i32* %13, align 4
  br label %265

265:                                              ; preds = %287, %260
  %266 = load i32, i32* %13, align 4
  %267 = icmp sge i32 %266, 0
  br i1 %267, label %268, label %290

268:                                              ; preds = %265
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %270 = load i32, i32* %13, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, -1
  br i1 %275, label %276, label %286

276:                                              ; preds = %268
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %278 = load i32, i32* %13, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = icmp eq i32 %282, -1
  br i1 %283, label %284, label %286

284:                                              ; preds = %276
  %285 = load i32, i32* @JSMN_ERROR_PART, align 4
  store i32 %285, i32* %6, align 4
  br label %293

286:                                              ; preds = %276, %268
  br label %287

287:                                              ; preds = %286
  %288 = load i32, i32* %13, align 4
  %289 = add nsw i32 %288, -1
  store i32 %289, i32* %13, align 4
  br label %265

290:                                              ; preds = %265
  br label %291

291:                                              ; preds = %290, %257
  %292 = load i32, i32* %15, align 4
  store i32 %292, i32* %6, align 4
  br label %293

293:                                              ; preds = %291, %284, %228, %195, %157, %138, %57
  %294 = load i32, i32* %6, align 4
  ret i32 %294
}

declare dso_local %struct.TYPE_12__* @jsmn_alloc_token(%struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @jsmn_parse_string(%struct.TYPE_13__*, i8*, i64, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @jsmn_parse_primitive(%struct.TYPE_13__*, i8*, i64, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
